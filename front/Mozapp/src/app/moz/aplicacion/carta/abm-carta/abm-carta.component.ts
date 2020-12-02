import { Component, DoCheck, OnInit } from '@angular/core';
import { alerta, loaderSet } from 'src/app/moz/complementos/loadModify';
import { BannerHomeService } from "../../../servicios/banner-home.service";
import { CartaService } from "../../../servicios/carta.service";
import { ShareService } from 'src/app/moz/complementos/shereservice/share.service';
import { NgForm } from '@angular/forms';
import { AuditoriaService } from 'src/app/moz/servicios/auditoria.service';


@Component({
  selector: 'app-abm-carta',
  templateUrl: './abm-carta.component.html',
  styleUrls: ['./abm-carta.component.css']
})
export class AbmCartaComponent implements OnInit,DoCheck {

  viewCarta:boolean =false;
  viewBanner:boolean =false;

   carta:any[];
   carrusel:any[];

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
  swichBanner:boolean


  categorias:any[];

  idDelete:number;


  constructor(private _banner:BannerHomeService,
    private _shereService:ShareService,
    private _cartaService:CartaService,
    private _auditoria:AuditoriaService
    ) { }


    ngDoCheck():void {

      console.log("Cambie !!!")
    }
  ngOnInit(): void {
       
    
    loaderSet(true)
    this._cartaService.getCategorias().subscribe(res=>{
      loaderSet(false)

      this.categorias = res;

    },e=>{
      loaderSet(false)

    })
    
    this.renderBannerCarta();



  }
  

  vistaCarta(){

    
      this.viewCarta=true
      this.viewBanner=false

  }
  vistaBanner(){
    this.viewCarta=false
      this.viewBanner=true
  }

  grabarItemCarta(f:NgForm){

    if(!this.swichCarta){
      loaderSet(true)
      this._cartaService.addCarta({nombre:this.nombreData,url:this.urlData,descripccion:this.descripccionData,precio:this.precioData,categoria:this.categoriaData}).subscribe(res=>{
        console.log(res)
        alerta('OK',res)
        f.resetForm();
        this._auditoria.auditoria('AltaItemCarta','Se ah agregado un registro en la carta.').subscribe(res=>{});

        loaderSet(false)
        this.renderBannerCarta()

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
        this._auditoria.auditoria('ActualizarItemCarta','Se ah actualizado un registro en la carta.').subscribe(res=>{});

        loaderSet(false)
        this.renderBannerCarta()

  
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
      this._auditoria.auditoria('AñadirItemCarrusellPrincipal','Se ha agregado un registro en El Carrusel').subscribe(res=>{});
      this.renderBannerCarta()
      loaderSet(false)

    },e=>{
      alerta('ERROR',e.error.text)
      loaderSet(false)

    })


  }

  rellenarFormUpdateBanner(item){
    let arrAux
      arrAux= this.carrusel.find(i=> item === i.id)
      this.urlBannerData =arrAux.url;
      this.nombreBannerData=arrAux.titulo;
      this.descripccionBannerData=arrAux.descripccion;
      this.idDelete = arrAux.id  

  }

  rellenarFormUpdateCarta(item){
    let arrAux
    
      arrAux= this.carta.find(i=> item === i.id)
      this.nombreData =arrAux.NOMBRE;
      this.precioData=arrAux.PRECIO;
      this.urlData=arrAux.URLIMG;
      this.categoriaData=arrAux.id_categoria;
      this.idCarta=arrAux.id;
    
    

  }

  eliminarItemCarta(){
    loaderSet(true)

    this._cartaService.eliminarItemCarta(this.idCarta).subscribe(res =>{
      console.log(res)
      alerta('OK',res)
      this._auditoria.auditoria('EliminarItemCarta','Se ah Eliminado un registro de la carta.').subscribe(res=>{});
      loaderSet(false)
      this.renderBannerCarta();
    },e=>{
      loaderSet(false)
      console.log(e)
      alerta('OK',e.error.text)
    })
  


  }

  eliminarItemBanner(){
    loaderSet(true)

    this._banner.eliminarItemCarrusel(this.idDelete).subscribe(res =>{
      console.log(res)
      alerta('OK',res)
      this._auditoria.auditoria('EliminarItemCarrusel','Se ah Eliminado un registro del carrusel.').subscribe(res=>{});

      loaderSet(false)
      this.renderBannerCarta();
    },e=>{
      loaderSet(false)
      console.log(e)
      alerta('OK',e.error.text)
    })
  

  }

  renderBannerCarta(){
    loaderSet(true)

    this._cartaService.getCarta().subscribe(res=>{
      loaderSet(false)
      this._auditoria.auditoria('ObtenerCarta','Se ah solicitado la carta.').subscribe(res=>{});

      this.carta = res;
      console.log(this.carta)

    },e=>{
      loaderSet(false)

    })
    loaderSet(true)

    this._banner.getCarrusel().subscribe(res=>{
      loaderSet(false)
      this._auditoria.auditoria('ObtenerCarrusell','Se ah solicitado la carrusell.').subscribe(res=>{});

      this.carrusel = JSON.parse(JSON.stringify(res).toLowerCase())
      console.log(this.carrusel)

    },e=>{
      loaderSet(false)

    })
  }
  


}
