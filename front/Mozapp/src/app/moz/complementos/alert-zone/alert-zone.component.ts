import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-alert-zone',
  templateUrl: './alert-zone.component.html',
  styleUrls: ['./alert-zone.component.css']
})
export class AlertZoneComponent implements OnInit {
  @Input() notificaciones:any = []
  alertas:any[];

  constructor() { }

  ngOnInit(): void {
  }

  eliminarAlerta(item){
    this.alertas = JSON.parse(localStorage.getItem('notificaciones'))

    this.notificaciones = this.alertas.filter(i=>i === item)

    localStorage.removeItem('notificaciones');
    localStorage.setItem('notificaciones',JSON.stringify(this.notificaciones))
    
      
  }

}
