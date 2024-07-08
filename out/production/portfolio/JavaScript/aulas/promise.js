function sum(a,b){
    if (typeof a == 'number' && typeof b == 'number') {
        return a + b;
    }  else {
        return NaN;
    } 
}
console.log(sum(1,2));
console.log(sum(1,true));


//promessa é uma execução que pode ser tratada ou resolvida
function sumPromise(a,b){
    return new Promise ((resolve, reject) => {
        if (typeof a == 'number' && typeof b == 'number') {
            resolve (a + b);
        }  else {
            reject (NaN);
        }  
    });
}
// console.log(sumPromise(1,2));
// console.log(sumPromise(1,true));
sumPromise(1,2).then((result) => console.log(result));
            //o then quando tabalha com promessa e aí passa uma arrow function
sumPromise(1,true)
    //tem que ter os dois pq eu não sei se vai dar certo ou errado
    .then((result) => console.log(result))
    .catch((error) => console.log(error));
    //o catch é quando quebra 

    
//chamando a função dentro
sumPromise(3,3)
    .then((result) => sumPromise(result, 2))
    .then((result) => console.log(result))
    .catch(() => console.log('Erro na soma'));


async function sumAsync(a, b) {
    if (typeof a == 'number' && typeof b == 'number') {
        return a + b;
    }  else {
        throw new Error('Invalid params');
    } 
}
sumAsync(5,5)
    .then((result) => console.log(result))
    .catch((error) => console.log('Erro na soma'));

//a ordem da chamada das promessas não garante o output delas

//await - só pode ser usado dentro de funções assíncronas
async function main() {
    try{
        let temp = await sumAsync(10,10)
        console.log(await sumAsync(temp, 5))  
    } catch(error) {
        console.log('Erro na soma')
    }
}

let temp = await sumAsync(10,10)
//await toplevel - pode ser usado dentro de funções assíncronas / tem que ter o module
console.log(await sumAsync(temp, 5))