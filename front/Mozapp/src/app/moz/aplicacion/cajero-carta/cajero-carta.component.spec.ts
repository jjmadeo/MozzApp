import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CajeroCartaComponent } from './cajero-carta.component';

describe('CajeroCartaComponent', () => {
  let component: CajeroCartaComponent;
  let fixture: ComponentFixture<CajeroCartaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CajeroCartaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CajeroCartaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
