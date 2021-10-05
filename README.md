# COBOL-Examples
Some COBOL examples for academic porpouse.

## exm1.cbl: easy display example

```
#cobc -x exm1.cbl -o EXM1
exm1.cbl: 36: warning: line not terminated by a newline

#./EXM1
NOMBRE    APELLIDO1 25/11/1990
0987654321
```


## exm2.cbl: complex display example (LIN, COL, BELL)

```
#cobc -x exm2.cbl -o EXM2
#./EXM2
INICIO DEL PROGRAMA



  TE LLAMAS:                 NOMBRE

  TE APELLIDAS:              APELLIDO1

  NACISTE EL:                25/11/1990

FIN DEL PROGRAMA
end of program, please press a key to exit
```


## exm3.cbl: complex display example (substring)

```
#cobc -x exm3.cbl -o EXM3
#./EXM3
INICIO DEL PROGRAMA
TE LLAMAS: NOMBRE
TU APELLIDO ES: APELLIDO1
LAS 3 ULTIMAS LETRAS DEL APELLIDO: DO1
```


## exm4.cbl: data move example

```
#cobc -x exm4.cbl -o EXM4
#./EXM4
INICIO DEL PROGRAMA
ESTADO INICIAL DE MEMORIA ->NOMBRE    SEGUNDO   APELLIDO1 APELLID02 NOMBRE    APELLIDO1 25/11/1990<-
MOVEMOS DATOS
ESTADO FINAL DE MEMORIA ->NOMBRE    SEGUNDO   APELLIDO1 APELLID02 NOMBRE    SEGUNDO   25/11/1990<-
```


## exm5.cbl: data move example (with substring)

```
#cobc -x exm5.cbl -o EXM5
#./EXM5
INICIO DEL PROGRAMA
NACIMIENTO: 25/11/1990
FECHA-ABSOLUTA: 19901125
```
