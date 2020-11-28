import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { url} from './apiConfig'

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
     let headers = new HttpHeaders().set('Content-Type','application/json').set('token','noRequireToken');
      return this._http.post(url+"login",body,{headers: headers})
     
    

  }

  logOut(){
    let headers = new HttpHeaders().set('Content-Type','application/json')
    .set('token','noRequireToken');
    return this._http.post(url+"cerrarSesion",{idUsua:JSON.parse(localStorage.getItem("sesion")).id},{headers: headers})

  }


}



