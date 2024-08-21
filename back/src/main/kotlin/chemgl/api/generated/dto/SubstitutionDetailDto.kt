package chemgl.api.generated.dto

import java.util.Objects
import chemgl.api.generated.dto.AtomPositionDto
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
 * @param mainAtom 
 * @param substituentMolecule 
 * @param substituentAtom 
 */
data class SubstitutionDetailDto(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("mainAtom") val mainAtom: AtomPositionDto? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("substituentMolecule") val substituentMolecule: MoleculeDetailsDto? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("substituentAtom") val substituentAtom: AtomPositionDto? = null
) {

}

