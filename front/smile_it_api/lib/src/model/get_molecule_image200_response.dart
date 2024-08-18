//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_molecule_image200_response.g.dart';

/// GetMoleculeImage200Response
///
/// Properties:
/// * [svgImage] - Imagen SVG de la molécula.
@BuiltValue()
abstract class GetMoleculeImage200Response implements Built<GetMoleculeImage200Response, GetMoleculeImage200ResponseBuilder> {
  /// Imagen SVG de la molécula.
  @BuiltValueField(wireName: r'svg_image')
  String? get svgImage;

  GetMoleculeImage200Response._();

  factory GetMoleculeImage200Response([void updates(GetMoleculeImage200ResponseBuilder b)]) = _$GetMoleculeImage200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMoleculeImage200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMoleculeImage200Response> get serializer => _$GetMoleculeImage200ResponseSerializer();
}

class _$GetMoleculeImage200ResponseSerializer implements PrimitiveSerializer<GetMoleculeImage200Response> {
  @override
  final Iterable<Type> types = const [GetMoleculeImage200Response, _$GetMoleculeImage200Response];

  @override
  final String wireName = r'GetMoleculeImage200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMoleculeImage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.svgImage != null) {
      yield r'svg_image';
      yield serializers.serialize(
        object.svgImage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMoleculeImage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMoleculeImage200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'svg_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.svgImage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMoleculeImage200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMoleculeImage200ResponseBuilder();
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

