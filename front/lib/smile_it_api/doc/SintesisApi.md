# smile_it_api.api.SintesisApi

## Load the API package
```dart
import 'package:smile_it_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**synthesizeMoleculesWithSubstitutes**](SintesisApi.md#synthesizemoleculeswithsubstitutes) | **POST** /synthesizeMoleculesWithSubstitutes | Sintetizar moléculas con sustituyentes


# **synthesizeMoleculesWithSubstitutes**
> BuiltList<SynthesizedMolecule> synthesizeMoleculesWithSubstitutes(synthesisRequest)

Sintetizar moléculas con sustituyentes

Recibe una molécula principal y una lista de sustituyentes, devolviendo un arreglo con todas las moléculas y sus sustituyentes generados.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api = SmileItApi().getSintesisApi();
final SynthesisRequest synthesisRequest = ; // SynthesisRequest | 

try {
    final response = api.synthesizeMoleculesWithSubstitutes(synthesisRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SintesisApi->synthesizeMoleculesWithSubstitutes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synthesisRequest** | [**SynthesisRequest**](SynthesisRequest.md)|  | 

### Return type

[**BuiltList&lt;SynthesizedMolecule&gt;**](SynthesizedMolecule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

