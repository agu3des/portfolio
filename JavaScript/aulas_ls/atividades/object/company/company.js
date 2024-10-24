class Companies {
  static MAX_NAME_LENGHT = 0;

  constructor() {
    this.companies = [];
  }

  add(company) {
    this.companies.push(company);

    company.name.length > Companies.MAX_NAME_LENGHT &&
      (Companies.MAX_NAME_LENGHT = company.name.length);
  }

  //para vc encontrar as empresas após o ano inserido
  foundedAfter(year) {
    return this.companies.filter((company) => company.founded > year);
  }

  //para vc encontrar as empresas antes do ano inserido
  foundedAfter(year) {
    return this.companies.filter((company) => company.founded < year);
  }

  //map é uma função de transformação, preserva a quantidade de itens do original, vai aplicar em todos
  show() {
    return this.companies.map((company) => company.show()).join('\n');
  }
}

class Company {
  constructor(name, founded, industry, kind) {
    this.name = name;
    this.founded = founded;
    this.industry = industry;
    this.kind = kind;
  }

  //padEnd: define um tamanho mínimo, te dois parâmetros, o qu eu tenho e o que vou completar
  show() {
    return this.name.padEnd(Companies.MAX_NAME_LENGHT + 3, '.') + this.founded;
  }
}

const companies = new Companies();

companies.add(
  new Company('Amazon', 1994, ['E-Commerce', 'Cloud'], 'Internet company')
);
companies.add(new Company('Facebook', 2004, ['Social'], 'Internet company'));
companies.add(
  new Company(
    'Alphabet Inc.',
    2015,
    ['Search', 'Cloud', 'Advertising'],
    'Internet company'
  )
);

console.log(companies.show());