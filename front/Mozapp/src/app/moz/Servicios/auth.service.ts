import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor() { }

  userIsLogued(){

    return localStorage.getItem("sesion") !== null && localStorage.getItem("sesion") !== undefined ? JSON.parse(localStorage.getItem("sesion")) : null;
    
    }


  getRoleUser():string{

    return 'MOZO';
  }


  // login():Observable<any>{

  // }

  logOut(){

    localStorage.clear();

  }


}



