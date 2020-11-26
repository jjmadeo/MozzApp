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
  solicCierre:boolean = false
  constructor(
    private _mesaService: MesaService, private _notificacionService: NotificacionService
  ){ }

  ngOnInit(): void 
  {
    this.mesas = [];
    this.obtenerMesasEmpleado();

    setInterval(()=>{

      this._mesaService.getmesasEmpleado(this.idMozo).subscribe(res=>{      
        this.mesas=JSON.parse(JSON.stringify(res).toLowerCase());
        console.log(this.mesas);
      },e=>{
        console.log(e);
      })


    },600000)



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
        this.solicCierre = true

      },e=>{
      })
      loaderSet(false);
      },e=>{
        loaderSet(false);
      })  
      }else{
        this.solicCierre = false

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
      this.obtenerNotisMesa(this.idMesa);
      this.obtenerMesasEmpleado();
    },e=>{
      loaderSet(false);
    })        
  }


  obtenerNotisMesa(id){
    this._notificacionService.getNotiMesa(id).subscribe(res=>{
      this.notificaciones=JSON.parse(JSON.stringify(res));


      //console.log(this.notificaciones);
      },e=>{
      })
  }

  obtenerMesasEmpleado(){
    this._mesaService.getmesasEmpleado(this.idMozo).subscribe(res=>{      
      this.mesas=JSON.parse(JSON.stringify(res).toLowerCase());
      console.log(this.mesas);
    },e=>{
      console.log(e);
    })
  }

  solicitarCierre(){
    loaderSet(true);
    this._notificacionService.altaNotificacion({idPedido:this.idPedido,tipo:4}).subscribe(res=>{
        console.log(res)

      this.solicCierre=false;
      loaderSet(false);      
    },e=>{

      loaderSet(false);
    }) 

  }


}