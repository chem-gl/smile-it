//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:smile_it_api/src/model/substitution_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:smile_it_api/src/model/molecule_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'synthesized_molecule.g.dart';

/// SynthesizedMolecule
///
/// Properties:
/// * [mainMolecule] 
/// * [substitutionDetails] 
/// * [resultingMolecule] 
@BuiltValue()
abstract class SynthesizedMolecule implements Built<SynthesizedMolecule, SynthesizedMoleculeBuilder> {
  @BuiltValueField(wireName: r'mainMolecule')
  MoleculeDetails? get mainMolecule;

  @BuiltValueField(wireName: r'substitutionDetails')
  BuiltList<SubstitutionDetail>? get substitutionDetails;

  @BuiltValueField(wireName: r'resultingMolecule')
  MoleculeDetails? get resultingMolecule;

  SynthesizedMolecule._();

  factory SynthesizedMolecule([void updates(SynthesizedMoleculeBuilder b)]) = _$SynthesizedMolecule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SynthesizedMoleculeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SynthesizedMolecule> get serializer => _$SynthesizedMoleculeSerializer();
}

class _$SynthesizedMoleculeSerializer implements PrimitiveSerializer<SynthesizedMolecule> {
  @override
  final Iterable<Type> types = const [SynthesizedMolecule, _$SynthesizedMolecule];

  @override
  final String wireName = r'SynthesizedMolecule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SynthesizedMolecule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mainMolecule != null) {
      yield r'mainMolecule';
      yield serializers.serialize(
        object.mainMolecule,
        specifiedType: const FullType(MoleculeDetails),
      );
    }
    if (object.substitutionDetails != null) {
      yield r'substitutionDetails';
      yield serializers.serialize(
        object.substitutionDetails,
        specifiedType: const FullType(BuiltList, [FullType(SubstitutionDetail)]),
      );
    }
    if (object.resultingMolecule != null) {
      yield r'resultingMolecule';
      yield serializers.serialize(
        object.resultingMolecule,
        specifiedType: const FullType(MoleculeDetails),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SynthesizedMolecule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SynthesizedMoleculeBuilder result,
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
        case r'substitutionDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubstitutionDetail)]),
          ) as BuiltList<SubstitutionDetail>;
          result.substitutionDetails.replace(valueDes);
          break;
        case r'resultingMolecule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MoleculeDetails),
          ) as MoleculeDetails;
          result.resultingMolecule.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SynthesizedMolecule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SynthesizedMoleculeBuilder();
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

