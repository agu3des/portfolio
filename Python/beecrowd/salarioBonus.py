vendNome = input()
salarioFixo = float(input())
totalVendas = float(input())

salarioTotal =  (0.15*totalVendas) + salarioFixo 

print('TOTAL = R$ {:.2f}'.format(salarioTotal))