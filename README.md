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
