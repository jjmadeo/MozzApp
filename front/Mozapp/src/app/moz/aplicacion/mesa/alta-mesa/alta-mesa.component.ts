import { Component, DoCheck, Input, OnInit } from '@angular/core';
import { ActivatedRoute ,Router } from "@angular/router";
import { loaderSet } from 'src/app/moz/complementos/loadModify';
import { MesaService } from "../../../servicios/mesa.service";
import { NotificacionService } from "../../../servicios/notificacion.service";




@Component({
  selector: 'app-alta-mesa',
  templateUrl: './alta-mesa.component.html',
  styleUrls: ['./alta-mesa.component.css']
})
export class AltaMesaComponent implements OnInit,DoCheck {
  @Input('invocado') invocado:string ='ROUTER';
  nmesa:string;
  nombre:String;
  mozoDelayButtom:boolean;
  pedidoList:any[];
  cantidadPedidosList:number =0;
  pedidoEnviado:boolean =false;
  validarLista:boolean;
  msjPedidoBTN:string;
  total:number=0;
  nPedido:number;
  cuentaDelayButtom:boolean;


  mesaRequestJSON:any ={
    mesaID:null,
    pedido:{
        pedidoTotal:null,
        pedidoList:[]
    }
  }
  constructor(
    private _mesaService:MesaService,
    private _notificacionService:NotificacionService,
    private _route:ActivatedRoute,
    private _routeNavigate:Router,

  ) { }

  ngDoCheck(): void {  
    this.pedidoEnviado = localStorage.getItem("pedidoEnviado") !=null &&  localStorage.getItem("pedidoEnviado") === 'true'? true:false
    this.msjPedidoBTN = this.pedidoEnviado?"Pedido Enviado":"Enviar pedido";
    this.validarLista = (this.pedidoList.length > 0)
    this.cantidadPedidosList=0
    this.total = 0;
    


    this.pedidoList.forEach(element => {
      
      this.cantidadPedidosList = this.cantidadPedidosList + element.cantidad;
      this.total=this.total + (element.elemento.precio * element.cantidad)

      
    });

    
  }

  ngOnInit(): void {
    this.nmesa = this._route.snapshot.paramMap.get('id');
    // this.nombre = this._route.snapshot.paramMap.get('name');

    
    if((localStorage.getItem("mesa") !== null )){
      this._routeNavigate.navigate(["comer/altamesa/"+localStorage.getItem("mesa")]);      

    }else{

        loaderSet(true);
        this._mesaService.getMesaID(this.nmesa).subscribe(res=>{
        res = JSON.stringify(res[0]).toLowerCase()
        res  = JSON.parse(res);
        if(res.habilitada === "1" && res.ocupada === "0"){      
          localStorage.setItem("mesa",`${this.nmesa}`);
        }else{
          this._routeNavigate.navigate(["/"]);
        }
            loaderSet(false);
      },e=>{
        loaderSet(false);
        })
    }
  
    console.log(this._route.snapshot.paramMap.get('id')+"-"+this._route.snapshot.paramMap.get('name'))

    
      this.pedidoList = []

  }
  pedirAsistencia(){
    loaderSet(true);
    this._notificacionService.altaNotificacion({idPedido:this.nPedido,tipo:1}).subscribe(res=>{
        console.log(res)


      loaderSet(false);
      setTimeout(()=>{
        this.mozoDelayButtom=true;
      },600000)
    },e=>{

      loaderSet(false);
    })
    


    

  }

  remList(e){
    let index = this.pedidoList.findIndex(item => item.elemento === e)
      if(index>=0){

        if(this.pedidoList[index].cantidad >1){
          this.pedidoList[index].cantidad--; 
        }else{
                  this.pedidoList.splice(this.pedidoList.findIndex(item => item.elemento === e),1)

        }
      }


  }

  addList(e){

    if(this.pedidoList.find(item => item.elemento === e)===undefined ||this.pedidoList.find(item => item.elemento === e)===null ){
      this.pedidoList.push({elemento:e,cantidad:1});
    }else{
     
      this.pedidoList[this.pedidoList.findIndex(item => item.elemento === e)].cantidad++

    }   


  }
  eliminarDePedidoList(itemForm){

    // debugger

    let index = this.pedidoList.findIndex(item => item === itemForm)
      if(index>=0){

        if(this.pedidoList[index].cantidad >1){
          this.pedidoList[index].cantidad--; 
        }else{
          this.pedidoList.splice(this.pedidoList.findIndex(item => item === itemForm),1)

        }
      }


  }

  enviarPedido(){
    console.log(this.pedidoList)
    this.mesaRequestJSON.mesaID = this.nmesa;
    this.mesaRequestJSON.pedido.pedidoTotal = this.total;
    let arrAux=[];
    

    this.pedidoList.forEach(element => {


      arrAux.push({id:element.elemento.id,cantidad:element.cantidad,observacion:''})
    });

    this.mesaRequestJSON.pedido.pedidoList =arrAux;


    loaderSet(true);
    this._mesaService.postAltaPedidoMesa(this.mesaRequestJSON).subscribe(res=>{
      //this.pedidoEnviado =  true;
      this.mozoDelayButtom=true;
      this.cuentaDelayButtom = true
      console.log(res)
      this.nPedido = res.nPedido
      localStorage.setItem("pedidoEnviado",'true');


      loaderSet(false)
    },e=>{
      console.log(e);

      loaderSet(false)
    })






  }


  solicitaCierre(){
    loaderSet(true);
    this._notificacionService.altaNotificacion({idPedido:this.nPedido,tipo:2}).subscribe(res=>{
        console.log(res)
      loaderSet(false);
      setTimeout(()=>{
        this.mozoDelayButtom=true;
        this.cuentaDelayButtom=true;

      },600000)
    },e=>{

      loaderSet(false);
    })
        
  }

}
