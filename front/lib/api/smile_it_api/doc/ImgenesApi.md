# smile_it_api.api.ImgenesApi

## Load the API package
```dart
import 'package:smile_it_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMoleculeDetails**](ImgenesApi.md#getmoleculedetails) | **GET** /getMoleculeDetails | Obtener detalles e imagen de una molécula
[**getMoleculeImage**](ImgenesApi.md#getmoleculeimage) | **POST** /getMoleculeImage | Obtener imagen SVG de una molécula


# **getMoleculeDetails**
> GetMoleculeDetails200Response getMoleculeDetails(smile)

Obtener detalles e imagen de una molécula

Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api_instance = ImgenesApi();
final smile = smile_example; // String | SMILES que describe la molécula de la cual se desea obtener la imagen y detalles.

try {
    final result = api_instance.getMoleculeDetails(smile);
    print(result);
} catch (e) {
    print('Exception when calling ImgenesApi->getMoleculeDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smile** | **String**| SMILES que describe la molécula de la cual se desea obtener la imagen y detalles. | 

### Return type

[**GetMoleculeDetails200Response**](GetMoleculeDetails200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMoleculeImage**
> GetMoleculeImage200Response getMoleculeImage(moleculeDetails)

Obtener imagen SVG de una molécula

Genera y devuelve una imagen SVG coherente con la estructura de una molécula proporcionada.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api_instance = ImgenesApi();
final moleculeDetails = MoleculeDetails(); // MoleculeDetails | 

try {
    final result = api_instance.getMoleculeImage(moleculeDetails);
    print(result);
} catch (e) {
    print('Exception when calling ImgenesApi->getMoleculeImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moleculeDetails** | [**MoleculeDetails**](MoleculeDetails.md)|  | 

### Return type

[**GetMoleculeImage200Response**](GetMoleculeImage200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

