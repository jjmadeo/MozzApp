export function loaderSet(value:boolean) {
    let valor = JSON.parse(localStorage.getItem('loader'));
    valor.load = value;
    localStorage.setItem('loader',JSON.stringify(valor));
    
}