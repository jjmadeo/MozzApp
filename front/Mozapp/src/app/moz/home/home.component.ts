import { Component, OnInit } from '@angular/core';
import { BannerHomeService } from "../servicios/banner-home.service";
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  elementsCarruselle: any[];
  constructor(
   private _getCarruserlService:BannerHomeService
  ) { }
  

  ngOnInit(): void {
       
      this._getCarruserlService.getCarrusel().subscribe(res=>{
      
        this.elementsCarruselle= res.carrusel

      },err=>{
        console.log(err)

      }
    )


  }

  

}
