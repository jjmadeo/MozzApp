import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './moz/menu/menu.component';
import { HomeComponent } from './moz/home/home.component';
import { ContactoComponent } from './moz/contacto/contacto.component';
import { NosotrosComponent } from './moz/nosotros/nosotros.component';
import { LoaderComponent } from './moz/complementos/loader/loader.component';
import { InfoHeaderComponent } from './moz/complementos/info-header/info-header.component';
import { IniciarSesionComponent } from './moz/iniciar-sesion/iniciar-sesion.component';
import { FormsModule } from '@angular/forms';
import { MenuSmallComponent } from './moz/menu-small/menu-small.component';
import { MenuResponsiveComponent } from './moz/menu-responsive/menu-responsive.component';
import { InfoFooterComponent } from './moz/complementos/info-footer/info-footer.component';
import { AdminHomeComponent } from './moz/aplicacion/admin-home/admin-home.component';
import { MozoHomeComponent } from './moz/aplicacion/mozo-home/mozo-home.component';
import { CajeroHomeComponent } from './moz/aplicacion/cajero-home/cajero-home.component';
import { MesaComponent } from './moz/aplicacion/mesa/mesa/mesa.component';
import { AltaMesaComponent } from './moz/aplicacion/mesa/alta-mesa/alta-mesa.component';
import { ComamosComponent } from './moz/comamos/comamos.component';
import { AdmAuditoriaComponent } from './moz/aplicacion/adm-auditoria/adm-auditoria.component';
import { AdmPersonasComponent } from './moz/aplicacion/adm-personas/adm-personas.component';
import { MozoPedidosComponent } from './moz/aplicacion/mozo-pedidos/mozo-pedidos.component';
import { MozoNuevoPedidoComponent } from './moz/aplicacion/mozo-nuevo-pedido/mozo-nuevo-pedido.component';
import { CartaComponent } from './moz/aplicacion/carta/carta.component';
import { AbmCartaComponent } from './moz/aplicacion/carta/abm-carta/abm-carta.component';
import { CajeroCartaComponent } from './moz/aplicacion/cajero-carta/cajero-carta.component';
// import { CajeroPedidosComponent } from './moz/aplicacion/cajero-pedidos/cajero-pedidos.component';
import { AlertZoneComponent } from './moz/complementos/alert-zone/alert-zone.component';
import { ShareService } from './moz/complementos/shereservice/share.service';
import { CajeroAdministracionComponent } from './moz/aplicacion/cajero-administracion/cajero-administracion.component';
import { NgSelect2Module } from 'ng-select2';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    HomeComponent,
    ContactoComponent,
    NosotrosComponent,
    LoaderComponent,
    InfoHeaderComponent,
    IniciarSesionComponent,
    MenuSmallComponent,
    MenuResponsiveComponent,
    InfoFooterComponent,
    AdminHomeComponent,
    MozoHomeComponent,
    CajeroHomeComponent,
    MesaComponent,
    AltaMesaComponent,
    ComamosComponent,
    AdmAuditoriaComponent,
    AdmPersonasComponent,
    MozoPedidosComponent,
    MozoNuevoPedidoComponent,
    CartaComponent,
    AbmCartaComponent,
    CajeroCartaComponent,
    // CajeroPedidosComponent,
    AlertZoneComponent,
    CajeroAdministracionComponent,
    
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    NgSelect2Module
  ],
  providers: [ShareService],
  bootstrap: [AppComponent]
})
export class AppModule { }
