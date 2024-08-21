package chemgl.smileit.services

import org.openscience.cdk.DefaultChemObjectBuilder
import org.openscience.cdk.interfaces.IAtomContainer
import org.openscience.cdk.smiles.SmiFlavor
import org.openscience.cdk.smiles.SmilesGenerator
import org.openscience.cdk.smiles.SmilesParser

class SmileProcessor {

     fun canonicSmile(smile: String): String {
        val smileParse = SmilesParser(DefaultChemObjectBuilder.getInstance());
        val moleculeCDK: IAtomContainer = smileParse.parseSmiles(smile);
        val smileCanonical = SmilesGenerator(SmiFlavor.Absolute).create(moleculeCDK);
        return smileCanonical
    }
}