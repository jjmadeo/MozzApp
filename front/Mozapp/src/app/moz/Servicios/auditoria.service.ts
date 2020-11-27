import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { url} from './apiConfig'

@Injectable({
  providedIn: 'root'
})
export class AuditoriaService {

  constructor( private _http:HttpClient   ) { }


  auditoria(operacionParam,logParam):Observable<any>{
    let body={
      idUser:parseInt(JSON.parse(localStorage.getItem("sesion")).id),
      idRol:parseInt(JSON.parse(localStorage.getItem("sesion")).roleid),
      operacion:operacionParam,
      log:logParam
  }

    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token',JSON.parse(localStorage.getItem("sesion")).token);
     return this._http.post(url+"auditoria",body,{headers: headers})
    
   

 }

 obtenerAuditoria():Observable<any>{ 

  let headers = new HttpHeaders().set('Content-Type','application/json')
  .set('token',JSON.parse(localStorage.getItem("sesion")).token);
   return this._http.get(url+"auditoria",{headers: headers})
}

}
