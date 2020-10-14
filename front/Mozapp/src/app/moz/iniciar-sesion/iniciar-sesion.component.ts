import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/forms';

@Component({
  selector: 'app-iniciar-sesion',
  templateUrl: './iniciar-sesion.component.html',
  styleUrls: ['./iniciar-sesion.component.css']
})
export class IniciarSesionComponent implements OnInit {

  constructor() { 

  }

  usuario:string;
  password:string;

  enviar():void{
    console.log(this.password, this.usuario);
  }

  ngOnInit(): void {
  }

  
}
