// This file has been generated by the dart_json_mapper package.
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'data.dart' as x0 show Data;
import 'package:dart_json_mapper/dart_json_mapper.dart'
    show JsonMapper, JsonMapperAdapter, typeOf;
// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:example/data.dart' as prefix1;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.JsonSerializable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Data',
            r'.Data',
            7,
            0,
            const prefix0.JsonSerializable(),
            const <int>[0, 1, 2, 9],
            const <int>[10, 11, 12, 13, 14, 3, 4, 5, 6, 7, 8],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({userId, id, title}) =>
                  b ? prefix1.Data(id: id, title: title, userId: userId) : null
            },
            -1,
            0,
            const <int>[],
            const [prefix0.jsonSerializable],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(
            r'userId',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(r'id', 32773, 0, const prefix0.JsonSerializable(),
            -1, 1, 1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'title',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            2,
            2, const <int>[], const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 3),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 0, 4),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 5),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 1, 6),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 7),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 2, 8),
        r.MethodMirrorImpl(r'', 0, 0, -1, 0, 0, const <int>[],
            const <int>[0, 1, 2], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, 3, 3, const <int>[],
            const <int>[6], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'toString', 131074, -1, -1, 2, 2, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            65538,
            -1,
            -1,
            -1,
            -1,
            const <int>[],
            const <int>[7],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, 1, 1, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 4, 4, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'userId',
            41990,
            9,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            #userId),
        r.ParameterMirrorImpl(r'id', 41990, 9, const prefix0.JsonSerializable(),
            -1, 1, 1, const <int>[], const [], null, #id),
        r.ParameterMirrorImpl(
            r'title',
            41990,
            9,
            const prefix0.JsonSerializable(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #title),
        r.ParameterMirrorImpl(
            r'_userId',
            32870,
            4,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_id',
            32870,
            6,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_title',
            32870,
            8,
            const prefix0.JsonSerializable(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            32774,
            10,
            const prefix0.JsonSerializable(),
            -1,
            5,
            5,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            12,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null)
      ],
      <Type>[prefix1.Data, int, String, bool, Type, Object, Invocation],
      1,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'userId': (dynamic instance) => instance.userId,
        r'id': (dynamic instance) => instance.id,
        r'title': (dynamic instance) => instance.title
      },
      {
        r'userId=': (dynamic instance, value) => instance.userId = value,
        r'id=': (dynamic instance, value) => instance.id = value,
        r'title=': (dynamic instance, value) => instance.title = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void _initializeReflectable(JsonMapperAdapter adapter) {
  if (!adapter.isGenerated) {
    return;
  }
  r.data = adapter.reflectableData!;
  r.memberSymbolMap = adapter.memberSymbolMap;
}

final mainGeneratedAdapter = JsonMapperAdapter(
    title: 'Main Generated Adapter',
    url: 'package:example/main.dart',
    reflectableData: _data,
    memberSymbolMap: _memberSymbolMap,
    valueDecorators: {
      typeOf<List<x0.Data>>(): (value) => value.cast<x0.Data>(),
      typeOf<Set<x0.Data>>(): (value) => value.cast<x0.Data>()
    },
    enumValues: {});

Future<JsonMapper> initializeJsonMapperAsync(
        {Iterable<JsonMapperAdapter> adapters = const []}) =>
    Future(() => initializeJsonMapper(adapters: adapters));

JsonMapper initializeJsonMapper(
    {Iterable<JsonMapperAdapter> adapters = const []}) {
  JsonMapper.enumerateAdapters([...adapters, mainGeneratedAdapter],
      (JsonMapperAdapter adapter) {
    _initializeReflectable(adapter);
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}
