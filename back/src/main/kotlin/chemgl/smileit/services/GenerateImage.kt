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
    private var atomLocate: List<AtomPosition> = mutableListOf<AtomPosition>()

    init {
        val sp = SmilesParser(DefaultChemObjectBuilder.getInstance())
        moleculeCDK = sp.parseSmiles(smileCanonical)
        this._sdg.setMolecule(moleculeCDK, false)
        this._sdg.generateCoordinates()
        moleculeCDK = this._sdg.molecule
    }


    fun getImage(): String {
        val renderer = AtomContainerRenderer(
            listOf(
                BasicSceneGenerator(),
                StandardGenerator(JLabel().font),
            ), AWTFontManager()
        )
        renderer.renderer2DModel.set(BasicSceneGenerator.FitToScreen::class.java, true)
        val screen = Rectangle(width, height)

        val svgGenerator = SVGGraphics2D(
            GenericDOMImplementation.getDOMImplementation().createDocument("http://www.w3.org/2000/svg", "svg", null)
        )
        val writer = StringWriter()
        renderer.setup(moleculeCDK, screen)
        renderer.paint(moleculeCDK, AWTDrawVisitor(svgGenerator), screen, true)

        svgGenerator.stream(writer, true)

        var svg = writer.toString()
        atomLocate = moleculeCDK.atoms().map { atom ->
            val pos = renderer.toScreenCoordinates(atom.point2d.x, atom.point2d.y)
            AtomPosition(atom.index, pos.x, pos.y, atom.symbol)
        }
        svg = svg.replace("\n", "")
        for (atom in atomLocate) {

            svg = svg.replace(
                "</svg>",
                "<circle cx=\"${atom.x}\" cy=\"${atom.y}\" r=\"2\" fill=\"red\" border=\"blue\" /></svg>"
            )
        }
        println(svg)
        return svg
    }

    public fun getCoordinates(): List<AtomPosition> {
        if (atomLocate.size <= 0) {
            throw Exception("no se han generado los puntos")
        }
        return atomLocate
    }
}
