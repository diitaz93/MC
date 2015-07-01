#Primera Clase 27-May-2015
¡Hola mundo!, aqui estoy comenzando el curso de **Métodos Computacionales**.
Herramientas del Curso:
+ git,
+ GitHub,
+ bash, 
+ C,
+ y Python

y los métodos a estudiar son:<BR>
1. Interpolación,<BR>
2. Análisis de Fourier,<BR>
3. Diferenciación e integración numéricas,<BR>
4. Ecuaciones diferenciales ordinarias y parciales,<BR>
5. Método de MonteCarlo.<BR>

#Segunda Clase 2-Jun-2015

GNUPlot<BR>
+ `set datafle separator ""`
+ `plot "archivo.csv" using C1:C2`
+ `type set to '<aqua/dumb/etc>'`

**Hands On**<BR>

Expresiones Regulares<BR>
1. `^.... `<BR>
3. `curl http://pi.karmona.com/|sed 's/<BR>//g' > pi.txt`<BR>

GNUPlot<BR>
```
gnuplot<<EOF
set terminal dumb
set datafile separator "",""
plot $1 using $2:$3
EOF
```

# Clase 5 Junio: C

+En GNUplot `set view equal xyz` para que quede simetrica una gráfica en 3D<BR>

**Hands On**<BR>
*"Anyhing worth repeang is worth automating"*<BR>
Make ayuda a organizar la manera en la que se actualiza la versión de un
archivo que depende de otros archivos.

#Clase 9 Junio: Make

**Hands On:Make:**<BR>
Gestión de Dependencias: Existen en los archivos que componen el código fuente de un programa.<BR>
Dirige la generación automática de ciertos aspectos de un programa.<BR>

**Ideas Proyecto**<BR>
Usando grep y sed, se puede obtener la cadena complementaria de DNA
a partir de una cadena inicial, debido a la complementaridad de las
bases nitrogenadas

#Clase 10 Junio: Figuras de *Lissajous*
```
A=1
B=1
a=1
b=1
t=linspace(0,2*pi,1000)
figure(figsize=(15,15))
for i in range (25):
    subplot(5,5,i+1)
    axis("off")
    plot(A*sin((a*i+1)*t),B*cos((b*i)*t))
show()
```

