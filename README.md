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


## exm6.cbl: data accept

```
#cobc -x exm6.cbl -o EXM6
#./EXM6
INICIO DEL PROGRAMA
FECHA DEL DÍA (Y2K): 13.11.21
FECHA DEL DÍA (YYYYMMDD): 13.11.2021
TIEMPO (HHMMSSCC): 14:19:52.08
INTRODUCE FACTOR:
1234
FACTOR: 1234
```


## exm7.cbl: addition examples

```
#cobc -x exm7.cbl -o EXM7
#./EXM7
INICIO DEL PROGRAMA
VALORES INICIALES: 1 10 20 000000030 000000040
VALORES FINALES: 1 10 20 000000091 000000101
```


## exm8.cbl: addition complex examples

```
#cobc -x exm8.cbl -o EXM8
#./EXM8
INICIO DEL PROGRAMA
VALORES INICIALES-1: 9 10 20 000000030 000000040 1.9
VALORES INICIALES-2: 9 10 20 000000030 000000040 1
BASE: 0
SUM5: 2
SUM5: 3
VALORES FINALES-1: 9 10 20 000000030 000000040 1.9
VALORES FINALES-2: 9 20 40 000000060 000000080 3
```


## exm9.cbl: subtract complex examples

```
#cobc -x exm9.cbl -o EXM9
#./EXM9
INICIO DEL PROGRAMA
VALORES INICIALES-1: 0 10 20 000000027 000000005 000000000.0
VALORES INICIALES-2: 0 11 05 000000001 000000015 000000000
VALORES FINALES-1: 0 10 20 000000027 000000005 000000010.0
VALORES FINALES-2: 0 01 15 000000026 000000015 000000000
```


## exm10.cbl: use of set verb to increase / decrease

```
#cobc -x exm10.cbl -o EXM10
#./EXM10
INICIO DEL PROGRAMA
BASE: 1
BASE: 3
BASE: 2
```


## exm11.cbl: multiply and divide complex examples

```
#cobc -x exm11.cbl -o EXM11
#./EXM11
INICIO DEL PROGRAMA
BASE: 859753164
DIGITOS: 0010
CONTADOR: 1
EL/LOS ULTIMO/S 1 DIGITO/S DE BASE: 0004
BASE: 859753164
DIGITOS: 0100
CONTADOR: 2
EL/LOS ULTIMO/S 2 DIGITO/S DE BASE: 0064
BASE: 859753164
DIGITOS: 1000
CONTADOR: 3
EL/LOS ULTIMO/S 3 DIGITO/S DE BASE: 0164
```


## exm12.cbl: intrinsic functions usage

```
#cobc -x exm12.cbl -o EXM12
#./EXM12
INICIO DEL PROGRAMA
LONGITUD DE BASE: 9
TEXTO:            Hola desde cobol
N-TEXTO:          12
ACTUAL:           2022102916513556+0200
D:                01040000
```
