import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CajeroHomeComponent } from './cajero-home.component';

describe('CajeroHomeComponent', () => {
  let component: CajeroHomeComponent;
  let fixture: ComponentFixture<CajeroHomeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CajeroHomeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CajeroHomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
