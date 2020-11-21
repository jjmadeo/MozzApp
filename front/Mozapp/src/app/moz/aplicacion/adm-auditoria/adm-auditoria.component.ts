import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { loaderSet } from "../../complementos/loadModify";

@Component({
  selector: 'app-adm-auditoria',
  templateUrl: './adm-auditoria.component.html',
  styleUrls: ['./adm-auditoria.component.css']
})
export class AdmAuditoriaComponent implements OnInit {
  //creo una lista de array de auditoria
  listaAuditoria:any[];

  constructor(
    private _personaServices:PersonaService
  ) { }

  ngOnInit(): void {

    // this.listaAuditoria= [
    //   {usuario:"pDRoloco",log:"ingreso a sistema el dia 17/10/20 11:00 am"},
    //   {usuario:"JuanLo",log:"realizo compra el dia 17/10/20  01:00 pm"},
    //   {usuario:"Joselo",log:"solicito mesa el dia 18/10/20 4:00 pm"}

    // ]
    
    this._personaServices.getEMPL().subscribe(res=>{
      loaderSet(true);
      
      var tam=res.empleados.length;
       //console.log(tam);
      
    

      this.listaAuditoria=[
        {usuario: res.empleados[0].usuario,log:res.empleados[0].role},
        {usuario: res.empleados[1].usuario,log:res.empleados[1].role},
        {usuario: res.empleados[2].usuario,log:res.empleados[2].role}
      ]
      loaderSet(false);
    
    },err=>{
      console.log(err)
      loaderSet(false);
    }
  )}}