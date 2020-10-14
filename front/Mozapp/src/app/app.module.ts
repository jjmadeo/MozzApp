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
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
