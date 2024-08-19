package chemgl.smileit.controllers


import chemgl.smileit.domain.AtomPosition
import chemgl.smileit.generated.api.MoleculeApi
import chemgl.smileit.generated.dto.GetMoleculeDetails200ResponseDto
import chemgl.smileit.generated.dto.MoleculeDetailsDto
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping


@RestController
@RequestMapping("/api")
class MoleculesController : MoleculeApi {
    override fun getMoleculeDetails(smile: String): ResponseEntity<GetMoleculeDetails200ResponseDto> {
        var  molecule: MoleculeDetailsDto  =  MoleculeDetailsDto(
            name = "Molecule Name",
            smile = "Molecule Smile",
            atoms =  listOf(),
            hasImplicitHydrogens = true,
            substitutionSites = listOf(1, 2, 3)

        );

        return ResponseEntity.ok(GetMoleculeDetails200ResponseDto(molecule, "SVG Image"));

    }
}