# smile_it_api.api.ImagenesApi

## Load the API package
```dart
import 'package:smile_it_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMoleculeImage**](ImagenesApi.md#getmoleculeimage) | **POST** /getMoleculeImage | Obtener imagen SVG de una molécula


# **getMoleculeImage**
> GetMoleculeImage200Response getMoleculeImage(moleculeDetails)

Obtener imagen SVG de una molécula

Genera y devuelve una imagen SVG coherente con la estructura de una molécula proporcionada.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api = SmileItApi().getImagenesApi();
final MoleculeDetails moleculeDetails = ; // MoleculeDetails | 

try {
    final response = api.getMoleculeImage(moleculeDetails);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImagenesApi->getMoleculeImage: $e\n');
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

