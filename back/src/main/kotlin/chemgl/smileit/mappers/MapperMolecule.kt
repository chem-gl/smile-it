
package chemgl.smileit.mappers

import chemgl.smileit.domain.*
import chemgl.smileit.generated.dto.*
import org.mapstruct.Mapper


@Mapper(componentModel = "spring")
abstract class MoleculeMapper {
    abstract fun toMoleculeDetailsDto(molecule: MoleculeDetails): MoleculeDetailsDto
    abstract fun toMoleculeDetails(molecule: MoleculeDetailsDto): MoleculeDetails

    abstract fun toAtomPositionDto(atomPosition: AtomPosition): AtomPositionDto
    abstract fun toAtomPosition(atomPositionDto: AtomPositionDto): AtomPosition
}

@Mapper(componentModel = "spring")
abstract class AtomPositionMapper {
    abstract fun toAtomPositionDto(atomPosition: AtomPosition): AtomPositionDto
    abstract fun toAtomPosition(atomPositionDto: AtomPositionDto): AtomPosition
}

@Mapper(componentModel = "spring")
abstract class SynthesisRequestMapper {
    abstract fun toSynthesisRequestDto(synthesisRequest: SynthesisRequest): SynthesisRequestDto
    abstract fun toSynthesisRequest(synthesisRequestDto: SynthesisRequestDto): SynthesisRequest

    abstract fun toAtomPositionDto(atomPosition: AtomPosition): AtomPositionDto
    abstract fun toAtomPosition(atomPositionDto: AtomPositionDto): AtomPosition
}

@Mapper(componentModel = "spring")
abstract class SynthesizedMoleculeMapper {
    abstract fun toSynthesizedMoleculeDto(synthesizedMolecule: SynthesizedMolecule): SynthesizedMoleculeDto
    abstract fun toSynthesizedMolecule(synthesizedMoleculeDto: SynthesizedMoleculeDto): SynthesizedMolecule

    abstract fun toSubstitutionDetailDto(substitutionDetail: SubstitutionDetail): SubstitutionDetailDto
    abstract fun toSubstitutionDetail(substitutionDetailDto: SubstitutionDetailDto): SubstitutionDetail
}

@Mapper(componentModel = "spring")
abstract class SubstitutionDetailMapper {
    abstract fun toSubstitutionDetailDto(substitutionDetail: SubstitutionDetail): SubstitutionDetailDto
    abstract fun toSubstitutionDetail(substitutionDetailDto: SubstitutionDetailDto): SubstitutionDetail
}