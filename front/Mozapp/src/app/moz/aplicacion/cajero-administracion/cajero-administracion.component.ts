import { Component, OnInit } from '@angular/core';
import { loaderSet } from '../../complementos/loadModify';
import { MesaService } from "../../servicios/mesa.service";
import { PersonaService } from "../../servicios/persona.service";


@Component({
  selector: 'app-cajero-administracion',
  templateUrl: './cajero-administracion.component.html',
  styleUrls: ['./cajero-administracion.component.css']
})
export class CajeroAdministracionComponent implements OnInit {
  mesas:any[];
  personas:any[];
  estadoMesa:boolean

  constructor(
    private _mesaService:MesaService,
    private _personaService:PersonaService

  ) { }

  ngOnInit(): void {
    this.cargarMesas()
    this.cargarPersonas()
  }



cargarPersonas(){
  loaderSet(true)
    this._personaService.getEMPL().subscribe(res=>{
      this.personas =  JSON.parse(JSON.stringify(res).toLowerCase())
      this.personas =  this.personas.filter(i=>i.rol == 'mozo')
      console.log(this.personas)
      loaderSet(false)

    },e=>{
      loaderSet(false)

    })
  
}

  cargarMesas(){
    loaderSet(true)
    this._mesaService.getMesas().subscribe(res=>{
      this.mesas =  JSON.parse(JSON.stringify(res).toLowerCase())
      console.log(this.mesas)
      loaderSet(false)

    },e=>{
      loaderSet(false)

    })
  }
  actualizarRelaMesas(item,e){
    console.log(item+""+e )
  }
}
