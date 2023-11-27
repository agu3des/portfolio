import numpy as np

class HashTable:
    '''
    Tabela Hash usando a técnica de sondagem linear para tratamento de colisão 
    '''
    def __init__(self,size=10):
        self.__ocupados = 0 #como é dispersa, se n tiver contador tem que varrer toda vez
        self.__table = np.full(size,None) #array, posso pedir o len do array loogo n é necessário um atributo tamanho

    def __hash(self,key:any)->int:
        '''
        Cálculo do hash modular
        '''
        return hash(key) % len(self.__table) #hash é de python/faz só por isso só tem a chave
                            #é o nosso m
    def __rh(self,index:int):
        return (index+1) % len(self.__table)


    def estaCheia(self):
        return self.__ocupados == len(self.__table)


    def put(self, key:any, data:any):
        if self.estaCheia():
            return False
        hashData = self.__hash(key)
        print(hashData)

        while self.__table[hashData] != None:
            hashData = self.__rh(hashData)
            print(hashData)
        self.__table[hashData] = data
        self.__ocupados += 1


    def get(self, key:any)->any:
        pass
    def __str__(self):
        pass


    def __setitem__(self,key,data)->any:
        '''
        Fazer a pesquisa utilizando os cholchetes. ex: ht[2] = 99
        '''
        self.put(key,data)


    def __getitem__():

