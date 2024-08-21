package chemgl.smileit.controllers

import chemgl.api.generated.api.PermutasApi
import chemgl.api.generated.dto.SynthesisRequestDto
import chemgl.api.generated.dto.SynthesizedMoleculeDto
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class PermutasController : PermutasApi {
    override fun synthesizeMoleculesWithSubstitutes(synthesisRequestDto: SynthesisRequestDto): ResponseEntity<List<SynthesizedMoleculeDto>> {
        
        return ResponseEntity.ok(listOf())
    }

}