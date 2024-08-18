# smile_it_api.api.SntesisApi

## Load the API package
```dart
import 'package:smile_it_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**synthesizeMoleculesWithSubstitutes**](SntesisApi.md#synthesizemoleculeswithsubstitutes) | **POST** /synthesizeMoleculesWithSubstitutes | Sintetizar moléculas con sustituyentes


# **synthesizeMoleculesWithSubstitutes**
> List<SynthesizedMolecule> synthesizeMoleculesWithSubstitutes(synthesisRequest)

Sintetizar moléculas con sustituyentes

Recibe una molécula principal y una lista de sustituyentes, devolviendo un arreglo con todas las moléculas y sus sustituyentes generados.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api_instance = SntesisApi();
final synthesisRequest = SynthesisRequest(); // SynthesisRequest | 

try {
    final result = api_instance.synthesizeMoleculesWithSubstitutes(synthesisRequest);
    print(result);
} catch (e) {
    print('Exception when calling SntesisApi->synthesizeMoleculesWithSubstitutes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synthesisRequest** | [**SynthesisRequest**](SynthesisRequest.md)|  | 

### Return type

[**List<SynthesizedMolecule>**](SynthesizedMolecule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

