import { Component, OnInit } from '@angular/core';
import { MesaService } from "../../servicios/mesa.service";
import { alerta, loaderSet } from "../../complementos/loadModify";
import { AuditoriaService } from '../../servicios/auditoria.service';
@Component({
  selector: 'app-cajero-home',
  templateUrl: './cajero-home.component.html',
  styleUrls: ['./cajero-home.component.css']
})
export class CajeroHomeComponent implements OnInit {
    mesas:any = [];
    pedido:any = [];
    total:number;
    idPedido:number;
    ocupada: number;
    idMesa:number;
    result:number;
    totalView:number;

    descuentoData:number=0;

    renderingMesas:boolean= false

  constructor(
    private _mesaService:MesaService,
    private _auditoria:AuditoriaService
  ) { }

  
  ngOnInit(): void {
    this.renderMesas()
    
    setInterval(()=>{

      this.renderingMesas=true
      this._mesaService.getMesas().subscribe(res=>{
        this.mesas = JSON.parse(JSON.stringify(res).toLowerCase());

      },e=>{

      })

      this.renderingMesas=false

    },600000)

  }

  VerPedido(mesa){

    if(mesa.ocupada ==1){
      loaderSet(true);
      this._mesaService.getPedidoMesa(mesa.id_mesa).subscribe(res=>{
      this.pedido= JSON.parse(JSON.stringify(res.pedido).toLowerCase());
      this.total = res.total;
      this.idPedido = res.pedidoID
      this.ocupada = mesa.ocupada
      this.idMesa = mesa.id_mesa
      
      this._auditoria.auditoria('ObtenerPedidosMesa','Se solicitaron los pedidos de la mesa => '+mesa.id_mes).subscribe(res=>{});
      
      this.totalView = this.total
      loaderSet(false);

    },e=>{
      loaderSet(false);
    })

    
    }else{
      this.pedido = [];
      this.total = 0;
      this.totalView = this.total;
      this.idPedido= null;
      this.ocupada = 0

    }

    

  }

  cerrarMesa(ID){
    loaderSet(true)
      ID = parseInt(ID,10);
    this._mesaService.cerrarMesa({idmesa:ID,descuento:this.descuentoData}).subscribe(res=>{
      loaderSet(false)
      alerta('OK',res.msj)
      this._auditoria.auditoria('CerrarMesa','Se solicto el cierre de la mesa => '+ID).subscribe(res=>{});

      this.renderMesas()
      this.ocupada = 0;

    },e=>{
      loaderSet(false)
      alerta('ERROR',e)
    })
}

calcularDescuento(){
  if(this.descuentoData>0){

   this.totalView =  this.total- (this.total*this.descuentoData/100);
  }else{
      this.totalView = this.total;
  }



  
}

renderMesas(){
  loaderSet(true);
      this._mesaService.getMesas().subscribe(res=>{
        this.mesas = JSON.parse(JSON.stringify(res).toLowerCase());
        this._auditoria.auditoria('ObtenerMesas','Se solicito la lista de mesas.').subscribe(res=>{});

        loaderSet(false);

      },e=>{
        loaderSet(false);

      })
      loaderSet(false);

}


}
