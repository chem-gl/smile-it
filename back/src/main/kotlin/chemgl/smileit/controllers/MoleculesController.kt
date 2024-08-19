package chemgl.smileit.controllers


import chemgl.smileit.domain.AtomPosition
import chemgl.smileit.generated.api.MoleculeApi
import chemgl.smileit.generated.dto.AtomPositionDto
import chemgl.smileit.generated.dto.GetMoleculeDetails200ResponseDto
import chemgl.smileit.generated.dto.MoleculeDetailsDto
import chemgl.smileit.services.GenerateImage
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping
import java.math.BigDecimal
import org.openscience.cdk.smiles.SmilesParser
import org.openscience.cdk.DefaultChemObjectBuilder
import org.openscience.cdk.interfaces.IAtomContainer
import org.openscience.cdk.smiles.SmiFlavor
import org.openscience.cdk.smiles.SmilesGenerator
//import iatom
import org.openscience.cdk.interfaces.IAtom
@RestController
@RequestMapping("/api")



class MoleculesController : MoleculeApi {

    override fun getMoleculeDetails(
        smile: String,
        hasImplicitHydrogens: Boolean?,
        aliasName: String?
    ): ResponseEntity<GetMoleculeDetails200ResponseDto> {
        var smileCanonical = smileCanonico(smile)
        var generateImage: GenerateImage = GenerateImage(smileCanonical, 500, 500);

        var imageSvg = generateImage.getImage()
        var listaCordenadas = generateImage.getCoordinates()
        var  molecule: MoleculeDetailsDto  =  MoleculeDetailsDto(
            name =  aliasName,
            smile =  smileCanonical,
            atoms =  listaCordenadas.map { AtomPositionDto(it.index ,BigDecimal( it.x),BigDecimal( it.y), it.symbol) },
            hasImplicitHydrogens = hasImplicitHydrogens,
            substitutionSites = listOf()

        );

        return ResponseEntity.ok(GetMoleculeDetails200ResponseDto(molecule, imageSvg));
    }

    private fun smileCanonico(smile: String): String {
        var smileParse: SmilesParser = SmilesParser(DefaultChemObjectBuilder.getInstance());
        var moleculeCDK: IAtomContainer = smileParse.parseSmiles(smile);
        var generator: SmilesGenerator = SmilesGenerator(SmiFlavor.Absolute);
        var smileCanonical = generator.create(moleculeCDK);
        return smileCanonical
    }
}