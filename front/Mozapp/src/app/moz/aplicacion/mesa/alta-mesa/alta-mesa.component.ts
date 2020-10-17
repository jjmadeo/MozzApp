import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from "@angular/router";


@Component({
  selector: 'app-alta-mesa',
  templateUrl: './alta-mesa.component.html',
  styleUrls: ['./alta-mesa.component.css']
})
export class AltaMesaComponent implements OnInit {

  constructor(
    private _route:ActivatedRoute
  ) { }

  ngOnInit(): void {
    console.log(this._route.snapshot.paramMap.get('id')+"-"+this._route.snapshot.paramMap.get('name'))
  }

}