![alt tag](https://github.com/diitaz93/MC/blob/master/hands_on/lissajous.png)

#Clase 16 Junio: Interpolación

Para unir k+1 puntos, se necesita un polinomio de grado k<BR>

**Hands On**<BR>
Campo Magnético: Ajuste por mínimos cuadrados<BR>
![alt tag](https://raw.githubusercontent.com/diitaz93/MC/master/hands_on/a.png)
![alt tag](https://raw.githubusercontent.com/diitaz93/MC/master/hands_on/b.png)

**Proyecto Final:** La interpolación podria ser util, teniendo datos de valores de acciones de cada año, se puede estimar el valor de las acciones por mes.

#Clase 17 Junio
Repaso Git/ Crear Ramas<BR>
+ Crear un repositorio; ´git init´ en la carpeta
+ git -log -> historial
+ git commit -m mensaje
+ git checkout <hash> -> Version especifica
+ git status
+ git branch -> muestra la rama actual
+ git branch rama 1 -> crea la rama 1
+ Se cambia de rama con checkout
+ git merge <nombre_de_la_rama_a_integar>

**Interpolación**
* `poly1d`-> crea un polinomio
	le entra por parametro un arreglo de coeficientes
	`poly1d([1,2,3])` que forman el polinomio
	\\[x^2+2x+3\\].<BR>
	Si su segundo argumento es 'True', las entradas del arreglo
	se convierten en las raices del polinomio.<BR>
* *Interpolate*:<BR>
Se importa de scipy, interpolate y en ella la funcion `interp1d`.<BR>
Le entran por parámetro el arreglo en x, el arreglo en y y el tipo (cubico, lineal, etc)
`func=interpolate.interp1d(x,y,kind='cubic')`.<BR>
Ahora la función le entra un arreglo de abscisas para interpolar:
`newy=func(newx)`.<BR>

* *Integración:* 
funcion `quad` de scipy

* *Derivación numérica:*<BR>
+ Forward difference (con el dato siguiente)-> Error de 1 grado.<BR>
+ Backward difference (con el dato anterior) -> Error de 1 grado.<BR>
+ Central difference (con el dato anterior y el siguiente)-> Error de 2 grado.<BR>

#Hands-on 10

![alt tag](https://raw.githubusercontent.com/diitaz93/MC/master/hands_on/solar.png)
A simple vista se puede ver que el periodo de manchas solares es de aproximadamente 10 años

#Clase 24 Junio: Integración numérica
*Conociendo dos valores de la función:
se aproxima la funcion entre los dos puntos por una linea recta y se btiene el area del trapecio

*Metodo de simpson:
se interpolan los puntos (3) con una función de grado 2


#Ecuaciones diferenciales ordinarias

Runge-Kuta

Método Adaptativo:

$$E_{local}=frac{|Y_{\Delta t/2}-Y{\Delta t}|}{30}$$

Multistep Methods

Adams Bashfort

**Usar odeint**
`odeint` es una función de `scipy.integrate` que arroja una matriz, cuyas columnas
son los arreglos solución de cada una de las variables.
le entra como parámetros una funcion `func`, la cual es un arreglo
cuyas entradas son las ecuaciones diferenciales del sistema.
Las variables de las ecuaciones (x,y,z) se pueden ingresar como entradas de un arreglo de variables
Y, donde Y[0], Y[1], Y[2] corresponderian a x,y,z respectivamente, o a cualquier
tipo de coordenadas.
El siguiente parámetro es un arreglo con las condiciones iniciales de las variables.
El tercer parámetro es un arreglo de tiempos en los que se resuelve el sistema
de ecuaciones diferenciales.


Atractor de Lorentz (Ecuaciones de Lorentz)
Es un sistema de ED no lineales

#Calculos simbólicos

Definir Variables simbólicas: `x=symbols('x')`
Imprime "bonitas" las ecuaciones:

`init_printing(use_unicode=True)`
derivar:`diff(<function>,<variable>)`
integrar: `integrate(<function>,(<variable>,<liminf>,<limsup>))`
reducir a una expresion más simple: `symplify(<expression>)`

#Clase 7-1/2015
**Hands On**<BR>
Adams-Bashforth ordenes 2, 3 y 4.<BR>
Para Orden 2:<BR>
```
%pylab inline
from sympy import *
t,fn,fn1,h,tn,tn1=symbols('t fn fn1 h tn tn1')
tn1=tn-h
F2=fn1*(t-tn)/(tn1-tn)+fn*(t-tn1)/(tn-tn1)
simplify(integrate(F2,(t,tn,tn+h)))
```
Orden 3:<BR>
```
#Orden 3
t,fn,fn1,fn2,h,tn,tn1,tn2=symbols('t fn fn1 fn2 h tn tn1 tn2')
tn1=tn-h
tn2=tn-2*h
F3=fn*(t-tn1)/(tn-tn1)*(t-tn2)/(tn-tn2)+fn1*(t-tn)/(tn1-tn)*(t-tn2)/(tn1-tn2)+fn2*(t-tn)/(tn2-tn)*(t-tn1)/(tn2-tn1)
simplify(integrate(F3,(t,tn,tn+h)))
```
Orden 4:<BR>
```
#Orden 4
t,fn,fn1,fn2,fn3,h,tn,tn1,tn2,tn3=symbols('t fn fn1 fn2 fn3 h tn tn1 tn2 tn3')
tn1=tn-h
tn2=tn-2*h
tn3=tn-3*h
F4=fn*(t-tn1)/(tn-tn1)*(t-tn2)/(tn-tn2)*(t-tn3)/(tn-tn3)+fn1*(t-tn)/(tn1-tn)*(t-tn2)/(tn1-tn2)*(t-tn3)/(tn1-tn3)+fn2*(t-tn)/(tn2-tn)*(t-tn1)/(tn2-tn1)*(t-tn3)/(tn2-tn3)+fn3*(t-tn)/(tn3-tn)*(t-tn1)/(tn3-tn1)*(t-tn2)/(tn3-tn2)
simplify(integrate(F4,(t,tn,tn+h)))
```
Los resultados concuerdan con los del libro.






