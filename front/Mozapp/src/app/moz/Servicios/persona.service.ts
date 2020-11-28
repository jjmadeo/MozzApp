import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';
import { url } from './apiConfig';

@Injectable({
  providedIn: 'root'
})
export class PersonaService {

  constructor( 
    private _http:HttpClient
    
  ){ }
    

    getEMPL():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json').set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.get(url+"/empleados",{headers: headers})
    }

    asignarMesa(idMesa,idEmpleado):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.put(url+"/asignarMesaEmpleado/"+idMesa,{id_empl:idEmpleado},{headers: headers})
    }

    altaEmpleado(empleado):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.post(url+"/empleado",empleado,{headers: headers})
    }

    actualizarEmpleado(id,obj):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.put(url+"/empleado/"+id,obj,{headers: headers})
    }
    bajaEmpleado(id):Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.delete(url+"/empleado/"+id,{headers: headers})
    }


    getROLES():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json')
      .set('token',JSON.parse(localStorage.getItem("sesion")).token);
      return this._http.get(url+"/roles",{headers: headers})
    }

}
