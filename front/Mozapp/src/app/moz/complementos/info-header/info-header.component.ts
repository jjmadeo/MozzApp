import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-info-header',
  templateUrl: './info-header.component.html',
  styleUrls: ['./info-header.component.css']
})
export class InfoHeaderComponent implements OnInit {

  @Input() titulo:string;
  @Input() subTitulo:string;
  @Input() imgUrl:string;
  constructor() { }

  ngOnInit(): void {
  }

}
