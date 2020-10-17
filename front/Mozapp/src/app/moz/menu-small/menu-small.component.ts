import { Component, Input, OnInit  } from '@angular/core';
import { Router } from '@angular/router';

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
    private router:Router
  ) {
    

   }

    

  ngOnInit(): void {    

  this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }
  ngOnChanges(){
    this.elements = this.recargarMenu(this.menuOptions,this.userLogued)

  }


 

recargarMenu(array,user){
 return  array.filter(item=>item.role.toUpperCase() === (user?.role.toUpperCase() === null || user?.role.toUpperCase() === undefined?"":user?.role.toUpperCase() ) ||  item.role.toUpperCase() ==='*' )


}

logout(){
  localStorage.removeItem("sesion")
  this.router.navigate(['/home']);
}

  goTo(element) {
    const link = [element.path];
    this.router.navigate(link);
    document.querySelector("#navbarCollapse").classList.remove("show");
     
       
}

}
