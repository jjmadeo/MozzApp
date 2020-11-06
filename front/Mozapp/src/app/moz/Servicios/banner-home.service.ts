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
    
  // getCarrusel():Observable<any>{
  //   let headers = new HttpHeaders().set('Content-Type','application/json');
  //   return this._http.get("http://localhost:81/TPLab/api/carrusel",{headers: headers})
  // }


    getCarrusel():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json');

      return this._http.get("http://localhost:81/TPLab/api/carrusel",{headers: headers})
    }


}

