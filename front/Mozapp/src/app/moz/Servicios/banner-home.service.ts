import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BannerHomeService {

  constructor( 
    private _http:HttpClient
    
  ){ }
    



    getCarrusel():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json');

      return this._http.get("../../../assets/mock/getCarrusel.json/",{headers: headers})
    }


}

