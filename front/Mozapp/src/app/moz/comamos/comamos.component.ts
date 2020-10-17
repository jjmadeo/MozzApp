import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-comamos',
  templateUrl: './comamos.component.html',
  styleUrls: ['./comamos.component.css']
})
export class ComamosComponent implements OnInit {
  nmesaData:number;
  nombreData:String

  constructor(
    private _route:Router
  ) { }

  ngOnInit(): void {
  }


validarMesa(){
  //validar mesa disponible
  this._route.navigate([`comer/altamesa/${this.nmesaData}/${this.nombreData}`]);


}



}
