import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ComamosComponent } from './comamos.component';

describe('ComamosComponent', () => {
  let component: ComamosComponent;
  let fixture: ComponentFixture<ComamosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ComamosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ComamosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
