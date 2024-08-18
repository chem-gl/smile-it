import 'package:test/test.dart';
import 'package:smile_it_api/smile_it_api.dart';


/// tests for ImagenesApi
void main() {
  final instance = SmileItApi().getImagenesApi();

  group(ImagenesApi, () {
    // Obtener detalles e imagen de una molécula
    //
    // Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.
    //
    //Future<GetMoleculeDetails200Response> getMoleculeDetails(String smile) async
    test('test getMoleculeDetails', () async {
      // TODO
    });

    // Obtener imagen SVG de una molécula
    //
    // Genera y devuelve una imagen SVG coherente con la estructura de una molécula proporcionada.
    //
    //Future<GetMoleculeImage200Response> getMoleculeImage(MoleculeDetails moleculeDetails) async
    test('test getMoleculeImage', () async {
      // TODO
    });

  });
}
