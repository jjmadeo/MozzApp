import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { alerta, loaderSet } from "../../complementos/loadModify";

@Component({
  selector: 'app-adm-personas',
  templateUrl: './adm-personas.component.html',
  styleUrls: ['./adm-personas.component.css']
})
export class AdmPersonasComponent implements OnInit {
  listaUsercombo:any[];
  listaRolescombo:any[];
  usuarioData:string;
  apellidoData:string;
  nombreData:string;
  passwordData:string;
  turnoData:string;
  rolData:number;
  idUsuario:number;
  
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

    loaderSet(true);
    this._personaServices.getROLES().subscribe(res=>{
      
      this.listaRolescombo=res;
      console.log(this.listaRolescombo)
        loaderSet(false);
    
    },err=>{
      console.log(err)
      loaderSet(false);
    }
    )
    
    loaderSet(true);

    this._personaServices.getEMPL().subscribe(res=>{
      
      this.listaUsercombo=res;
      console.log(this.listaUsercombo)
        loaderSet(false);
    
    },err=>{
      console.log(err)
      loaderSet(false);
    }
    )
}

CrearEmpleado(){
  loaderSet(true);
  let empleado={
    nombre:this.nombreData,
    apellido:this.apellidoData,
    turno:this.turnoData,
    usuario:this.usuarioData,
    clave: this.passwordData,
    rol:this.rolData
}
  console.log(empleado);

 this._personaServices.altaEmpleado(empleado).subscribe(res=>{
      
  alerta("OK","usuario grabado correctamente");
  console.log(res)
    loaderSet(false);

},err=>{
  alerta("ERROR","error al crear empleado");
  console.log(err)
  loaderSet(false);
}
)


}




}