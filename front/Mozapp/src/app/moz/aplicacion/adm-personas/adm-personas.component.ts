import { Component, OnInit, ɵConsole } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { alerta, loaderSet } from "../../complementos/loadModify";
import { ThrowStmt } from '@angular/compiler';

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
  passwordDataChange:string;

  turnoData:string;
  rolData:number;
  idUsuario:number;
  swichModificarPersona:boolean;
  swichEliminarPersona:boolean;
  swichCambiarPassword:boolean;
  contra2:string;
  contra1:string;

  
  constructor(
    private _personaServices:PersonaService
  ) { }


 
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

crearEmpleado(){
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
rellenarFormUpdatePersona(item){
  let arrAux
    arrAux= this.listaUsercombo.find(i=> item === i.ID)
    console.log(arrAux);
    this.idUsuario = arrAux.ID
    this.usuarioData =arrAux.USUARIO;
    this.nombreData=arrAux.NOMBRE;
    this.apellidoData=arrAux.APELLIDO;
    this.turnoData =arrAux.TURNO;
    this.rolData =arrAux.rolID;

}







editarEmpleado(){

  let empleadoUpdate={
    nombre:this.nombreData,
    apellido:this.apellidoData,
    turno:this.turnoData,
    usuario:this.usuarioData,
    clave: this.swichCambiarPassword ? this.passwordDataChange:null,
    rol:this.rolData
}
  
loaderSet(true);

this._personaServices.actualizarEmpleado(this.idUsuario,empleadoUpdate).subscribe(res=>{
  
  alerta("OK","Usuario ha sido modificado");
  console.log(res)
    loaderSet(false);

},err=>{
  alerta("ERROR","error al modificar el usaurio.");
  console.log(err)
  loaderSet(false);
})


}


eliminarEmpleado(){
  
  if(this.swichEliminarPersona){
    loaderSet(true);  
    this._personaServices.bajaEmpleado(this.idUsuario).subscribe(res=>{
    
      alerta("OK","Usuario ah sido dado de baja");
      console.log(res)
        loaderSet(false);
        this.swichEliminarPersona=false;
    
    },err=>{
      alerta("ERROR","no se ah podido dar de baja el usario.");
      console.log(err)
      loaderSet(false);
      this.swichEliminarPersona=false;

    })
  }
  
}



}