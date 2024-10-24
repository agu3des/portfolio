export function sum(array){ //já entende que deve pegar o array
    let sum = 0; //tem que usar o let para ser uma variável válida
    for (let num of array){
        sum += num;
    }
    return sum;
}

export function prod(array){ //já entende que deve pegar o array
    let prod = 1; //tem que usar o let para ser uma variável válida
    for (let num of array){
        prod *= num;
    }
    return prod;
}

export function sumOdds(array){ //já entende que deve pegar o array
    let sum = 0; //tem que usar o let para ser uma variável válida
    for (let num of array){
       if (num % 2){ // só de dizer ele já entende que é true pois o retorno da conta é 1
         sum += num;
       } 
       return sum;
    }
}










// export function sum(a, b, c) {
//     return a + b + c;
// }
// // export function sum(...a) {
// //     return a + b + c;
// // }
// export function sumOdds(...a) {
//     for (let n = 0; n <= 100 ; 1){
//         if (a % 2 == 0 ){
//           return 'É par';            
//         }
//         else{
//             return sum(...a)
//         }
          
//     }
// }