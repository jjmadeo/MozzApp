import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdmPersonasComponent } from './adm-personas.component';

describe('AdmPersonasComponent', () => {
  let component: AdmPersonasComponent;
  let fixture: ComponentFixture<AdmPersonasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AdmPersonasComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AdmPersonasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
