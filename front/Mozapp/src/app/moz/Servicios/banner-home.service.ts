import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';
import {url} from './apiConfig';

@Injectable({
  providedIn: 'root'
})
export class BannerHomeService {

  constructor( 
    private _http:HttpClient
    
  ){ }
    
    getCarrusel():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token','noRequireToken');
      return this._http.get(url+"/carrusel",{headers: headers})
    }

    añadirCarrusel(obj):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);

      return this._http.post(url+"/carrusel",obj,{headers: headers})
    }

    eliminarItemCarrusel(id):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);

      return this._http.delete(url+"/carrusel/"+id,{headers: headers})
    }


}

