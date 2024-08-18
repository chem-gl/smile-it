package chemgl.smileit.generated.dto

import java.util.Objects
import chemgl.smileit.generated.dto.MoleculeDetailsDto
import chemgl.smileit.generated.dto.SubstitutionDetailDto
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
 * @param mainMolecule 
 * @param substitutionDetails 
 * @param resultingMolecule 
 */
data class SynthesizedMoleculeDto(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("mainMolecule") val mainMolecule: MoleculeDetailsDto? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("substitutionDetails") val substitutionDetails: kotlin.collections.List<SubstitutionDetailDto>? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("resultingMolecule") val resultingMolecule: MoleculeDetailsDto? = null
) {

}

