import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CartaService {

  constructor(private _http:HttpClient) { }

  getCARTA():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type','application/json');
    return this._http.get("../../../assets/mock/getCarta.json/",{headers: headers})
  }

}

