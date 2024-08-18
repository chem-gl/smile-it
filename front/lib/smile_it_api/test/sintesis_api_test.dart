import 'package:test/test.dart';
import 'package:smile_it_api/smile_it_api.dart';


/// tests for SintesisApi
void main() {
  final instance = SmileItApi().getSintesisApi();

  group(SintesisApi, () {
    // Sintetizar moléculas con sustituyentes
    //
    // Recibe una molécula principal y una lista de sustituyentes, devolviendo un arreglo con todas las moléculas y sus sustituyentes generados.
    //
    //Future<BuiltList<SynthesizedMolecule>> synthesizeMoleculesWithSubstitutes(SynthesisRequest synthesisRequest) async
    test('test synthesizeMoleculesWithSubstitutes', () async {
      // TODO
    });

  });
}
