import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MozoNuevoPedidoComponent } from './mozo-nuevo-pedido.component';

describe('MozoNuevoPedidoComponent', () => {
  let component: MozoNuevoPedidoComponent;
  let fixture: ComponentFixture<MozoNuevoPedidoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MozoNuevoPedidoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MozoNuevoPedidoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
