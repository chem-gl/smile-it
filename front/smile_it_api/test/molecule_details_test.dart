import 'package:test/test.dart';
import 'package:smile_it_api/smile_it_api.dart';

// tests for MoleculeDetails
void main() {
  final instance = MoleculeDetailsBuilder();
  // TODO add properties to the builder and call build()

  group(MoleculeDetails, () {
    // Nombre generado o común de la molécula.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // SMILES de la molécula.
    // String smile
    test('to test the property `smile`', () async {
      // TODO
    });

    // BuiltList<AtomPosition> atoms
    test('to test the property `atoms`', () async {
      // TODO
    });

    // Indica si la molécula tiene hidrógenos implícitos.
    // bool hasImplicitHydrogens
    test('to test the property `hasImplicitHydrogens`', () async {
      // TODO
    });

    // Índices de los átomos seleccionados como sitios de sustitución.
    // BuiltList<int> substitutionSites
    test('to test the property `substitutionSites`', () async {
      // TODO
    });

  });
}
