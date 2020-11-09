import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
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
    let headers = new HttpHeaders().set('Content-Type','application/json');

    return this._http.post(url+"altaNotificacion",obj,{headers: headers})
  }
}
