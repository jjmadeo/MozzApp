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
    this.mesas = [];

    this._mesaService.getmesasEmpleado(9).subscribe(res=>{      
      this.mesas=JSON.parse(JSON.stringify(res).toLowerCase());
      console.log(this.mesas);
    },e=>{
      console.log(e);
    })
  }
}
