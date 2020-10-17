import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";


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

    this.listaUser= [
      {nombre:"Pedro", usuario:"pDRoloco"},
      {nombre:"Juan", usuario:"JuanLo"},
      {nombre:"Jose", usuario:"Joselo"}

    ]

this._personaServices.getEMPL().subscribe(res=>{
  console.log(res)

},err=>{
  console.log(err)
}
)

    


    




  }

}
