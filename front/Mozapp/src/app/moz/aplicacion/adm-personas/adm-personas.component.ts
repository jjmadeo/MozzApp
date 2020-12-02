import { Component, OnInit, ɵConsole } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { alerta, loaderSet } from "../../complementos/loadModify";
import { ThrowStmt } from '@angular/compiler';
import { AuditoriaService } from '../../servicios/auditoria.service';
import { NgForm } from '@angular/forms';


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
  rolData:any;
  idUsuario:number;
  swichModificarPersona:boolean;
  swichEliminarPersona:boolean;
  swichCambiarPassword:boolean;
  contra2:string;
  contra1:string;
  persona:any;

  
  constructor(
    private _personaServices:PersonaService,
    private _auditoria:AuditoriaService
  ) { }


 
  ngOnInit(): void {

    loaderSet(true);
    this._personaServices.getROLES().subscribe(res=>{
      
      this.listaRolescombo=res;
        loaderSet(false);
    
    },err=>{
      loaderSet(false);
    }
    )
    
    this.personasCombo();
 
}

crearEmpleado(){
  loaderSet(true);
  let empleado={
    nombre:this.nombreData,
    apellido:this.apellidoData,
    turno:this.turnoData,
    usuario:this.usuarioData,
    clave: this.passwordData,
    rol:parseInt(this.rolData ,10)
}

 this._personaServices.altaEmpleado(empleado).subscribe(res=>{
      
  alerta("OK",res);
  this._auditoria.auditoria('Alta Empleado','Se ah dado de alta al empleado.').subscribe(res=>{});

    loaderSet(false);
    this.personasCombo();


},err=>{
  alerta("ERROR",err.error);
  loaderSet(false);
}
)


}
rellenarFormUpdatePersona(item){

  if(item.value=='NA') this.idUsuario=0;

  let arrAux
    arrAux= this.listaUsercombo.find(i=> item === i.ID)
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
    rol:parseInt(this.rolData ,10)
}
  
loaderSet(true);

this._personaServices.actualizarEmpleado(this.idUsuario,empleadoUpdate).subscribe(res=>{
  
  alerta("OK","Usuario ha sido modificado");
  this._auditoria.auditoria('EditarEmpleado','Se Edito el empleado'+this.idUsuario).subscribe(res=>{});
  
  loaderSet(false);
  this.personasCombo();



},err=>{
  alerta("ERROR","error al modificar el usaurio.");
  loaderSet(false);
})


}


eliminarEmpleado(){
  
  if(this.swichEliminarPersona){
    loaderSet(true);  
    this._personaServices.bajaEmpleado(this.idUsuario).subscribe(res=>{
    
      alerta("OK","Usuario ah sido dado de baja");
      this._auditoria.auditoria('BajaLogicaEmplado','Se ha dado de baja el empleado'+this.idUsuario).subscribe(res=>{});
        loaderSet(false);
        this.swichEliminarPersona=false;
        this.personasCombo();

    
    },err=>{
      alerta("ERROR",err.error);
      loaderSet(false);
      this.swichEliminarPersona=false;

    })
  }
  
}

personasCombo(){
  loaderSet(true);

  this._personaServices.getEMPL().subscribe(res=>{
      
    this.listaUsercombo=res;
      loaderSet(false);

      this._auditoria.auditoria('ObtenerEmpleados','Se solicitaron los empleados.').subscribe(res=>{});
  
  },err=>{
    loaderSet(false);
  }
  )
}



}