import { Component, OnInit } from '@angular/core';
import { PersonaService } from "../../servicios/persona.service";


@Component({
  selector: 'app-adm-personas',
  templateUrl: './adm-personas.component.html',
  styleUrls: ['./adm-personas.component.css']
})
export class AdmPersonasComponent implements OnInit {
  listaUsercombo:any[];
  usuarioData:string;
  nombreData:string;
  
  constructor(
    private _personaServices:PersonaService
  ) { }

  ngOnInit(): void {

    // this.listaUsercombo= [
    //   {nombre:"Pedro", usuario:"ppedro",role:"ADM"},
    //   {nombre:"Juan", usuario:"jjuan",role:"MOZ"},
    //   {nombre:"Jose", usuario:"jjose",role:"USU"}

    // ]



this._personaServices.getEMPL().subscribe(res=>{
  this.listaUsercombo=res.empleados;

},err=>{
  console.log(err)
}
)
  }}