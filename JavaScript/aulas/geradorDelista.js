function createList(number, text = 'Item'){ //se a pessoa não escolher a mensagem ele vai mostrar 'item', pois é o default
    let result = '<ul>\n'; //para ele printar o ul antes
    for (let flag = 1; flag <= number; flag++){ //ele vai ir de acordo com o número digitado que vai entrar na flag
        result += `    <li>${text} ${flag}<li>\n`; //o $ com o acento grave é como o f'
    } //coloco o result que é para ele adicionar nessa variável todas as infos
    result += '</ul>\n';//para ele printar o ul depois
    return result //retornar o resultado
}


console.log(createList(6))