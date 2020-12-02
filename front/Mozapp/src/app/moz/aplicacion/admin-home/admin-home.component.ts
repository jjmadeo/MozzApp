import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { loaderSet } from "../../complementos/loadModify";
import { AuditoriaService } from '../../servicios/auditoria.service';

@Component({
  selector: 'app-admin-home',
  templateUrl: './admin-home.component.html',
  styleUrls: ['./admin-home.component.css']
})
export class AdminHomeComponent implements OnInit {
  listaUser:any[];

  constructor(
    private _personaServices:PersonaService,
    private _auditoria:AuditoriaService

  ) { }

  ngOnInit(): void {

    loaderSet(true);

    this._personaServices.getEMPL().subscribe(res=>{
      
      this.listaUser=res;

      this._auditoria.auditoria('ObtenerEmpleados','Se ha solicitado la lista de empleados').subscribe(res=>{});

        loaderSet(false);

    },err=>{
      loaderSet(false);
    })

    


    




  }

}
