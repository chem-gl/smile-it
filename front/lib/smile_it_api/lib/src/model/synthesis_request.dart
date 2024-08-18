//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:smile_it_api/src/model/molecule_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'synthesis_request.g.dart';

/// SynthesisRequest
///
/// Properties:
/// * [mainMolecule] 
/// * [substituents] 
@BuiltValue()
abstract class SynthesisRequest implements Built<SynthesisRequest, SynthesisRequestBuilder> {
  @BuiltValueField(wireName: r'mainMolecule')
  MoleculeDetails? get mainMolecule;

  @BuiltValueField(wireName: r'substituents')
  BuiltList<MoleculeDetails>? get substituents;

  SynthesisRequest._();

  factory SynthesisRequest([void updates(SynthesisRequestBuilder b)]) = _$SynthesisRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SynthesisRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SynthesisRequest> get serializer => _$SynthesisRequestSerializer();
}

class _$SynthesisRequestSerializer implements PrimitiveSerializer<SynthesisRequest> {
  @override
  final Iterable<Type> types = const [SynthesisRequest, _$SynthesisRequest];

  @override
  final String wireName = r'SynthesisRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SynthesisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mainMolecule != null) {
      yield r'mainMolecule';
      yield serializers.serialize(
        object.mainMolecule,
        specifiedType: const FullType(MoleculeDetails),
      );
    }
    if (object.substituents != null) {
      yield r'substituents';
      yield serializers.serialize(
        object.substituents,
        specifiedType: const FullType(BuiltList, [FullType(MoleculeDetails)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SynthesisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SynthesisRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mainMolecule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MoleculeDetails),
          ) as MoleculeDetails;
          result.mainMolecule.replace(valueDes);
          break;
        case r'substituents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MoleculeDetails)]),
          ) as BuiltList<MoleculeDetails>;
          result.substituents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SynthesisRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SynthesisRequestBuilder();
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

