import { Component, Input, OnChanges, OnInit } from '@angular/core';
import { Router } from '@angular/router';

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
    private router:Router
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
 return  array.filter(item=>item.role.toUpperCase() === (user?.role.toUpperCase() === null || user?.role.toUpperCase() === undefined?"":user?.role.toUpperCase() ) ||  item.role.toUpperCase() ==='*' )


}

logout(){
  localStorage.removeItem("sesion")
  this.router.navigate(['/home']);

}


}
