c1,np1,vu1 = input().split(' ')
c2,np2,vu2 = input().split(' ')


codigo1 = int(c1)
numeroPecas1 = int(np1)
valorUnitario1 = float(vu1)

codigo2 = int(c2)
numeroPecas2 = int(np2)
valorUnitario2 = float(vu2)

total = (numeroPecas1*valorUnitario1)+(numeroPecas2*valorUnitario2)

print('VALOR A PAGAR: R$ {:.2f}'.format(total))