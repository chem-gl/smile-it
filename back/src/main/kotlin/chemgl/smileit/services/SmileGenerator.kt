package chemgl.smileit.services

import chemgl.api.generated.dto.SynthesisRequestDto
import chemgl.api.generated.dto.SynthesizedMoleculeDto
import chemgl.smileit.mappers.SynthesisRequestMapper
import org.springframework.stereotype.Service

@Service
class SmileGenerator(private val synthesisRequestMapper: SynthesisRequestMapper) {
    fun generateSmiles(synthesisRequestDto: SynthesisRequestDto): List<SynthesizedMoleculeDto> {
        val sintesis = synthesisRequestMapper.toSynthesisRequest(synthesisRequestDto)

        return listOf();
    }



}