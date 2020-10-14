import { Component, OnInit, DoCheck } from '@angular/core';

@Component({
  selector: 'app-loader',
  templateUrl: './loader.component.html',
  styleUrls: ['./loader.component.css']
})
export class LoaderComponent implements OnInit , DoCheck {

  public loading:boolean;

  constructor() { 
    
  }

  ngOnInit() {
    localStorage.setItem('loader','{"load":false}');

  }

  ngDoCheck(){

    this.loading = JSON.parse(localStorage.getItem('loader')).load;



  }

}
