package chemgl.smileit.generated.dto

import java.util.Objects
import chemgl.smileit.generated.dto.AtomPositionDto
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
 * @param name Nombre generado o común de la molécula.
 * @param smile SMILES de la molécula.
 * @param atoms 
 * @param hasImplicitHydrogens Indica si la molécula tiene hidrógenos implícitos.
 * @param substitutionSites Índices de los átomos seleccionados como sitios de sustitución.
 */
data class MoleculeDetailsDto(

    @Schema(example = "null", description = "Nombre generado o común de la molécula.")
    @get:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(example = "null", description = "SMILES de la molécula.")
    @get:JsonProperty("smile") val smile: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("atoms") val atoms: kotlin.collections.List<AtomPositionDto>? = null,

    @Schema(example = "null", description = "Indica si la molécula tiene hidrógenos implícitos.")
    @get:JsonProperty("hasImplicitHydrogens") val hasImplicitHydrogens: kotlin.Boolean? = null,

    @Schema(example = "null", description = "Índices de los átomos seleccionados como sitios de sustitución.")
    @get:JsonProperty("substitutionSites") val substitutionSites: kotlin.collections.List<kotlin.Int>? = null
) {

}

