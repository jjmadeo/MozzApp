import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-abm-carta',
  templateUrl: './abm-carta.component.html',
  styleUrls: ['./abm-carta.component.css']
})
export class AbmCartaComponent implements OnInit {

  viewCarta:boolean =false;
  viewBanner:boolean =false;


  nombreData:string;
  descripccionData:string;
  precioData:string;

  nombreBannerData:string;
  descripccionBannerData:string;
  precioBannerData:string;


  constructor() { }

  ngOnInit(): void {
  }

  vistaCarta(){

    if(this.viewCarta){
      this.viewCarta=false
    }
    else{
      this.viewCarta=true

    }

  }
  vistaBanner(){
    if(this.viewBanner){
      this.viewBanner=false
    }
    else{
      this.viewBanner=true

    }
  }

}
