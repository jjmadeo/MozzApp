import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(  private _http:HttpClient    ) { }

  userIsLogued(){

    return localStorage.getItem("sesion") !== null && localStorage.getItem("sesion") !== undefined ? JSON.parse(localStorage.getItem("sesion")) : null;
    
    }


  getRoleUser():string{

    return 'MOZO';
  }


  login(body):Observable<any>{
     let headers = new HttpHeaders().set('Content-Type','application/json');
      return this._http.post("http://localhost:81/TPLab/api/login",body,{headers: headers})
    

  }

  logOut(){

    localStorage.clear();

  }


}



