package chemgl.smileit.controllers

import chemgl.api.generated.api.MoleculeApi
import chemgl.api.generated.dto.*
import chemgl.smileit.services.GenerateImage
import chemgl.smileit.services.SmileProcessor
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping


@RestController
@RequestMapping("/api")
class MoleculesController : MoleculeApi {
    override fun getMoleculeDetails(
        smile: String,
        hasImplicitHydrogens: Boolean?,
        aliasName: String?
    ): ResponseEntity<GetMoleculeDetails200ResponseDto> {
        val smileCanonical = SmileProcessor().canonicSmile(smile)
        val generateImage  = GenerateImage(smileCanonical);
        val imageSvg       =  generateImage.getImage()
        val atomPositions  = generateImage.getCoordinates()
        val molecule       =  MoleculeDetailsDto(
            name  =  aliasName,
            smile =  smileCanonical,
            atoms =  atomPositions.map { AtomPositionDto(it.atomIndex, it.x, it.y, it.smile) },
            hasImplicitHydrogens = hasImplicitHydrogens,
            substitutionSites = listOf()
        );
        return ResponseEntity.ok(GetMoleculeDetails200ResponseDto(molecule, imageSvg));
    }
}