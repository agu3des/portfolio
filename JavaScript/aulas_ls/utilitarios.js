function toCamelCase(text) {
    let result = [];
    for (let word of text.split(' ')) {
      let firstLetter = word[0].toUpperCase();
      let slicedWord = word.substr(1).toLowerCase();
      result.push(firstLetter + slicedWord);
    }
    return result.join(' ');
}

function Case (text, typeCase){
    switch (typeCase){
        case 'uppercase':
            return text.toUpperCase();
        case 'lowercase':
            return text.toLowerCase();
        case 'camelcase':
            return toCamelCase(text);
        case 'snakecase':
            return text.replace(/\s/g, '_');
        case 'reverse':
            return text.split('').reverse().join('');
        case 'countchar':
            return text.split('').length;
        case 'countword':
            return text.split(/\s/g).length;
        case 'countline':
            return text.split('\n').length;
    }
}


let frase = 'Lorem ipsum dolor.'
console.log(Case(frase, 'uppercase'))
console.log(Case(frase, 'lowercase'))
console.log(Case(frase, 'camelcase'))
console.log(Case(frase, 'snakecase'))
console.log(Case(frase, 'reverse'))
console.log(Case(frase, 'countchar'))
console.log(Case(frase, 'countword'))
console.log(Case(frase, 'countline'))