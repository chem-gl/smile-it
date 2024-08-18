//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:smile_it_api/src/model/atom_position.dart';
import 'package:smile_it_api/src/model/molecule_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'substitution_detail.g.dart';

/// SubstitutionDetail
///
/// Properties:
/// * [mainAtom] 
/// * [substituentMolecule] 
/// * [substituentAtom] 
@BuiltValue()
abstract class SubstitutionDetail implements Built<SubstitutionDetail, SubstitutionDetailBuilder> {
  @BuiltValueField(wireName: r'mainAtom')
  AtomPosition? get mainAtom;

  @BuiltValueField(wireName: r'substituentMolecule')
  MoleculeDetails? get substituentMolecule;

  @BuiltValueField(wireName: r'substituentAtom')
  AtomPosition? get substituentAtom;

  SubstitutionDetail._();

  factory SubstitutionDetail([void updates(SubstitutionDetailBuilder b)]) = _$SubstitutionDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubstitutionDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubstitutionDetail> get serializer => _$SubstitutionDetailSerializer();
}

class _$SubstitutionDetailSerializer implements PrimitiveSerializer<SubstitutionDetail> {
  @override
  final Iterable<Type> types = const [SubstitutionDetail, _$SubstitutionDetail];

  @override
  final String wireName = r'SubstitutionDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubstitutionDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mainAtom != null) {
      yield r'mainAtom';
      yield serializers.serialize(
        object.mainAtom,
        specifiedType: const FullType(AtomPosition),
      );
    }
    if (object.substituentMolecule != null) {
      yield r'substituentMolecule';
      yield serializers.serialize(
        object.substituentMolecule,
        specifiedType: const FullType(MoleculeDetails),
      );
    }
    if (object.substituentAtom != null) {
      yield r'substituentAtom';
      yield serializers.serialize(
        object.substituentAtom,
        specifiedType: const FullType(AtomPosition),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubstitutionDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubstitutionDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mainAtom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AtomPosition),
          ) as AtomPosition;
          result.mainAtom.replace(valueDes);
          break;
        case r'substituentMolecule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MoleculeDetails),
          ) as MoleculeDetails;
          result.substituentMolecule.replace(valueDes);
          break;
        case r'substituentAtom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AtomPosition),
          ) as AtomPosition;
          result.substituentAtom.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubstitutionDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubstitutionDetailBuilder();
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

