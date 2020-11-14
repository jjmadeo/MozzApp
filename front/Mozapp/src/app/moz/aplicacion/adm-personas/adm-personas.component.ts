import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { loaderSet } from "../../complementos/loadModify";

@Component({
  selector: 'app-adm-personas',
  templateUrl: './adm-personas.component.html',
  styleUrls: ['./adm-personas.component.css']
})
export class AdmPersonasComponent implements OnInit {
  listaUsercombo:any[];
  usuarioData:string;
  nombreData:string;
  passwordData:string;
  
  constructor(
    private _personaServices:PersonaService
  ) { }


    abrirNuevo(){
      
     
      
      
       alert("abrir Nuevo "+this.nombreData);
     
    }

    abrirEditar(){
      
      alert("abrir Editar "+this.nombreData);
     
    }

    abrirEliminar(){
      
      alert("abrir Eliminar "+this.nombreData);
     
    }

  ngOnInit(): void {

    // this.listaUsercombo= [
    //   {nombre:"Pedro", usuario:"ppedro",role:"ADM"},
    //   {nombre:"Juan", usuario:"jjuan",role:"MOZ"},
    //   {nombre:"Jose", usuario:"jjose",role:"USU"}

    // ]

    
    loaderSet(true);

this._personaServices.getEMPL().subscribe(res=>{
  
  console.log(res.empleados.usuario);
  this.listaUsercombo=res.empleados;
  loaderSet(false);

},err=>{
  console.log(err)
  loaderSet(false);
}
)
}}

