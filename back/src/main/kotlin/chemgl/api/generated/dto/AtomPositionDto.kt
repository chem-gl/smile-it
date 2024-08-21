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
 * @param atomIndex Índice del átomo en la molécula.
 * @param x Coordenada X del átomo.
 * @param y Coordenada Y del átomo.
 * @param smile SMILES del átomo.
 */
data class AtomPositionDto(

    @Schema(example = "null", description = "Índice del átomo en la molécula.")
    @get:JsonProperty("atom_index") val atomIndex: kotlin.Int? = null,

    @Schema(example = "null", description = "Coordenada X del átomo.")
    @get:JsonProperty("x") val x: java.math.BigDecimal? = null,

    @Schema(example = "null", description = "Coordenada Y del átomo.")
    @get:JsonProperty("y") val y: java.math.BigDecimal? = null,

    @Schema(example = "null", description = "SMILES del átomo.")
    @get:JsonProperty("smile") val smile: kotlin.String? = null
) {

}

