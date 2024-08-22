package chemgl.smileit.controllers

import chemgl.api.generated.api.PermutasApi
import chemgl.api.generated.dto.SynthesisRequestDto
import chemgl.api.generated.dto.SynthesizedMoleculeDto
import chemgl.smileit.mappers.SynthesisRequestMapper
import chemgl.smileit.services.SmileGenerator
import org.openscience.cdk.smiles.SmilesGenerator
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class PermutesController(private val smilesGenerator: SmileGenerator) : PermutasApi {

    override fun synthesizeMoleculesWithSubstitutes(synthesisRequestDto: SynthesisRequestDto): ResponseEntity<List<SynthesizedMoleculeDto>> {
        val value = smilesGenerator.generateSmiles(synthesisRequestDto)
        return ResponseEntity.ok(value)

    }

}