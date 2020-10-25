import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AbmCartaComponent } from './abm-carta.component';

describe('AbmCartaComponent', () => {
  let component: AbmCartaComponent;
  let fixture: ComponentFixture<AbmCartaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AbmCartaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AbmCartaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
