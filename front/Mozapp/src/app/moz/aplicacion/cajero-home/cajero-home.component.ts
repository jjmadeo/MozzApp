import { Component, OnInit } from '@angular/core';
import { MesaService } from "../../servicios/mesa.service";
import { loaderSet } from "../../complementos/loadModify";
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

  constructor(
    private _mesaService:MesaService
  ) { }

  
  ngOnInit(): void {
      loaderSet(true);
      this._mesaService.getMesas().subscribe(res=>{
        this.mesas = JSON.parse(JSON.stringify(res).toLowerCase());
        console.log(this.mesas);
        loaderSet(false);

      },e=>{
        loaderSet(false);

      })
  }

  VerPedido(mesa){

    if(mesa.ocupada ==1){
      loaderSet(true);
      this._mesaService.getPedidoMesa(mesa.id_mesa).subscribe(res=>{
      this.pedido= JSON.parse(JSON.stringify(res.pedido).toLowerCase());
      this.total = res.total;
      this.idPedido = res.pedidoID
      this.ocupada = mesa.ocupada
      
      console.log(this.pedido)
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
    console.log("voy a cerrar el pedido =>",ID)
  }

}
