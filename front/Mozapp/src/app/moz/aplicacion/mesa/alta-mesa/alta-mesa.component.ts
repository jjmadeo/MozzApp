import { Component, DoCheck, Input, OnInit } from '@angular/core';
import { ActivatedRoute } from "@angular/router";


@Component({
  selector: 'app-alta-mesa',
  templateUrl: './alta-mesa.component.html',
  styleUrls: ['./alta-mesa.component.css']
})
export class AltaMesaComponent implements OnInit,DoCheck {
  @Input('invocado') invocado:string ='ROUTER';
  nmesa:string;
  nombre:String;
  mozoDelayButtom:boolean = true;
  pedidoList:any[];
  cantidadPedidosList:number =0;
  pedidoEnviado:boolean =false;
  validarLista:boolean;
  msjPedidoBTN:string;
  total:number=0;
  constructor(
    private _route:ActivatedRoute
  ) { }

  ngDoCheck(): void {    
    this.msjPedidoBTN = this.pedidoEnviado?"Pedido Enviado":"Enviar pedido";
    this.validarLista = (this.pedidoList.length > 0)
    this.cantidadPedidosList=0
    this.total = 0;
    

    console.log("cambio!!! =>",this.total)

    this.pedidoList.forEach(element => {
      
      this.cantidadPedidosList = this.cantidadPedidosList + element.cantidad;
      this.total=this.total + (element.elemento.precio * element.cantidad)

      
    });

    
  }

  ngOnInit(): void {
    this.nmesa = this._route.snapshot.paramMap.get('id');
    // this.nombre = this._route.snapshot.paramMap.get('name');

    console.log(this._route.snapshot.paramMap.get('id')+"-"+this._route.snapshot.paramMap.get('name'))

    
      this.pedidoList = []

  }
  pedirAsistencia(){
    console.log("estoy llamando al mozo.")
    this.mozoDelayButtom = false;



    setTimeout(()=>{
      this.mozoDelayButtom=true;
    },30000)

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

    // si el pedido fue enviado y la peticion  http vulve ok   seteamos en true

    this.pedidoEnviado =  true;


  }
  solicitaCierre(){
    //Solicitar Cierre de cuenta.
    
  }

}
