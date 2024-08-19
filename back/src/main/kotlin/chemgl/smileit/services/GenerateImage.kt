package chemgl.smileit.services
import org.openscience.cdk.interfaces.IAtomContainer
import org.openscience.cdk.layout.StructureDiagramGenerator
import org.openscience.cdk.smiles.SmilesParser
import org.openscience.cdk.DefaultChemObjectBuilder
import org.w3c.dom.Document
import org.apache.batik.dom.GenericDOMImplementation
import org.apache.batik.svggen.SVGGraphics2D
import java.awt.Rectangle
import java.io.StringWriter
import org.openscience.cdk.renderer.generators.*
import org.openscience.cdk.renderer.AtomContainerRenderer
import org.openscience.cdk.renderer.visitor.AWTDrawVisitor
import javax.swing.JLabel
import org.openscience.cdk.renderer.font.AWTFontManager
import org.openscience.cdk.renderer.generators.standard.StandardGenerator

data class AtomPosition(val index: Int, val x: Double, val y: Double, val symbol: String)

class GenerateImage(private val smileCanonical: String, private val width: Int, private val height: Int) {
    private val _sdg = StructureDiagramGenerator()
    private lateinit var moleculeCDK: IAtomContainer;

    init {
        val sp = SmilesParser(DefaultChemObjectBuilder.getInstance())
        moleculeCDK = sp.parseSmiles(smileCanonical)
        this._sdg.setMolecule(moleculeCDK, false)
        this._sdg.generateCoordinates()
        moleculeCDK = this._sdg.molecule
    }


    fun getImage(): String  {
        val screen = Rectangle(0, 0, width, height)
        val domImpl = GenericDOMImplementation.getDOMImplementation()
        val svgNS = "http://www.w3.org/2000/svg"
        val document: Document = domImpl.createDocument(svgNS, "svg", null)
        val svgGenerator = SVGGraphics2D(document)
        val renderer = generateRender(moleculeCDK, screen)
        renderer.paint(moleculeCDK, AWTDrawVisitor(svgGenerator), screen, false)
        val writer = StringWriter()
        svgGenerator.stream(writer, true)
        println(writer.toString())
        return writer.toString()
    }

    private fun generateRender(moleculeCDK: IAtomContainer, screen: Rectangle): AtomContainerRenderer {
        val generators = listOf(
            BasicSceneGenerator(),
            StandardGenerator(JLabel().font),
            BasicBondGenerator(),
            BasicAtomGenerator()
        )
        val renderer = AtomContainerRenderer(generators, AWTFontManager())
        renderer.renderer2DModel.set(BasicSceneGenerator.FitToScreen::class.java, false)
        renderer.setup(moleculeCDK, screen)
        return renderer
    }

    public fun getCoordinates(): List<AtomPosition> {
        return moleculeCDK.atoms().map { atom ->
            AtomPosition(atom.index, atom.point2d.x, atom.point2d.y, atom.symbol)
        }
    }
}
