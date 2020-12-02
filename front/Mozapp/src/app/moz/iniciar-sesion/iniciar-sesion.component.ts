import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/forms';
import { loaderSet } from '../complementos/loadModify';
import { PersonaService } from "../servicios/persona.service";
import { Router } from '@angular/router';
import { AuthService } from "../servicios/auth.service";
import { AuditoriaService } from '../servicios/auditoria.service';

@Component({
  selector: 'app-iniciar-sesion',
  templateUrl: './iniciar-sesion.component.html',
  styleUrls: ['./iniciar-sesion.component.css']
})
export class IniciarSesionComponent implements OnInit {

  logginError:boolean = false;
  logginErrorText:String;

  constructor(
    private _route:Router,
    private _personaService:PersonaService,
    private _authService:AuthService,
    private _auditoria:AuditoriaService



  ) { 

  }

  usuarioData:string;
  passwordData:string;
   users:any;

  enviar():void{
   // console.log(this.passwordData, this.usuarioData);
  }

  ngOnInit(): void {
  }

  onSubmit(f:NgForm){

  }


  login(){

    loaderSet(true);
    if(this.usuarioData.trim()!=='' && this.passwordData.trim()!==''){
      let user;
      this.logginError = false;
      this.logginErrorText='';

      this._authService.login(`{  "usuario":"${this.usuarioData}","clave":"${this.passwordData}"}`).subscribe(res=>{
        loaderSet(false);
        res = JSON.stringify(res).toLowerCase()
       res  = JSON.parse(res);

        localStorage.setItem("sesion",JSON.stringify(res[0]))
         this._route.navigate(['/app/'+res[0].rol.toLowerCase()]);

          this._auditoria.auditoria('Login','Inicio de sesion del usaurio.').subscribe(res=>{});
         


      },e=>{

        this.logginError = true;
        this.logginErrorText=e.error

        loaderSet(false);

      })
      





      // this._personaService.getEMPL().subscribe(res=>{
      //   console.log(res.empleados)
      //   this.users = res.empleados
      //   User = this.users.find(element => element.usuario === this.usuarioData && element.password === this.passwordData )
      //   console.log(User)
      //   if(User!== null && User!== undefined ){
      //     localStorage.setItem("sesion",JSON.stringify(User))
      //     this._route.navigate(['/app/'+User.role.toLowerCase()]);
      //   }else{
      //     console.log("Usuario o Contraseña incorrectos.")

      //   }

      //   loaderSet(false);

      // },err=>{
      //   console.log("erro al traer personas")
      //   loaderSet(false);
      // })

    }


  }

  buscarUser(usuario:String):any{

    

     //return users.find(element => element.usuario === usuario );


  }


  
}
