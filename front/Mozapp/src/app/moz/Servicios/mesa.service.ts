import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';
import { url } from './apiConfig';


@Injectable({
  providedIn: 'root'
})
export class MesaService {

  constructor( 
    private _http:HttpClient
    
  ){ }
  getMesaID(id):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');

    return this._http.get(url+"/mesa/"+id,{headers: headers})
  }
  getMesas():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');

    return this._http.get(url+"/mesas",{headers: headers})
  }


  postAltaPedidoMesa(obj):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');

    return this._http.post(url+"AltaPedidoMesa",obj,{headers: headers})
  }

  getmesasEmpleado(id):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');
    return this._http.get(`${url}/mesasempleado/${id}`,{headers: headers})
  }

  getPedidoMesa(id):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');
    return this._http.get(`${url}/pedidomesa/${id}`,{headers: headers})
  }

}
