import { Component, OnInit } from '@angular/core';
import { alerta, loaderSet } from '../../complementos/loadModify';
import { AuditoriaService } from '../../servicios/auditoria.service';
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
  urlQr:String;


  constructor(
    private _mesaService:MesaService,
    private _personaService:PersonaService
    ,private _auditoria:AuditoriaService

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
      this._auditoria.auditoria('ObtenerEmpleados','Se ha solicitado la lista de Mozos').subscribe(res=>{});
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
      this._auditoria.auditoria('ObtenerMesas','Se ha solicitado la lista de Mesas').subscribe(res=>{});

      loaderSet(false)

    },e=>{
      loaderSet(false)

    })
  }
  actualizarRelaMesas(idEMPL,MESAID){
    this._personaService.asignarMesa(MESAID,idEMPL).subscribe(res=>{
      console.log(res);
      this._auditoria.auditoria('ReasignarMesa',`Se ah reasignado la mesa ${MESAID} al empleado ${idEMPL}`).subscribe(res=>{});

      this.cargarMesas()
      this.cargarPersonas()
    })
  }
  actualizarMesaEstado(item){
    loaderSet(true)
    let estado = item.habilitada ==1 ? 0:1;

    this._mesaService.habilitarMesa(item.id_mesa,estado).subscribe(res=>{
      this._auditoria.auditoria('ActualizarEstadoMesa',`Se ah modificado  la mesa ${item.id_mesa} al estado  ${estado}`).subscribe(res=>{});

      console.log(res);
      this.cargarMesas()
      this.cargarPersonas()
      loaderSet(false)

    })

  }
  verQrMesa(id){
    this._mesaService.getMesaID(id).subscribe(res=>{
      console.log(res);
      this.urlQr = "data:image/png;base64,"+res[0].QR

    })


  }

  actualizarQr(item){
    loaderSet(true)
    this._mesaService.ActualizarQR(item).subscribe(res=>{
      console.log(res.msj)
      alerta('OK',res.msj);
      loaderSet(false)
    },e=>{
      loaderSet(false)
    })

   

  }


}
