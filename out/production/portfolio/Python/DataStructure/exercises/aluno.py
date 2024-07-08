from datetime import datetime
from typing import List
class aluno:
    __serial = 1 #contador externo
    def __init__(self, nome:str, notas:List[int]=list()):
        self.__matricula = f'{datetime.now().year}.{1 if datetime.now().month < 7 else 2}.{aluno.__serial:03}'#adicionar a quantidade de dígitos  
        aluno.__serial += 1 #contador de verdade
        self.__nome = nome
        self.__notas = notas

    @property 
    def nome(self)->dict:
       return self.__nome
    @property 
    def matricula(self)->dict:
       return self.__matricula
   
    @nome.setter
    def nome(self, novoNome):
      self.__nome = novoNome

    def media(self):
      self.media =(sum(self.__notas)/3)
      return self.media
    
if __name__ == "__main__": 
   a1 = aluno('alex', [10, 9, 5])
   print(a1.__dict__)
   print(a1.media())
   a2 = aluno('josefina', [4, 8, 7])
   print(a2.__dict__)
   print(a2.media())
   a3 = aluno('jackson', [6, 10, 8])
   print(a3.__dict__)
   print(a3.media())