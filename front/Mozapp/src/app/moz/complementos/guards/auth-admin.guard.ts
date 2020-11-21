import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree,Router } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService  } from "../../servicios/auth.service";



@Injectable({
  providedIn: 'root'
})
export class AuthAdminGuard implements CanActivate {

  constructor(private _authService:AuthService,
    private _router:Router) {
  
  }

  canActivate(route: ActivatedRouteSnapshot,state: RouterStateSnapshot): boolean{
    
    let rol = this._authService.userIsLogued()?.rol?this._authService.userIsLogued().rol:null
    let routerRole = state.url.split("/")[2];

    if(rol==null && routerRole !=='altamesa'){
      this._router.navigate(["/ingresar"]);
      return false;
    }


    switch (routerRole) {
        case 'cajero':
          if(rol !== null && rol === 'cajero' && state.url.includes('cajero') ){
            return true;
          }else{
            this._router.navigate(["/home"]);
            return false;
          }

        break;
        case 'adm':
          if(rol !== null && rol === 'adm' && state.url.includes('adm') ){
            return true;
          }else{
            this._router.navigate(["/home"]);
            return false;
          }

        break;
        case 'mozo':
          if(rol !== null && rol === 'mozo' && state.url.includes('mozo') ){
            return true;
          }else{
            this._router.navigate(["/home"]);
            return false;
          }

        break;
        case 'altamesa':

          if(rol !== null && state.url.includes('altamesa') ){
            this._router.navigate(["/home"]);
            return false;
          }
          if(rol === null && state.url.includes('altamesa') ){
            return true;
          }

        break;
    
      default:
        
        this._router.navigate(["/ingresar"]);
        return false;
        break;
    }

 
    

   



    console.log(state.url)
    console.log(rol)

    
    return false;
  }
  
}
