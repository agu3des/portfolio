export function vertriang(t1, t2, t3){
    if (t1 + t2 < t3 || t1 + t3 < t2 || t2 + t3 < t1) return 'Não é triângulo';
    else return 'É triângulo';
}

export function lados(l1, l2, l3){
    if (l1 == l2 == l3) return 'equilátero';
    else if (l1 == l2 || l2 == l3 || l3 == l1) return 'isoceles';
    else return 'escaleno';
}
