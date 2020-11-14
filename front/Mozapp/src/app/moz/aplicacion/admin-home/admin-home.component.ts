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
  //console.log(res)
  this.listaUser= [
    {usuario: res.empleados[0].usuario},
    {usuario: res.empleados[1].usuario},
    {usuario: res.empleados[2].usuario}

    ]

    loaderSet(false);

},err=>{
  console.log(err)
  loaderSet(false);
}
)

    


    




  }

}
