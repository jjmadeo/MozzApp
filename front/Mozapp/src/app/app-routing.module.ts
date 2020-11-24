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
import { MozoPedidosComponent } from './moz/aplicacion/mozo-pedidos/mozo-pedidos.component';
import { MozoNuevoPedidoComponent } from './moz/aplicacion/mozo-nuevo-pedido/mozo-nuevo-pedido.component';
import { CajeroCartaComponent } from './moz/aplicacion/cajero-carta/cajero-carta.component';
import { CajeroAdministracionComponent } from './moz/aplicacion/cajero-administracion/cajero-administracion.component';
import { AuthAdminGuard } from './moz/complementos/guards/auth-admin.guard';


const routes: Routes = [
    {path:'',component:HomeComponent},
    {path:'califica',component:ContactoComponent},
    {path:'nosotros',component:NosotrosComponent},
    {path:'comer',component:ComamosComponent},
    {path:'ingresar',component:IniciarSesionComponent},

    {path:'app/adm',component:AdminHomeComponent,canActivate:[AuthAdminGuard]},
    {path:'app/mozo',component:MozoHomeComponent,canActivate:[AuthAdminGuard]},
    {path:'app/cajero',component:CajeroHomeComponent,canActivate:[AuthAdminGuard]},
    {path:'app/cajero/carta',component:CajeroCartaComponent,canActivate:[AuthAdminGuard]},
    {path:'app/cajero/administracion',component:CajeroAdministracionComponent,canActivate:[AuthAdminGuard]},



    
    {path:'app/adm/personas',component:AdmPersonasComponent,canActivate:[AuthAdminGuard]},
    {path:'app/adm/auditoria',component:AdmAuditoriaComponent,canActivate:[AuthAdminGuard]},

    {path:'app/mozo/pedido',component:MozoNuevoPedidoComponent,canActivate:[AuthAdminGuard]},
    
    {path:'comer/altamesa/:id',component:AltaMesaComponent,canActivate:[AuthAdminGuard]},


    {path:'**',component:HomeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
