from hashTable import *
#from chainingHashTable import *
#from doubleHashing import *

ht = HashTable()

print(f'Hash antes da inserção de elementos: {ht}\n')
ht.put(3,22) #utilizando o método, passando key e value
ht.put(14,33)
ht.put(32,111)
# print(ht.__dict__)
ht[2] = 99 #adiconar um valor a chave
print(ht)
ht[3] = 5
print(f'Hash após a insersão de elementos: {ht}\n')
print(f'Diga o valor contido na chave (2): {ht.get(3)}\n')#pegue essa chave e me devolva seu valor
ht.remove(32) #utilizando o método remove, que recebe a key e exclui o correspondente
print(f'Hash após a remoção de elementos: {ht}\n')
print(f'Pares de itens: {ht.items()}\n') #método que devolve os pares (key, value)
print(f'Chaves: {ht.keys()}\n') #pega as chaves
print(f'Valores: {ht.values()}\n') #pega os valores
print('\nTABELA\n-----------------')
ht.showHashTable()
print(f'Quantidade de elementos na tabela: {len(ht)}')
# ht.display()
