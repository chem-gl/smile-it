package chemgl.smileit.controllers

import chemgl.smileit.generated.api.ImagenesApi
import chemgl.smileit.generated.dto.GetMoleculeDetails200ResponseDto
import chemgl.smileit.generated.dto.GetMoleculeImage200ResponseDto
import chemgl.smileit.generated.dto.MoleculeDetailsDto
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping


@RestController
@RequestMapping("/api")
class MoleculesController : ImagenesApi {

    override fun getMoleculeDetails(smile: String): ResponseEntity<GetMoleculeDetails200ResponseDto> {
       TODO("Not yet implemented")
    }

    override fun getMoleculeImage(moleculeDetailsDto: MoleculeDetailsDto): ResponseEntity<GetMoleculeImage200ResponseDto> {
        TODO("Not yet implemented")
    }
}