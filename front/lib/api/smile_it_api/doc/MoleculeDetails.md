# smile_it_api.model.MoleculeDetails

## Load the model package
```dart
import 'package:smile_it_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Nombre generado o común de la molécula. | [optional] 
**smile** | **String** | SMILES de la molécula. | [optional] 
**atoms** | [**List<AtomPosition>**](AtomPosition.md) |  | [optional] [default to const []]
**hasImplicitHydrogens** | **bool** | Indica si la molécula tiene hidrógenos implícitos. | [optional] 
**substitutionSites** | **List<int>** | Índices de los átomos seleccionados como sitios de sustitución. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


