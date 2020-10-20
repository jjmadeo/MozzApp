import { Component, OnInit } from '@angular/core';
import {CartaService} from '../../Servicios/carta.service';

@Component({
  selector: 'app-mozo-nuevo-pedido',
  templateUrl: './mozo-nuevo-pedido.component.html',
  styleUrls: ['./mozo-nuevo-pedido.component.css']
})
export class MozoNuevoPedidoComponent implements OnInit {
  
  constructor(private _cartaService:CartaService) { }
  carta: any[];
  ngOnInit(): void {
      this._cartaService.getCARTA().subscribe(resp=>{
      this.carta= resp.carta;
      console.log(resp);
    },
    error=>{
      console.log("Error: "+error);
    })
  }
}