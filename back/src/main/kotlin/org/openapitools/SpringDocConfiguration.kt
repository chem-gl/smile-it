package org.openapitools

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

import io.swagger.v3.oas.models.OpenAPI
import io.swagger.v3.oas.models.info.Info
import io.swagger.v3.oas.models.info.Contact
import io.swagger.v3.oas.models.info.License
import io.swagger.v3.oas.models.Components
import io.swagger.v3.oas.models.security.SecurityScheme

@Configuration
class SpringDocConfiguration {

    @Bean
    fun apiInfo(): OpenAPI {
        return OpenAPI()
            .info(
                Info()
                    .title("API de Química")
                    .description("API para generar permutaciones de moléculas, obtener imágenes basadas en SMILES, y manipular moléculas con sustituyentes, devolviendo imágenes en formato SVG.")
                    .contact(
                        Contact()
                            .name("Equipo de Soporte")
                            .url("http://www.example.com/support")
                            .email("support@example.com")
                    )
                    .license(
                        License()
                            .name("Apache 2.0")
                            .url("http://www.apache.org/licenses/LICENSE-2.0.html")
                    )
                    .version("1.0.0")
            )
    }
}
