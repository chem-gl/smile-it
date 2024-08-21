package chemgl.api.generated.dto

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Email
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid
import io.swagger.v3.oas.annotations.media.Schema

/**
 * 
 * @param description Descripción del error.
 * @param code Código numérico del error.
 * @param details Detalles adicionales sobre el error.
 */
data class ErrorObjectDto(

    @Schema(example = "null", description = "Descripción del error.")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(example = "null", description = "Código numérico del error.")
    @get:JsonProperty("code") val code: kotlin.Int? = null,

    @Schema(example = "null", description = "Detalles adicionales sobre el error.")
    @get:JsonProperty("details") val details: kotlin.String? = null
) {

}

