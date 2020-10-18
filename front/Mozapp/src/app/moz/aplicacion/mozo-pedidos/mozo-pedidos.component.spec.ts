import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MozoPedidosComponent } from './mozo-pedidos.component';

describe('MozoPedidosComponent', () => {
  let component: MozoPedidosComponent;
  let fixture: ComponentFixture<MozoPedidosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MozoPedidosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MozoPedidosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
