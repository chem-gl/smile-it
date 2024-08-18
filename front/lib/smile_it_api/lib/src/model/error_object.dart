//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_object.g.dart';

/// ErrorObject
///
/// Properties:
/// * [description] - Descripción del error.
/// * [code] - Código numérico del error.
/// * [details] - Detalles adicionales sobre el error.
@BuiltValue()
abstract class ErrorObject implements Built<ErrorObject, ErrorObjectBuilder> {
  /// Descripción del error.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Código numérico del error.
  @BuiltValueField(wireName: r'code')
  int? get code;

  /// Detalles adicionales sobre el error.
  @BuiltValueField(wireName: r'details')
  String? get details;

  ErrorObject._();

  factory ErrorObject([void updates(ErrorObjectBuilder b)]) = _$ErrorObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorObject> get serializer => _$ErrorObjectSerializer();
}

class _$ErrorObjectSerializer implements PrimitiveSerializer<ErrorObject> {
  @override
  final Iterable<Type> types = const [ErrorObject, _$ErrorObject];

  @override
  final String wireName = r'ErrorObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.details = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorObjectBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

