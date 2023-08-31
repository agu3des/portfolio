nomearq1 = input('1º Arquivo: ') #tem que criar os 3 arquivos na biblioteca
nomearq2 = input('2º Arquivo: ') #no arq1 e no ar2 tem que ter informações a serem lidas
nomearq3 = input('3º Arquivo: ') #para ocorrer deve-se fazer o upload


arq1 = open(nomearq1,'r') #pega info
arq2 = open(nomearq2,'r') #pega info
arq3 = open(nomearq3,'w') #grava info dos dois


texto1 = arq1.read()  #a ação
texto2 = arq2.read()
texto3 = texto1 + texto2 #recebe as duas e faz outra/contatenar

arq3.write(texto3) #mostrar a ação

arq1.close() #fechar os arquivos
arq2.close()
arq3.close()


#criar um arquvo com o nome cadastro
arq = open('cadastro.txt', 'w')
print('Digite os dados abaixo:\nPara finalizar aperte a tecla enter.')
while True:
  nome = input('\nNome: ')
  if nome == '':
    break
  sexo = input('Sexo(M/F): ').upper()
  idade= int(input('Digite a idade: '))
  linha = nome+','+sexo+','+str(idade)+'\n'
  arq.write(linha)
arq.close