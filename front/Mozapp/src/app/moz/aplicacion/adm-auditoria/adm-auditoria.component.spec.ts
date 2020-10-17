import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdmAuditoriaComponent } from './adm-auditoria.component';

describe('AdmAuditoriaComponent', () => {
  let component: AdmAuditoriaComponent;
  let fixture: ComponentFixture<AdmAuditoriaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AdmAuditoriaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AdmAuditoriaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
