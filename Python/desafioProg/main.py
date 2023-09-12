import os

numi = int(input())
numf = int(input())

escolha = 1
if escolha:
  pid = os.fork()
  if pid == 0:
      #pares = open('pares.txt','w')
      for i in range(numi, numf +1): 
        if i % 2 == 0:
          pares = open('temp/pares.txt','a')
          pares.write(f'{i}\n')
          pares.close()
      print()
  elif pid > 0:
    pares = open('temp/pares.txt','r')
    print(f'Os números pares entre {numi} e {numf} são: {pares.read()}')
    pares.close()
else:
  exit()

