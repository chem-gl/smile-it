import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { RDKitModule } from '@rdkit/rdkit';
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss',
})
export class AppComponent {
  loading = false;
  rdkit?: RDKitModule;
}
