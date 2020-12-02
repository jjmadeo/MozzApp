import { Component, DoCheck, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { loaderSet } from 'src/app/moz/complementos/loadModify';
import { NotificacionService } from "../../../servicios/notificacion.service";

@Component({
  selector: 'app-mesa',
  templateUrl: './mesa.component.html',
  styleUrls: ['./mesa.component.css']
})
export class MesaComponent implements OnInit, DoCheck {

@Input('tipoMesa') tipoMesa:boolean;

  @Input()
  mesaObj:any;
  notificaciones:any[] =[]
  pedidoDeCobro:boolean = false;

  constructor(
    private _notificacionService:NotificacionService
  ) { }

  ngOnInit(): void {
    this.obtenerNotificaciones();
  }
  ngDoCheck(): void {
    
    
  }

  obtenerNotificaciones(){
    if(this.mesaObj.ocupada == 1){
      loaderSet(true);
      this._notificacionService.getNotiMesa(this.mesaObj.id_mesa).subscribe(res=>{
        this.notificaciones=res
        
       if(this.notificaciones.find(i=>i.id_tipo_noti == 4) != undefined ){
         this.pedidoDeCobro = true;
       }


        loaderSet(false);

      },e=>{
        loaderSet(false);
      })

    }

  }


  


}
