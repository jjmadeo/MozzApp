import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/forms';
import { ContactForm } from "../../modelos/ContactForm";



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

  constructor() { }

  ngOnInit(): void {
  }

  EnviarFormContacto(){
    this.contacto = new ContactForm(this.nombreData,this.apellidoData,this.emailData,this.telefonoData,this.mensajeData);
    console.log(this.contacto)

  }
  onSubmit(f:NgForm){

  }

}
