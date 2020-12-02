import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { alerta, loaderSet } from '../complementos/loadModify';
import {MesaService} from '../servicios/mesa.service';


@Component({
  selector: 'app-comamos',
  templateUrl: './comamos.component.html',
  styleUrls: ['./comamos.component.css']
})
export class ComamosComponent implements OnInit {
  nmesaData:number;
  nombreData:String

  logginError:boolean = false;
  logginErrorText:String;

  constructor(
    private _route:Router,
    private _mesaService:MesaService

  ) { }

  ngOnInit(): void {
    if(localStorage.getItem("mesa") !== null){
      this._route.navigate([`comer/altamesa/${localStorage.getItem("mesa")}`]);

    }
  }


validarMesa(){

  loaderSet(true);
  this._mesaService.getMesaID(this.nmesaData).subscribe(res=>{
    if(res.length!=0){
    //console.log(res);
    res = JSON.stringify(res[0]).toLowerCase()
    res  = JSON.parse(res);
      if(res.habilitada === "1" && res.ocupada === "0"){
        this._route.navigate([`comer/altamesa/${this.nmesaData}`]);
        localStorage.setItem("mesa",`${this.nmesaData}`);
      }else{
        this.logginError = true;
        this.logginErrorText="Mesa Ocupada o inhabilitada"
      }
    }else{
      
      alerta('ERROR','MESA INVALIDA O OCUPADA')
    }
   


    loaderSet(false);


  },e=>{
    loaderSet(false);


  })




}



}
