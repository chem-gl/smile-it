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
 * @param version La versión actual de la API.
 */
data class GetApiVersion200ResponseDto(

    @Schema(example = "null", description = "La versión actual de la API.")
    @get:JsonProperty("version") val version: kotlin.String? = null
) {

}

