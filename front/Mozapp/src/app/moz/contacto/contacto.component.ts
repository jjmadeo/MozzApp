import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/forms';
import { ContactForm } from "../../modelos/ContactForm";
import { alerta, loaderSet } from '../complementos/loadModify';
import { PersonaService } from '../servicios/persona.service';



@Component({
  selector: 'app-contacto',
  templateUrl: './contacto.component.html',
  styleUrls: ['./contacto.component.css']
})
export class ContactoComponent implements OnInit {

  contacto:ContactForm;

   nombreData:string;
   apellidoData:string;
   emailData:String;
   telefonoData:string;
   mensajeData:String;
   calificacionNumerica:number

  constructor(private _personaServide:PersonaService) { }

  ngOnInit(): void {
  }

  EnviarFormContacto(){
    loaderSet(true)
    this._personaServide.enviarComentarios({nombre:this.nombreData,email:this.emailData,telefono:this.telefonoData,puntuacion:this.calificacionNumerica,comentario:this.mensajeData }).subscribe(res=>{
      loaderSet(false)
      alerta('OK','Comentario enviado');
    },e=>{
      loaderSet(false)

    })


  }
  onSubmit(f:NgForm){

  }

}
