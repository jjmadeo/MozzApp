import { Component, OnInit, Output, EventEmitter, Input } from '@angular/core';
import { CartaService } from "../../servicios/carta.service";

@Component({
  selector: 'app-carta',
  templateUrl: './carta.component.html',
  styleUrls: ['./carta.component.css']
})
export class CartaComponent implements OnInit {
  carta:any
  cartaFiller:any[]
  categorias:any[];
  inputCategoria:any



  @Output() itemCartaAdd:any = new EventEmitter ();
  @Output() itemCartaRem:any = new EventEmitter ();

  @Input('vista') vista:string ='TABLE'


  inputBuscar:String;

  constructor(private _cartaService:CartaService) { }

  ngOnInit(): void {

    this._cartaService.getCarta().subscribe(res=>{
       this.carta= JSON.parse(JSON.stringify(res).toLowerCase())
       this.cartaFiller = this.carta
       console.log(this.cartaFiller)
    },e=>{
      console.log(e);
    })

      this._cartaService.getCategorias().subscribe(res=>{
        console.log(res)
        this.categorias = res;
      },e=>{
        console.log(e)
      })

   
  }

  emitirAdd(item){
    this.itemCartaAdd.emit(item);

  }

  emitirDelete(item){
    this.itemCartaRem.emit(item);

  }

  buscarArray(){
    this.cartaFiller  =  this.carta.filter(item=>{
      return item.nombre.toLowerCase().includes(this.inputBuscar.toLowerCase()) || item.id ==this.inputBuscar.toLowerCase();
  })

  }
  buscarArrayCategoria(e){
    this.inputBuscar =''
    console.log(e)
    this.cartaFiller  =  this.carta.filter(item=>{
      if(e==='NA'){
        return item.id !=0
      }

      return item.id_categoria === e;
  })
  }


}
