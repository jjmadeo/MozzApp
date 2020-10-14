import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-menu-small',
  templateUrl: './menu-small.component.html',
  styleUrls: ['./menu-small.component.css']
})
export class MenuSmallComponent implements OnInit {

  elements: any[];

  constructor(
    private router:Router
  ) {
    this.elements = [
      // {name:'MENU.INIT', path:'/itecban', icon:'ico_home_sm.png'},
      {name: 'Home', path: '/home', icon: '', counter: null},
      {name: 'Nosotros', path: '/nosotros', icon: '', counter: null},
      {name: 'Contacto', path: '/contacto', icon: '', counter: null},
      {name: 'Coma Aqui!', path: '/comer', icon: '', counter: null},
      {name: 'Trabajo Aqui!', path: '/ingresar', icon: '', counter: null}

    ];

   }

    

  ngOnInit(): void {    
  }



  goTo(element) {
    const link = [element.path];
    this.router.navigate(link);
    document.querySelector("#navbarCollapse").classList.remove("show");
     
       
}

}
