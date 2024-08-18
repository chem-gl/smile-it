//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:smile_it_api/src/model/atom_position.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'molecule_details.g.dart';

/// MoleculeDetails
///
/// Properties:
/// * [name] - Nombre generado o común de la molécula.
/// * [smile] - SMILES de la molécula.
/// * [atoms] 
/// * [hasImplicitHydrogens] - Indica si la molécula tiene hidrógenos implícitos.
/// * [substitutionSites] - Índices de los átomos seleccionados como sitios de sustitución.
@BuiltValue()
abstract class MoleculeDetails implements Built<MoleculeDetails, MoleculeDetailsBuilder> {
  /// Nombre generado o común de la molécula.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// SMILES de la molécula.
  @BuiltValueField(wireName: r'smile')
  String? get smile;

  @BuiltValueField(wireName: r'atoms')
  BuiltList<AtomPosition>? get atoms;

  /// Indica si la molécula tiene hidrógenos implícitos.
  @BuiltValueField(wireName: r'hasImplicitHydrogens')
  bool? get hasImplicitHydrogens;

  /// Índices de los átomos seleccionados como sitios de sustitución.
  @BuiltValueField(wireName: r'substitutionSites')
  BuiltList<int>? get substitutionSites;

  MoleculeDetails._();

  factory MoleculeDetails([void updates(MoleculeDetailsBuilder b)]) = _$MoleculeDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MoleculeDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MoleculeDetails> get serializer => _$MoleculeDetailsSerializer();
}

class _$MoleculeDetailsSerializer implements PrimitiveSerializer<MoleculeDetails> {
  @override
  final Iterable<Type> types = const [MoleculeDetails, _$MoleculeDetails];

  @override
  final String wireName = r'MoleculeDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MoleculeDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.smile != null) {
      yield r'smile';
      yield serializers.serialize(
        object.smile,
        specifiedType: const FullType(String),
      );
    }
    if (object.atoms != null) {
      yield r'atoms';
      yield serializers.serialize(
        object.atoms,
        specifiedType: const FullType(BuiltList, [FullType(AtomPosition)]),
      );
    }
    if (object.hasImplicitHydrogens != null) {
      yield r'hasImplicitHydrogens';
      yield serializers.serialize(
        object.hasImplicitHydrogens,
        specifiedType: const FullType(bool),
      );
    }
    if (object.substitutionSites != null) {
      yield r'substitutionSites';
      yield serializers.serialize(
        object.substitutionSites,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MoleculeDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MoleculeDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'smile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.smile = valueDes;
          break;
        case r'atoms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AtomPosition)]),
          ) as BuiltList<AtomPosition>;
          result.atoms.replace(valueDes);
          break;
        case r'hasImplicitHydrogens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasImplicitHydrogens = valueDes;
          break;
        case r'substitutionSites':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.substitutionSites.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MoleculeDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoleculeDetailsBuilder();
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

