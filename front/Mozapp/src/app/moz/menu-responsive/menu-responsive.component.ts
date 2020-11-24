import { Component, Input, OnChanges, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { alerta } from '../complementos/loadModify';
import { AuditoriaService } from '../servicios/auditoria.service';
import { AuthService } from "../servicios/auth.service";


@Component({
  selector: 'app-menu-responsive',
  templateUrl: './menu-responsive.component.html',
  styleUrls: ['./menu-responsive.component.css']
})
export class MenuResponsiveComponent implements OnInit , OnChanges {
  @Input("items")menuOptions: any[];
  @Input("user") userLogued:any;

  elements:any[];

  constructor(
    private router:Router,
    private _auhtService:AuthService,
    private _auditoria:AuditoriaService


  ) {
    

   }

    

  ngOnInit(): void {    

  this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }
  ngOnChanges(){
    this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }


  goTo(element) {
    const link = [element.path];
    this.router.navigate(link);
}

recargarMenu(array,user){
 return  array.filter(item=>item.role.toUpperCase() === (user?.rol.toUpperCase() === null || user?.rol.toUpperCase() === undefined?"":user?.rol.toUpperCase() ) ||  item.role.toUpperCase() ==='*' )
 return  array.filter(item=>item.role.toUpperCase() === (user?.rol.toUpperCase() === null || user?.rol.toUpperCase() === undefined?"":user?.rol.toUpperCase() ) ||  item.role.toUpperCase() ==='*' )


}

logout(){
  this._auhtService.logOut().subscribe(res =>{
    this._auditoria.auditoria('Cerrar Sesion','Se ah solicitado el cierre de session.').subscribe(res=>{});
    localStorage.removeItem("sesion")
    this.router.navigate(['/home']);
  },e=>{
    console.log(e);
    alerta('ERROR','No se ah podido cerrar Sesion');
  });
  
  
}

}
