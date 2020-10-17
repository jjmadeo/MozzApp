import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ContactoComponent } from './moz/contacto/contacto.component';
import { HomeComponent } from './moz/home/home.component';
import { NosotrosComponent } from './moz/nosotros/nosotros.component';
import { IniciarSesionComponent } from "./moz/iniciar-sesion/iniciar-sesion.component";
import { AdminHomeComponent } from './moz/aplicacion/admin-home/admin-home.component';
import { MozoHomeComponent } from './moz/aplicacion/mozo-home/mozo-home.component';
import { CajeroHomeComponent } from './moz/aplicacion/cajero-home/cajero-home.component';
import { ComamosComponent } from './moz/comamos/comamos.component';
import { AltaMesaComponent } from './moz/aplicacion/mesa/alta-mesa/alta-mesa.component';


const routes: Routes = [
    {path:'',component:HomeComponent},
    {path:'contacto',component:ContactoComponent},
    {path:'nosotros',component:NosotrosComponent},
    {path:'comer',component:ComamosComponent},
    {path:'ingresar',component:IniciarSesionComponent},

    {path:'app/admin',component:AdminHomeComponent},
    {path:'app/mozo',component:MozoHomeComponent},
    {path:'app/cajero',component:CajeroHomeComponent},
    
    {path:'comer/altamesa/:id/:name',component:AltaMesaComponent},


    {path:'**',component:HomeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
