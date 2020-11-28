import { importExpr } from '@angular/compiler/src/output/output_ast';
import { Component, DoCheck } from '@angular/core';
import { AuthService } from "./moz/servicios/auth.service";
import { ShareService } from "./moz/complementos/shereservice/share.service";

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
  alertas: any[];


  constructor(
    private _AuthService:AuthService,
    private _shereService:ShareService

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
      {name: 'Nuevo pedido', path: '/app/mozo/pedido', role:'MOZO'},
      

      {name: 'Inicio', path: '/app/cajero', role:'CAJERO'},
      {name: 'Carta', path: '/app/cajero/carta', role:'CAJERO'},
      {name: 'Administracion', path: '/app/cajero/administracion', role:'CAJERO'}



    ];
    
  }

  ngDoCheck(){
    this.userLogued = this._AuthService.userIsLogued();
    
    this.alertas =  JSON.parse(localStorage.getItem('notificaciones'))
    if(window.innerHeight > window.innerWidth){
      alert("Por favor coloque el dispositivo en forma Horizontal");
      }


    }

    


}
