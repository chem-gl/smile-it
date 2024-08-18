//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'atom_position.g.dart';

/// AtomPosition
///
/// Properties:
/// * [atomIndex] - Índice del átomo en la molécula.
/// * [x] - Coordenada X del átomo.
/// * [y] - Coordenada Y del átomo.
@BuiltValue()
abstract class AtomPosition implements Built<AtomPosition, AtomPositionBuilder> {
  /// Índice del átomo en la molécula.
  @BuiltValueField(wireName: r'atom_index')
  int? get atomIndex;

  /// Coordenada X del átomo.
  @BuiltValueField(wireName: r'x')
  num? get x;

  /// Coordenada Y del átomo.
  @BuiltValueField(wireName: r'y')
  num? get y;

  AtomPosition._();

  factory AtomPosition([void updates(AtomPositionBuilder b)]) = _$AtomPosition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AtomPositionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AtomPosition> get serializer => _$AtomPositionSerializer();
}

class _$AtomPositionSerializer implements PrimitiveSerializer<AtomPosition> {
  @override
  final Iterable<Type> types = const [AtomPosition, _$AtomPosition];

  @override
  final String wireName = r'AtomPosition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AtomPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.atomIndex != null) {
      yield r'atom_index';
      yield serializers.serialize(
        object.atomIndex,
        specifiedType: const FullType(int),
      );
    }
    if (object.x != null) {
      yield r'x';
      yield serializers.serialize(
        object.x,
        specifiedType: const FullType(num),
      );
    }
    if (object.y != null) {
      yield r'y';
      yield serializers.serialize(
        object.y,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AtomPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AtomPositionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'atom_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.atomIndex = valueDes;
          break;
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.y = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AtomPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AtomPositionBuilder();
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

