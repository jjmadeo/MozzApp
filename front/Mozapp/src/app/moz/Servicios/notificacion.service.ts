import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders  } from "@angular/common/http";
import { Observable } from 'rxjs';
import { url } from './apiConfig';
@Injectable({
  providedIn: 'root'
})
export class NotificacionService {

  constructor( 
    private _http:HttpClient
    
  ){ }

  altaNotificacion(obj):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token','noRequireToken');


    return this._http.post(url+"altaNotificacion",obj,{headers: headers})
  }
  getNotiMesa(idMesa):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token',JSON.parse(localStorage.getItem("sesion")).token);
    return this._http.get(url+"notificacionMesa/"+idMesa,{headers: headers})
  }

  actulizarNotificacion(id):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .append('token',JSON.parse(localStorage.getItem("sesion")).token);
    


    return this._http.put(url+"notificacion/"+id,{},{headers: headers})
  }

}
