import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MozoAdministracionComponent } from './cajero-administracion.component';

describe('MozoAdministracionComponent', () => {
  let component: MozoAdministracionComponent;
  let fixture: ComponentFixture<MozoAdministracionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MozoAdministracionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MozoAdministracionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
