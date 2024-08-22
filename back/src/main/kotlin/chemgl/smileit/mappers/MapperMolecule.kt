
package chemgl.smileit.mappers

import chemgl.api.generated.dto.*
import chemgl.smileit.domain.*

import org.mapstruct.Mapper
import org.mapstruct.Mapping




@Mapper(componentModel = "spring")
abstract class SynthesisRequestMapper {
    @Mapping(target = "nSubstitutes", source = "NSubstitutes")
    abstract fun toSynthesisRequest(synthesisRequestDto: SynthesisRequestDto): SynthesisRequest
    abstract fun toAtomPositionDto(atomPosition: AtomPosition): AtomPositionDto
    abstract fun toAtomPosition(atomPositionDto: AtomPositionDto): AtomPosition
}

@Mapper(componentModel = "spring")
abstract class SubstitutionDetailMapper {
    abstract fun toSubstitutionDetailDto(substitutionDetail: SubstitutionDetail): SubstitutionDetailDto
    abstract fun toSubstitutionDetail(substitutionDetailDto: SubstitutionDetailDto): SubstitutionDetail
}

