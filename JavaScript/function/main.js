// cjs: 
//const { sum, minus } = require('./lib');
//esm:
import { sum, minus } from './lib.js'; //o . e / tem dentro; sem é pq é de fora
   //.mjs ou .js(package.json({
   //    "type": "module"
  //}))
import { sqrt } from 'mathjs';
//no terminal: npm install nomedabiblioteca
console.log(sum(1, 1));
console.log(minus(1, 1));
console.log(sqrt(4));