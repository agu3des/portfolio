from hashTable import *

ht = HashTable()

print(f'Hash antes da inserção de elementos: {ht}\n')
ht.put(3,2) #utilizando o método, passando key e value
ht.put(14,165)
ht.put(32,5)
# print(ht.__dict__)
ht[2] = 99 #adiconar um valor a chave
print(f'Hash após a insersão de elementos: {ht}\n')
print(f'Diga o valor contido na chave (2): {ht.get(3)}\n')#pegue essa chave e me devolva seu valor
ht.remove(32) #utilizando o método remove, que recebe a key e exclui o correspondente
print(f'Hash após a remoção de elementos: {ht}\n')
print(f'Pares de itens: {ht.items()}\n') #método que devolve os pares (key, value)
print(f'Chaves: {ht.keys()}\n') #pega as chaves
print(f'Valores: {ht.values()}\n') #pega os valores
print('\nTABELA\n-----------------')
ht.showHashTable()
