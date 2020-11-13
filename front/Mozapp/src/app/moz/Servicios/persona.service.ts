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
      let headers = new HttpHeaders().set('Content-Type','application/json');
      return this._http.get(url+"/empleados",{headers: headers})
    }




}
