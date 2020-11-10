import { Component, OnInit } from '@angular/core';
import { loaderSet } from '../complementos/loadModify';
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
       
      loaderSet(true)
      this._getCarruserlService.getCarrusel().subscribe(res=>{
       
        this.elementsCarruselle= res
        console.log(this.elementsCarruselle)
        loaderSet(false)

      },err=>{
        console.log(err)
        loaderSet(false)


      }
    )
     
      


  }

  

}
