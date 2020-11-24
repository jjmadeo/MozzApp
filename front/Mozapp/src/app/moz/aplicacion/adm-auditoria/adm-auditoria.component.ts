import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { loaderSet } from "../../complementos/loadModify";
import { AuditoriaService } from '../../servicios/auditoria.service';

@Component({
  selector: 'app-adm-auditoria',
  templateUrl: './adm-auditoria.component.html',
  styleUrls: ['./adm-auditoria.component.css']
})
export class AdmAuditoriaComponent implements OnInit {
  //creo una lista de array de auditoria
  listaAuditoria:any[];

  constructor(
    private _personaServices:PersonaService,
    private _auditoria:AuditoriaService
  ) { }

  ngOnInit(): void {
    loaderSet(true);

      this._auditoria.obtenerAuditoria().subscribe(res=>{
        this.listaAuditoria = res
        this._auditoria.auditoria('ObtenerAuditoria','Se ha solicitado la auditoria del sistema.').subscribe(res=>{});

        loaderSet(false);

      },e=>{
        loaderSet(false);

      });


    
  }
}