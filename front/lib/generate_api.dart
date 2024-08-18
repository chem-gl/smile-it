import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: AdditionalProperties(
      pubName: 'smile_it_api',
      pubAuthor: 'Cesar Guzman',
    ),
    inputSpecFile: 'openapi.yaml', // Ruta relativa al archivo OpenAPI
    generatorName: Generator.dart,
    outputDirectory:
        'lib/api/smile_it_api' // Directorio de salida para el código generado
    )
class GeneratorApi {}
