import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ContactoComponent } from './moz/contacto/contacto.component';
import { HomeComponent } from './moz/home/home.component';
import { NosotrosComponent } from './moz/nosotros/nosotros.component';
import { IniciarSesionComponent } from "./moz/iniciar-sesion/iniciar-sesion.component";


const routes: Routes = [
    {path:'',component:HomeComponent},
    {path:'contacto',component:ContactoComponent},
    {path:'nosotros',component:NosotrosComponent},
    {path:'comer',component:ContactoComponent},
    {path:'ingresar',component:IniciarSesionComponent},
    {path:'**',component:HomeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
