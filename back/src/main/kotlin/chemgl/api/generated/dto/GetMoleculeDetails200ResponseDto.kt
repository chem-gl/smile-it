package chemgl.api.generated.dto

import java.util.Objects
import chemgl.api.generated.dto.MoleculeDetailsDto
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
 * @param molecule 
 * @param svgImage Imagen de la molécula en formato SVG.
 */
data class GetMoleculeDetails200ResponseDto(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("molecule") val molecule: MoleculeDetailsDto? = null,

    @Schema(example = "null", description = "Imagen de la molécula en formato SVG.")
    @get:JsonProperty("svg_image") val svgImage: kotlin.String? = null
) {

}

