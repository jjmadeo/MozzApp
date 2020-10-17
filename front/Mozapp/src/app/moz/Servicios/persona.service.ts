import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PersonaService {

  constructor( 
    private _http:HttpClient
    
  ){ }
    

    getEMPL():Observable<any>{
      let headers = new HttpHeaders().set('Content-Type','application/json');
      return this._http.get("../../../assets/mock/getEmpl.json/",{headers: headers})
    }




}
