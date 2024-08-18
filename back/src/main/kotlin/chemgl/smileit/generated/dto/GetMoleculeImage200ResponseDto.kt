package chemgl.smileit.generated.dto

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
 * @param svgImage Imagen SVG de la molécula.
 */
data class GetMoleculeImage200ResponseDto(

    @Schema(example = "null", description = "Imagen SVG de la molécula.")
    @get:JsonProperty("svg_image") val svgImage: kotlin.String? = null
) {

}

