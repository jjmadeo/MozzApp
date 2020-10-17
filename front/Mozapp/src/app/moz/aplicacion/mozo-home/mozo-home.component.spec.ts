import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MozoHomeComponent } from './mozo-home.component';

describe('MozoHomeComponent', () => {
  let component: MozoHomeComponent;
  let fixture: ComponentFixture<MozoHomeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MozoHomeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MozoHomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
