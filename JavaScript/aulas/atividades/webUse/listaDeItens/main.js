
function list(count){
    let cont = '<ul>\n'
    //crio a variável para receber a ul da lista
    for (let flag = 1; flag <= count; flag +=1){
        cont += `   <li>Item ${flag}</li>\n`  
    }
    //no meu for eu faço a repetição da lista li ser adicionada a variável
    cont += '<ul>\n'
    //fecho a lista ul
    return cont
    //retorno de modo que apareça no pc
}

function handleClick(){
    const count = prompt
    ('Informe a quantidade de itens:');

    document.write(list(count));
}



//OUTRO JEITO:
//const items= Array(count){
    // Array(count).map((_,index) => `<li>Item ${index + 1}<li>`).join('');
    // return `<ul>${items}</ul>`;
// }
// function handleClick(){
//     const count = prompt
//     ('Informe a quantidade de itens:');

//     document.write(list(Number));
// }

