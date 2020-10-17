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
import { AdmPersonasComponent } from './moz/aplicacion/adm-personas/adm-personas.component';
import { AdmAuditoriaComponent } from './moz/aplicacion/adm-auditoria/adm-auditoria.component';


const routes: Routes = [
    {path:'',component:HomeComponent},
    {path:'contacto',component:ContactoComponent},
    {path:'nosotros',component:NosotrosComponent},
    {path:'comer',component:ComamosComponent},
    {path:'ingresar',component:IniciarSesionComponent},

    {path:'app/adm',component:AdminHomeComponent},
    {path:'app/mozo',component:MozoHomeComponent},
    {path:'app/cajero',component:CajeroHomeComponent},
    {path:'app/adm/personas',component:AdmPersonasComponent},
    {path:'app/adm/auditoria',component:AdmAuditoriaComponent},
    
    {path:'comer/altamesa/:id/:name',component:AltaMesaComponent},


    {path:'**',component:HomeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
