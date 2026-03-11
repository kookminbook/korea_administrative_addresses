import 'dart:convert';
import 'dart:io';

String _escapeString(String s) => s.replaceAll("'", "\\'");

String _formatValue(dynamic v) {
  if (v == null) return 'null';
  if (v is String) return "'${_escapeString(v)}'";
  if (v is num || v is bool) return v.toString();
  if (v is List) {
    final allInts = v.every((e) => e is int);
    final itemType = allInts ? 'int' : 'dynamic';
    final items = v.map(_formatValue).join(', ');
    return '<$itemType>[$items]';
  }
  if (v is Map) {
    final entries = v.entries
        .map((e) => "${_formatValue(e.key)}: ${_formatValue(e.value)}")
        .join(',\n      ');
    return '<String, dynamic>{\n      $entries\n    }';
  }
  return v.toString();
}

String _generateDart(Map<String, dynamic> json) {
  final entries = json.entries
      .map((e) {
        final value = e.value as Map<String, dynamic>;
        final inner = value.entries
            .map(
              (ie) => "'${_escapeString(ie.key)}': ${_formatValue(ie.value)}",
            )
            .join(',\n    ');
        return "'${_escapeString(e.key)}': <String, dynamic>{\n    $inner\n  }";
      })
      .join(',\n  ');

  return '''// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated from assets/generations.json by tool/gen_generations.dart

const Map<String, dynamic> currentGen = <String, dynamic>{
  $entries
};
''';
}

void main(List<String> args) {
  final src = File('assets/generations.json');
  if (!src.existsSync()) {
    stderr.writeln('assets/generations.json not found in project root.');
    exit(2);
  }

  final content = src.readAsStringSync();
  final jsonData = json.decode(content) as Map<String, dynamic>;
  final dartSource = _generateDart(jsonData);

  final out = File('lib/data/generations.g.dart');
  out.writeAsStringSync(dartSource);
  stdout.writeln('Wrote ${out.path}');
}
