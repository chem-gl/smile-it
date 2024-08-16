import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RDKitModule } from '@rdkit/rdkit';

@Component({
  selector: 'app-smile-generator',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './smile-generator.component.html',
  styleUrl: './smile-generator.component.scss',
})
export class SmileGeneratorComponent {
  loading = false;
  rdkit?: RDKitModule;
  smileInput = 'CN1C=NC2=C1C(=O)N(C(=O)N2C)';

  // Propiedades para almacenar datos del formulario
  moleculeNameInput: string = '';
  substitutes: {
    id: number;
    name: string;
    smile: string;
    selected: boolean;
  }[] = [
    { id: 1, name: 'Substitute 1', smile: 'S1', selected: false },
    { id: 2, name: 'Substitute 2', smile: 'S2', selected: false },
    { id: 3, name: 'Substitute 3', smile: 'S3', selected: false },
  ];
  selectedSubstitute: any = null; // Para almacenar el sustituto seleccionado
  linkToReplace: string = ''; // Para almacenar el enlace a reemplazar

  // Método para generar la imagen del smile
  generateImage() {
    console.log('Generating image...');
  }

  // Método para previsualizar un sustituto seleccionado
  previewSubstitute(substitute: any) {
    this.selectedSubstitute = substitute;
    console.log('Previewing substitute:', substitute);
  }

  // Método para generar derivados
  generate() {
    // Aquí iría la lógica para generar derivados con el sustituto seleccionado y el enlace a reemplazar
    console.log('Generating derivatives...');
  }
}
