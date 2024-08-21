package chemgl.smileit.services

import chemgl.smileit.domain.AtomPosition
import java.awt.Rectangle
import java.io.StringWriter
import java.math.BigDecimal
import javax.swing.JLabel
import org.apache.batik.dom.GenericDOMImplementation
import org.apache.batik.svggen.SVGGraphics2D
import org.openscience.cdk.DefaultChemObjectBuilder
import org.openscience.cdk.interfaces.IAtomContainer
import org.openscience.cdk.layout.StructureDiagramGenerator
import org.openscience.cdk.renderer.AtomContainerRenderer
import org.openscience.cdk.renderer.font.AWTFontManager
import org.openscience.cdk.renderer.generators.*
import org.openscience.cdk.renderer.generators.standard.StandardGenerator
import org.openscience.cdk.renderer.visitor.AWTDrawVisitor
import org.openscience.cdk.smiles.SmilesParser


class GenerateImage(private val smileCanonical: String, private val width: Int = 500, private val height: Int = 500) {
    private val _sdg = StructureDiagramGenerator()
    private var moleculeCDK: IAtomContainer;
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
        // Configura el viewBox, width y height
        val viewBox = "0 0 $width $height" // Ajusta viewBox de acuerdo a la imagen
        val svgWidth = "$width"
        val svgHeight = "$height"
        val writer = StringWriter()
        renderer.setup(moleculeCDK, screen)
        renderer.paint(moleculeCDK, AWTDrawVisitor(svgGenerator), screen, true)
        // Obtén el elemento SVG raíz
        val root = svgGenerator.root
        root.setAttributeNS(null, "viewBox", viewBox)
        root.setAttributeNS(null, "width", svgWidth)
        root.setAttributeNS(null, "height", svgHeight)
        svgGenerator.stream(root, writer)
        var svg = writer.toString()
        atomLocate = moleculeCDK.atoms().map { atom ->
            //obtengo las cordenadas reales en la pantalla y lleno el atom position que contendra todas las conrdenadas
            val pos = renderer.toScreenCoordinates(atom.point2d.x, atom.point2d.y)
            AtomPosition(atom.index, BigDecimal(pos.x), BigDecimal(pos.y), atom.symbol)
        }
        svg = svg.replace("\n", "").replace("\t", " ").replace(" +".toRegex(), " ")
        return svg
    }

    fun getCoordinates(): List<AtomPosition> {
        if (atomLocate.isEmpty()) {
            throw Exception("no se han generado los puntos")
        }
        return atomLocate
    }
}
