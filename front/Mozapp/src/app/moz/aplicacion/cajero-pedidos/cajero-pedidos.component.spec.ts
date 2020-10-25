import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CajeroPedidosComponent } from './cajero-pedidos.component';

describe('CajeroPedidosComponent', () => {
  let component: CajeroPedidosComponent;
  let fixture: ComponentFixture<CajeroPedidosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CajeroPedidosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CajeroPedidosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
