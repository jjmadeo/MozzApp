import { Component, OnInit } from '@angular/core';
import { MesaService } from "../../servicios/mesa.service";

@Component({
  selector: 'app-mozo-home',
  templateUrl: './mozo-home.component.html',
  styleUrls: ['./mozo-home.component.css']
})
export class MozoHomeComponent implements OnInit {
  mesas: any[];
  mozo: any=JSON.parse(localStorage.getItem("sesion")).nombre//localStorage())
  fecha: Date = new Date();
  
  constructor(
    private _mesaService: MesaService
  ){ }

  ngOnInit(): void {
    this.mesas = [
      {numero:1,estado:1,mozo:"Salvador", alerta:{tipo:1,cantidad:2}},
      {numero:2,estado:0,mozo:"Salvador", alerta:{tipo:0,cantidad:0}},
      {numero:3,estado:1,mozo:"Salvador", alerta:{tipo:0,cantidad:1}},
      {numero:4,estado:2,mozo:"Salvador", alerta:{tipo:2,cantidad:3}},
      {numero:5,estado:2,mozo:"Salvador", alerta:{tipo:1,cantidad:1}},
      {numero:6,estado:1,mozo:"Salvador", alerta:{tipo:1,cantidad:2}},
      {numero:7,estado:0,mozo:"Salvador", alerta:{tipo:0,cantidad:0}},
      {numero:8,estado:1,mozo:"Salvador", alerta:{tipo:0,cantidad:1}},
      {numero:9,estado:2,mozo:"Salvador", alerta:{tipo:2,cantidad:3}},
      {numero:10,estado:2,mozo:"Salvador", alerta:{tipo:1,cantidad:0}},
      {numero:11,estado:1,mozo:"Salvador", alerta:{tipo:1,cantidad:2}},
      {numero:12,estado:0,mozo:"Salvador", alerta:{tipo:0,cantidad:0}},
      {numero:13,estado:1,mozo:"Salvador", alerta:{tipo:0,cantidad:1}},
      {numero:14,estado:2,mozo:"Salvador", alerta:{tipo:2,cantidad:3}},
      {numero:15,estado:2,mozo:"Salvador", alerta:{tipo:1,cantidad:1}}
    ];

    this._mesaService.getmesasEmpleado(9).subscribe(res=>{
      console.log(res);
    },e=>{
      console.log(e);
    })
  }
}
