import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  elementsCarruselle: any[];
  constructor() { }
  

  ngOnInit(): void {
    this.elementsCarruselle = [
      {url:"https://viajandoporjapon.com/wp-content/uploads/2013/07/8012757028_32b653bfc2_k-1000x300.jpg",titulo:"Sushi Johng",descripccion:"Maki Oriental, con finas hierbas", active:true},
      {url:"https://restaurantelbarralet.com/wp-content/uploads/2014/04/Amanida-amb-tonyina-1000x300.jpg",titulo:"Risoto Primavera",descripccion:"Aroz Shamani con vegetales salteados" , active:false},
      {url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6Wnyypuc6o4HOgyHfDSGjGWugnwrXQ7BOeA&usqp=CAU",titulo:"Pizza, Especial de la casa",descripccion:"Queso Azul, rucula aceitunas negras y jamon crudo.",  active:false},
      
      
  
    ];
  }

  

}
