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
  notificaciones:any=[]

  constructor(
    private _notificacionService:NotificacionService
  ) { }

  ngOnInit(): void {
    console.log(this.mesaObj)
    this.obtenerNotificaciones();
  }
  ngDoCheck(): void {
    
    
  }

  obtenerNotificaciones(){
    if(this.mesaObj.ocupada == 1){
      loaderSet(true);
      this._notificacionService.getNotiMesa(this.mesaObj.id_mesa).subscribe(res=>{
        this.notificaciones=JSON.parse(JSON.stringify(res).toLowerCase());
        
        console.log(this.notificaciones)

        loaderSet(false);

      },e=>{
        loaderSet(false);
      })

    }

  }


  


}
