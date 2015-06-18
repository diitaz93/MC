#Primera Clase 27-May-2015
¡Hola mundo!, aqui estoy comenzando el curso de **Métodos Computacionales**.
Herramientas del Curso:
+ git,
+ GitHub,
+ bash, 
+ C,
+ y Python

y los métodos a estudiar son:
1. Interpolación,
2. Análisis de Fourier,
3. Diferenciación e integración numéricas,
4. Ecuaciones diferenciales ordinarias y parciales
5. Método de MonteCarlo

#Segunda Clase 2-Jun-2015
Expresiones Regulares
1. '^.... '
2. curl http://pi.karmona.com/|sed 's/<BR>//g' > pi.txt

# GNUPlot
+`set datafle separator ""`
+ `plot "archivo.csv" using C1:C2`
+ `type set to '<aqua/dumb/etc>'`

# Clase 5 Junio: C
+En GNUplot `set view equal xyz` para que quede simetrica una gráfica en 3D
+

#Clase 9 Junio: Make
"Anyhing worth repeang is worth automating"
*Make ayuda a organizar la manera en la que se actualiza la versión de un
archivo que depende de otros archivos.


#*Ideas Proyecto*
Usando grep y sed, se puede obtener la cadena complementaria de DNA
a partir de una cadena inicial, debido a la complementaridad de las
bases nitrogenadas

#Clase 10 Junio: Figuras de **Lissajous**
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

Para unir k+1 puntos, se necesita un polinomio de grado k

#Clase 17 Junio
*Repaso Git/ Crear Ramas
+Crear un repositorio; ´git init´ en la carpeta
+git -log -> historial
+git commit -m mensaje
+git checkout <hash> -> Version especifica
+git status
+git branch -> muestra la rama actual
+git branch rama 1 -> crea la rama 1
Se cambia de rama con checkout
+git merge <nombre_de_la_rama_a_integar>


