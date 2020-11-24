import { Component, OnInit } from '@angular/core';
import { MesaService } from "../../servicios/mesa.service";
import { alerta, loaderSet } from "../../complementos/loadModify";
import { NotificacionService } from '../../servicios/notificacion.service';
@Component({
  selector: 'app-mozo-home',
  templateUrl: './mozo-home.component.html',
  styleUrls: ['./mozo-home.component.css']
})
export class MozoHomeComponent implements OnInit 
{
  mesas: any[];
  pedido:any = [];
  total:number;
  idPedido:number;
  ocupada: number;
  idMesa:number;
  mozo: any=JSON.parse(localStorage.getItem("sesion")).nombre//localStorage())
  fecha: Date = new Date();
  idMozo:number =JSON.parse(localStorage.getItem("sesion")).id
  notificaciones:any[];
  constructor(
    private _mesaService: MesaService, private _notificacionService: NotificacionService
  ){ }

  ngOnInit(): void 
  {
    this.mesas = [];
    this._mesaService.getmesasEmpleado(this.idMozo).subscribe(res=>{      
      this.mesas=JSON.parse(JSON.stringify(res).toLowerCase());
      console.log(this.mesas);
    },e=>{
      console.log(e);
    })
  }

  VerPedido(mesa)
  {
    if(mesa.ocupada ==1)
    {
      loaderSet(true);
      this._mesaService.getPedidoMesa(mesa.id_mesa).subscribe(res=>{
      this.pedido= JSON.parse(JSON.stringify(res.pedido).toLowerCase());
      this.total = res.total;
      this.idPedido = res.pedidoID
      this.ocupada = mesa.ocupada
      this.idMesa = mesa.id_mesa
      this._notificacionService.getNotiMesa(mesa.id_mesa).subscribe(res=>{
      this.notificaciones=JSON.parse(JSON.stringify(res));
      //console.log(this.notificaciones);
      },e=>{
      })
      loaderSet(false);
      },e=>{
        loaderSet(false);
      })  
      }else{
        this.pedido = [];
        this.total = 0;
        this.idPedido= null;
        this.ocupada = 0
    }
  }

  visarNotificacion(id_noti,mesa)
  {
    this._notificacionService.actulizarNotificacion(id_noti).subscribe(res=>{
      loaderSet(false);
      this._notificacionService.getNotiMesa(mesa.id_mesa).subscribe(res=>{
        this.notificaciones=JSON.parse(JSON.stringify(res));
        //console.log(this.notificaciones);
        },e=>{
        })
    },e=>{
      loaderSet(false);
    })        
  }

}