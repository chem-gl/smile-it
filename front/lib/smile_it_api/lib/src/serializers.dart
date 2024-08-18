//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:smile_it_api/src/date_serializer.dart';
import 'package:smile_it_api/src/model/date.dart';

import 'package:smile_it_api/src/model/atom_position.dart';
import 'package:smile_it_api/src/model/error_object.dart';
import 'package:smile_it_api/src/model/get_molecule_details200_response.dart';
import 'package:smile_it_api/src/model/get_molecule_image200_response.dart';
import 'package:smile_it_api/src/model/molecule_details.dart';
import 'package:smile_it_api/src/model/substitution_detail.dart';
import 'package:smile_it_api/src/model/synthesis_request.dart';
import 'package:smile_it_api/src/model/synthesized_molecule.dart';

part 'serializers.g.dart';

@SerializersFor([
  AtomPosition,
  ErrorObject,
  GetMoleculeDetails200Response,
  GetMoleculeImage200Response,
  MoleculeDetails,
  SubstitutionDetail,
  SynthesisRequest,
  SynthesizedMolecule,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SynthesizedMolecule)]),
        () => ListBuilder<SynthesizedMolecule>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
