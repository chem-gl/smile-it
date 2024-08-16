import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SmileGeneratorComponent } from './smile-generator.component';

describe('SmileGeneratorComponent', () => {
  let component: SmileGeneratorComponent;
  let fixture: ComponentFixture<SmileGeneratorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SmileGeneratorComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(SmileGeneratorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
