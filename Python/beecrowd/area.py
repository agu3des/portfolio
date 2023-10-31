A,B,C = input().split(' ')

a = float(A)
b = float(B)
c = float(C)

pi = 3.14159

areaTri = (a*c)/2
areaCir = pi*(c**2)
areaTra = (a + b)*c/2
areaQua = b**2
areaRet = a*b

print('TRIANGULO: {:.3f}'.format(areaTri))
print('CIRCULO: {:.3f}'.format(areaCir))
print('TRAPEZIO: {:.3f}'.format(areaTra))
print('QUADRADO: {:.3f}'.format(areaQua))
print('RETANGULO: {:.3f}'.format(areaRet))