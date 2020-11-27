import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';
import { url } from './apiConfig';

@Injectable({
  providedIn: 'root'
})
export class CartaService {

  constructor(private _http:HttpClient) { }

  getCarta():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token','noRequireToken');

    return this._http.get(url+"/carta",{headers: headers})
  }
  addCarta(obj):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token',JSON.parse(localStorage.getItem("sesion")).token);

    return this._http.post(url+"/altacarta",obj,{headers: headers})
  }
  getCategorias():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token','noRequireToken');

    return this._http.get(url+"/cartacategorias",{headers: headers})
  }
  actualizarItemCarta(id,obj):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token',JSON.parse(localStorage.getItem("sesion")).token);

    return this._http.put(url+"/carta/"+id,obj,{headers: headers})

}

eliminarItemCarta(id):Observable<any>{
  let headers = new HttpHeaders().set('Content-Type','application/json')
  .set('token',JSON.parse(localStorage.getItem("sesion")).token);

  return this._http.delete(url+"/carta/"+id,{headers: headers})

}


}