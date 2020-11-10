import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AlertZoneComponent } from './alert-zone.component';

describe('AlertZoneComponent', () => {
  let component: AlertZoneComponent;
  let fixture: ComponentFixture<AlertZoneComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AlertZoneComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AlertZoneComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
