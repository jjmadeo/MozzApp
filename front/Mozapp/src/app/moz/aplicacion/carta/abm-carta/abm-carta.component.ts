import { Component, OnInit } from '@angular/core';
import { alerta, loaderSet } from 'src/app/moz/complementos/loadModify';
import { BannerHomeService } from "../../../servicios/banner-home.service";
import { CartaService } from "../../../servicios/carta.service";
import { ShareService } from 'src/app/moz/complementos/shereservice/share.service';
import { NgForm } from '@angular/forms';


@Component({
  selector: 'app-abm-carta',
  templateUrl: './abm-carta.component.html',
  styleUrls: ['./abm-carta.component.css']
})
export class AbmCartaComponent implements OnInit {

  viewCarta:boolean =false;
  viewBanner:boolean =false;

   carta:any[];

  nombreData:string;
  descripccionData:string;
  precioData:string;
  urlData:string;
  categoriaData:string;
  idCarta:number;


  nombreBannerData:string;
  descripccionBannerData:string;
  urlBannerData:string;
  swichCarta:boolean


  categorias:any[];


  constructor(private _banner:BannerHomeService,
    private _shereService:ShareService,
    private _cartaService:CartaService
    ) { }

  ngOnInit(): void {
       
    
    loaderSet(true)
    this._cartaService.getCategorias().subscribe(res=>{
      loaderSet(false)

      this.categorias = res;

    },e=>{
      loaderSet(false)

    })

    this._cartaService.getCarta().subscribe(res=>{
      loaderSet(false)

      this.carta = res;
      console.log(this.carta)

    },e=>{
      loaderSet(false)

    })




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

  grabarItemCarta(f:NgForm){

    if(!this.swichCarta){
      loaderSet(true)
      this._cartaService.addCarta({nombre:this.nombreData,url:this.urlData,descripccion:this.descripccionData,precio:this.precioData,categoria:this.categoriaData}).subscribe(res=>{
        console.log(res)
        alerta('OK',res)
        f.resetForm();
        loaderSet(false)
  
      },e=>{
        alerta('ERROR',e.error.text)
        loaderSet(false)
  
      })
    }else{


      loaderSet(true)
      this._cartaService.actualizarItemCarta(this.idCarta,{nombre:this.nombreData,url:this.urlData,descripccion:this.descripccionData,precio:this.precioData,categoria:this.categoriaData}).subscribe(res=>{
        console.log(res)
        alerta('OK',res)
        f.resetForm();
        loaderSet(false)
  
      },e=>{
        console.log(e)
        alerta('ERROR',e.error)

        loaderSet(false)
  
      })

    }

    

  }


  grabarCarrusel(f:NgForm){
    loaderSet(true)
    this._banner.añadirCarrusel({url:this.urlBannerData,titulo:this.nombreBannerData,descripcion:this.descripccionBannerData}).subscribe(res=>{
      console.log(res)
      alerta('OK','Curresel grabado')
      f.resetForm();
      loaderSet(false)

    },e=>{
      alerta('ERROR',e.error.text)
      loaderSet(false)

    })


  }

  rellenarFormUpdate(item){
    let arrAux 

      arrAux= this.carta.find(i=> item === i.id)


    this.nombreData =arrAux.NOMBRE;
    this.precioData=arrAux.PRECIO;
    this.urlData=arrAux.URLIMG;
    this.categoriaData=arrAux.id_categoria;
    this.idCarta=arrAux.id;

  }

  


}
