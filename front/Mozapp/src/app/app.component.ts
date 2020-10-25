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
      // {name: 'Contacto', path: '/contacto', role:''},
      {name: 'Coma Aqui!', path: '/comer', role:''},
      {name: 'Trabajo Aqui!', path: '/ingresar', role:''},
      {name: 'inicio', path: '/app/adm', role:'ADM'},
     
      {name: 'Auditoria', path: '/app/adm/auditoria', role:'ADM'},
      {name: 'Personas', path: '/app/adm/personas', role:'ADM'},
      
      {name: 'Inicio', path: '/app/mozo/', role:'MOZO'},
      {name: 'Solicitudes', path: '/app/mozo/pedidos', role:'MOZO'},
      {name: 'Nuevo pedido', path: '/app/mozo/pedido', role:'MOZO'},
      

      {name: 'Inicio', path: '/app/cajero', role:'CAJERO'},
      {name: 'Carta', path: '/app/cajero/carta', role:'CAJERO'},
      {name: 'Pedidos', path: '/app/cajero/pedidos', role:'CAJERO'}



    ];
    
  }

  ngDoCheck(){
    this.userLogued = this._AuthService.userIsLogued();
    }


}
