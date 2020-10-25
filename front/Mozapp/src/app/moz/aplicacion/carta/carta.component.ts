import { Component, OnInit, Output, EventEmitter, Input } from '@angular/core';

@Component({
  selector: 'app-carta',
  templateUrl: './carta.component.html',
  styleUrls: ['./carta.component.css']
})
export class CartaComponent implements OnInit {
  carta:any[]
  cartaFiller:any[]

  @Output() itemCartaAdd:any = new EventEmitter ();
  @Output() itemCartaRem:any = new EventEmitter ();

  @Input('vista') vista:string ='TABLE'


  inputBuscar:String;

  constructor() { }

  ngOnInit(): void {
    this.carta =[
      {id:1,nombre:"milanesas",precio:356.99},
      {id:2,nombre:"papas fritas",precio:356.99},
      {id:3,nombre:"huvos",precio:356.99},
      {id:4,nombre:"caldo",precio:356.99},
      {id:5,nombre:"arrozz",precio:356.99},
      {id:6,nombre:"hamburguesa",precio:356.99},
      {id:7,nombre:"pato",precio:356.99},
      {id:8,nombre:"cone",precio:356.99},
      {id:9,nombre:"milanga",precio:356.99},
      {id:10,nombre:"puchero",precio:356.99},
      {id:11,nombre:"hamburguesa",precio:356.99},
      {id:12,nombre:"pato",precio:356.99},
      {id:13,nombre:"cone",precio:356.99},
      {id:14,nombre:"milanga",precio:356.99},
      {id:15,nombre:"puchero",precio:356.99}

    ]

    this.cartaFiller = this.carta;
  }

  emitirAdd(item){
    this.itemCartaAdd.emit(item);

  }

  emitirDelete(item){
    this.itemCartaRem.emit(item);

  }

  buscarArray(){
    console.log("ejecute Change Buscar Array")

    this.cartaFiller  =  this.carta.filter(item=>{
      return item.nombre.toLowerCase().includes(this.inputBuscar.toLowerCase()) || item.id ==this.inputBuscar.toLowerCase();
  })

  }

}
