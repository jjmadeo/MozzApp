import { Component, Input, OnInit  } from '@angular/core';
import { Router } from '@angular/router';
import { alerta } from '../complementos/loadModify';
import { AuthService } from "../servicios/auth.service";

@Component({
  selector: 'app-menu-small',
  templateUrl: './menu-small.component.html',
  styleUrls: ['./menu-small.component.css']
})
export class MenuSmallComponent implements OnInit {
  @Input("items")menuOptions: any[];
  @Input("user") userLogued:any;

  elements:any[];

  constructor(
    private router:Router,
    private _auhtService:AuthService
  ) {
    

   }

    

  ngOnInit(): void {    

  this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }
  ngOnChanges(){
    this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }


 

recargarMenu(array,user){
 return  array.filter(item=>item.role.toUpperCase() === (user?.rol.toUpperCase() === null || user?.rol.toUpperCase() === undefined?"":user?.rol.toUpperCase() ) ||  item.role.toUpperCase() ==='*' )


}

logout(){
  this._auhtService.logOut().subscribe(res =>{
    localStorage.removeItem("sesion")
    this.router.navigate(['/home']);
  },e=>{
    console.log(e);
    alerta('ERROR','No se ah podido cerrar Sesion');
  });
  
  
}

  goTo(element) {
    const link = [element.path];
    this.router.navigate(link);
    document.querySelector("#navbarCollapse").classList.remove("show");
     
       
}

}
