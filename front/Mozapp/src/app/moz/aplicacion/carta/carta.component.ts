import { Component, OnInit, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-carta',
  templateUrl: './carta.component.html',
  styleUrls: ['./carta.component.css']
})
export class CartaComponent implements OnInit {
  carta:any[]

  @Output() itemCartaAdd:any = new EventEmitter ();
  @Output() itemCartaRem:any = new EventEmitter ();


  constructor() { }

  ngOnInit(): void {
    this.carta =[
      {id:1,nombre:"milanesas",precio:356.99},
      {id:2,nombre:"milanesas",precio:356.99},
      {id:3,nombre:"milanesas",precio:356.99},
      {id:4,nombre:"milanesas",precio:356.99},
      {id:5,nombre:"milanesas",precio:356.99},
      {id:6,nombre:"milanesas",precio:356.99},
      {id:7,nombre:"milanesas",precio:356.99},
      {id:8,nombre:"milanesas",precio:356.99},
      {id:9,nombre:"milanesas",precio:356.99},
      {id:10,nombre:"milanesas",precio:356.99}

    ]
  }

  emitirAdd(item){
    this.itemCartaAdd.emit(item);

  }

  emitirDelete(item){
    this.itemCartaRem.emit(item);

  }

}
