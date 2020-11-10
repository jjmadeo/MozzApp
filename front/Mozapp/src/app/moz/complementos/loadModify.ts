import { ShareService } from "./shereservice/share.service";

var _service:ShareService; 

export function loaderSet(value:boolean) {
    let valor = JSON.parse(localStorage.getItem('loader'));
    valor.load = value;
    localStorage.setItem('loader',JSON.stringify(valor));
    
}


export function alerta(tipo,msj) {
    let arrAlert=[];

    if(localStorage.getItem('notificaciones')!== null){
      arrAlert=   JSON.parse(localStorage.getItem('notificaciones'))
    }


    arrAlert.push({tipo:tipo,msj:msj});

    localStorage.setItem('notificaciones',JSON.stringify(arrAlert))




    
    
}