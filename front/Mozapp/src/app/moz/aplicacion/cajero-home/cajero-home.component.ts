import { Component, OnInit } from '@angular/core';
import { MesaService } from "../../servicios/mesa.service";
import { alerta, loaderSet } from "../../complementos/loadModify";
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

    renderingMesas:boolean= false

  constructor(
    private _mesaService:MesaService
  ) { }

  
  ngOnInit(): void {
    this.renderMesas()
    
    setInterval(()=>{

      this.renderingMesas=true
      this._mesaService.getMesas().subscribe(res=>{
        this.mesas = JSON.parse(JSON.stringify(res).toLowerCase());
        console.log(this.mesas);

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
      
      
      console.log(this.idPedido)
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

  cerrarMesa(ID){
    loaderSet(true)
    this._mesaService.cerrarMesa({idmesa:ID}).subscribe(res=>{
      loaderSet(false)
      alerta('OK',res.msj)
      console.log(res)
      this.renderMesas()

    },e=>{
      loaderSet(false)
      console.log(e)
      alerta('ERROR',e)
    })
}


renderMesas(){
  loaderSet(true);
      this._mesaService.getMesas().subscribe(res=>{
        this.mesas = JSON.parse(JSON.stringify(res).toLowerCase());
        console.log(this.mesas);
        loaderSet(false);

      },e=>{
        loaderSet(false);

      })
      loaderSet(false);

}


}
