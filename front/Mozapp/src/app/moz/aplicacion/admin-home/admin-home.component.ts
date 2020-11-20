import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";
import { loaderSet } from "../../complementos/loadModify";

@Component({
  selector: 'app-admin-home',
  templateUrl: './admin-home.component.html',
  styleUrls: ['./admin-home.component.css']
})
export class AdminHomeComponent implements OnInit {
  listaUser:any[];

  constructor(
    private _personaServices:PersonaService
  ) { }

  ngOnInit(): void {

    loaderSet(true);

this._personaServices.getEMPL().subscribe(res=>{
  
  this.listaUser=res;
  console.log(this.listaUser)
    loaderSet(false);

},err=>{
  console.log(err)
  loaderSet(false);
}
)

    


    




  }

}
