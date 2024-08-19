import 'package:test/test.dart';
import 'package:smile_it_api/smile_it_api.dart';


/// tests for MoleculeApi
void main() {
  final instance = SmileItApi().getMoleculeApi();

  group(MoleculeApi, () {
    // Obtener detalles e imagen de una molécula
    //
    // Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.
    //
    //Future<GetMoleculeDetails200Response> getMoleculeDetails(String smile) async
    test('test getMoleculeDetails', () async {
      // TODO
    });

  });
}
