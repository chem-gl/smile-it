//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:smile_it_api/src/model/molecule_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_molecule_details200_response.g.dart';

/// GetMoleculeDetails200Response
///
/// Properties:
/// * [molecule] 
/// * [svgImage] - Imagen de la molécula en formato SVG.
@BuiltValue()
abstract class GetMoleculeDetails200Response implements Built<GetMoleculeDetails200Response, GetMoleculeDetails200ResponseBuilder> {
  @BuiltValueField(wireName: r'molecule')
  MoleculeDetails? get molecule;

  /// Imagen de la molécula en formato SVG.
  @BuiltValueField(wireName: r'svg_image')
  String? get svgImage;

  GetMoleculeDetails200Response._();

  factory GetMoleculeDetails200Response([void updates(GetMoleculeDetails200ResponseBuilder b)]) = _$GetMoleculeDetails200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMoleculeDetails200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMoleculeDetails200Response> get serializer => _$GetMoleculeDetails200ResponseSerializer();
}

class _$GetMoleculeDetails200ResponseSerializer implements PrimitiveSerializer<GetMoleculeDetails200Response> {
  @override
  final Iterable<Type> types = const [GetMoleculeDetails200Response, _$GetMoleculeDetails200Response];

  @override
  final String wireName = r'GetMoleculeDetails200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMoleculeDetails200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.molecule != null) {
      yield r'molecule';
      yield serializers.serialize(
        object.molecule,
        specifiedType: const FullType(MoleculeDetails),
      );
    }
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
    GetMoleculeDetails200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMoleculeDetails200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'molecule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MoleculeDetails),
          ) as MoleculeDetails;
          result.molecule.replace(valueDes);
          break;
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
  GetMoleculeDetails200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMoleculeDetails200ResponseBuilder();
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

