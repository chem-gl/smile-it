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
**atoms** | [**BuiltList&lt;AtomPosition&gt;**](AtomPosition.md) |  | [optional] 
**hasImplicitHydrogens** | **bool** | Indica si la molécula tiene hidrógenos implícitos. | [optional] 
**substitutionSites** | **BuiltList&lt;int&gt;** | Índices de los átomos seleccionados como sitios de sustitución. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


