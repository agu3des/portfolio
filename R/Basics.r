# CALCULADORA
2+2
2*2
2/2
2-2
2^2
((4+16)/4)^2

#----------------------------------------------------------------------------------------

# FUNÇÕES
help.search("Logarithms")
??logarithms #versões mais atuais
RSiteSearch("logarithms")#internet
help(log) #abre o help sobre log
# 1 - Description - faz um resumo geral sobre o uso da função
# 2 - Usage - mostra como a função deve ser utilizada e quais argumentos podem ser especificados
# 3 - Arguments - explica o que é cada um dos argumentos
# 4 - Details - explica alguns detalhes sobre o uso e aplicação da função (geralmente poucos)
# 5 - Value - mostra o que sai no output após usar a função (os resultados)
# 6 - Note - notas sobre a função
# 7 - Authors - lista os autores da função (quem escreveu os códigos em R)
# 8 - References - referências para os métodos usados
# 9 - See also - mostra outras funções relacionadas que podem ser consultadas
# 10 - Examples - exemplos do uso da função. Copie e cole os exemplos no R para ver como funciona
sqrt(9) # Tira a raiz quadrada dos argumentos entre parênteses, no caso 9
sqrt(3*3^2) # raiz quadrada de 27
sqrt((3*3)^2)# raiz quadrada de 81
prod(2,2) # O mesmo que 2x2 / prod é a função para multiplicação 
prod(2,2,3,4)# 2x2x3x4
log(3) # log natural de 3 / log é a função para calcular o logaritmo 
log(3,10)# log de 3 na base 10
log10(3)# o mesmo que acima! log 3 na base 10
abs(3-9) # abs = modulo, |3-9| / abs é a função para pegar os valores em módulo
factorial(4) #4 fatorial (4!)

#----------------------------------------------------------------------------------------

# DEMONSTRAÇÕES
demo(graphics) # Vai aparecer uma mensagem pedindo que você tecle Enter para prosseguir, depois clique na janela do gráfico para ir passando os exemplos.
demo(persp)
demo(image)

#----------------------------------------------------------------------------------------

# OBJETOS
# a) vetores: uma seqüência de valores numéricos ou de caracteres (letras, palavras).
# b) matrizes: coleção de vetores em linhas e colunas, todos os vetores dever ser do mesmo tipo (numérico ou de caracteres).
# c) dataframe: O mesmo que uma matriz, mas aceita vetores de tipos diferentes (numérico e caracteres).
# Geralmente nós guardamos nossos dados em objetos do tipo data frame, pois sempre temos variáveis numéricas e variáveis categóricas (por exemplo, largura do rio e nome do rio, respectivamente).
# d) listas: conjunto de vetores, dataframes ou de matrizes. Não precisam ter o mesmo comprimento, é a forma que a maioria das funções retorna os resultados.
# e) funções: as funções criadas para fazer diversos cálculos também são objetos do R.


# VETORES
letras<-c("a","b","c","da","edw")
palavras<-c("Manaus","Boa Vista","Belém","Brasília")
aves<-c(22, 28, 37, 34, 13, 24, 39, 5, 33, 32)
max(aves)#valor máximo contido no objeto
min(aves)#valor mínimo
sum(aves) #Soma dos valores de avess
aves^2 #...
aves/10
n.aves <- length(aves) # número de observações (n)
media.aves <- sum(aves)/n.aves #média 
mean(aves) #média 
aves[5] # Qual o quinto valor de aves?
aves[3] # Qual a terceira palavra?
#Para acessar mais de um valor use c para concatenar dentro dos colchetes [c(1,3,...)]:
aves[c(5,8,10)] # acessa o quinto, oitavo e décimo valores
aves[-1] #para excluir um valor, nesse caso o primeiro
aves[1] <- 100 # O primeiro valor de aves deve ser 100
aves[1] <- 22 # Vamos voltar ao valor antigo
sqrt(aves) #Raiz quadrada dos valores de aves
log10(aves) #log(aves) na base 10, apenas
log(aves) # logaritmo natural de aves
aves.log<-log10(aves) # salva um objeto com os valores de aves em log
ls() #Para listar os objetos que já foram salvos, significa listar
rm(aves.log) #remover o que está entre parênteses

