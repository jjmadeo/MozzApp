import { importExpr } from '@angular/compiler/src/output/output_ast';
import { Component, DoCheck } from '@angular/core';
import { AuthService } from "./moz/servicios/auth.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements DoCheck {
  nombreRestauran:String = 'MoozAPP';
  title:String = 'Mozapp';
  userLogued:any;
  elements: any[];
  constructor(
    private _AuthService:AuthService
  ){}

  ngOnInit(): void {
    this.elements = [
      {name: 'Home', path: '/home', role:''},
      {name: 'Nosotros', path: '/nosotros', role:''},
      {name: 'Contacto', path: '/contacto', role:''},
      {name: 'Coma Aqui!', path: '/comer', role:''},
      {name: 'Trabajo Aqui!', path: '/ingresar', role:''},
      {name: 'MenuAPPa', path: '/app/a', role:'ADM'},
      {name: 'MenuAPPa', path: '/app/b', role:'ADM'},
      {name: 'MenuAPPa', path: '/app/c', role:'MOZO'},
      {name: 'MenuAPPa', path: '/app/d', role:'MOZO'},
      {name: 'MenuAPPa', path: '/app/e', role:'CAJERO'}

    ];
    
  }

  ngDoCheck(){
    this.userLogued = this._AuthService.userIsLogued();
    console.log(this.userLogued);     

  }


}
