# COBOL-Examples
Some COBOL examples for academic porpouse.

Want to learn more? [Buy my book](https://www.amazon.es/dp/B0CWDW9HB6) 😁

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


## exm13.cbl: string simple usage

```
#cobc -x exm13.cbl -o EXM13
#./EXM13
INICIO DEL PROGRAMA
  EJEMPLO 1:
HOLA                DESDE               COBOL
  EJEMPLO 2:
HOLA DESDE COBOL
  EJEMPLO 3:
HOLA, DESDE COBOL
```


## exm14.cbl: unstring simple usage
```
#cobc -x exm14.cbl -o EXM14
#./EXM14
INICIO DEL PROGRAMA
VALOR INICIAL: A EL LE DE LO MISMO
VALOR DE PARTES:
  (1) A
  (2) EL
  (3) LE
  (4) DE
  (5) LO
  (6) MISMO
  (7)
  (8)
  (9)
  (10)
VALOR FINAL: a EL le DE lo MISMO
```


## exm15.cbl: inspect simple usage
```
#cobc -x exm15.cbl -o EXM15
#./EXM15
INICIO DEL PROGRAMA
TEXTO: HOLA DESDE COBOL
TEXTO: hola desde cobol
TEXTO: adio desde cobol
TEXTO: adiz desde czbzl
TEXTO: adiy desde czbzl
```


## exm16.cbl: inspect tallying simple usage
```
#cobc -x exm16.cbl -o EXM16
#./EXM16
INICIO DEL PROGRAMA
HAY 000000020 CARACTERES
HAY 9 ESPACIOS EN CONT-Z (ZZZ,ZZZ,ZZ9): >         20<
DISPLAY SIN ESPACIOS A LA IZQUIERDADE CONT-Z: >20         <
```


## exm17.cbl: switch examples
```
#cobc -x exm17.cbl -o EXM17
#./EXM17
INICIO DEL PROGRAMA
VALOR INCIAL: 02
NUEVO VALOR: 05
NUEVO VALOR: 10
NUEVO VALOR: 11
```

## exm18.cbl: IF examples
```
#cobc -x exm18.cbl -o EXM18
#./EXM18
INICIO DEL PROGRAMA
VALOR INCIAL: 02
ES CORRECTO
AHORA SI
```

## exm19.cbl: IF complex examples
```
# cobc -x exm19.cbl -o EXM19
# ./EXM19
INICIO DEL PROGRAMA
VALOR INCIAL: 02
5
CINCO, IMPAR, UNA CIFRA
FUERA DE RANGO
# ./EXM19
INICIO DEL PROGRAMA
VALOR INCIAL: 02
20
NUMERO PROHIBIDO
FUERA DE RANGO
# ./EXM19
INICIO DEL PROGRAMA
VALOR INCIAL: 02
21
NUMERO PROHIBIDO
ENTRE 20 Y 50
```

## exm20.cbl: EVALUATE examples
```
# cobc -x exm20.cbl -o EXM20
# ./EXM20
INICIO DEL PROGRAMA
VALOR INCIAL: 02
INTERRUPTOR:
5
EDAD:
18
PAIS:
ESP
CINCO
MAYOR DE EDAD
# ./EXM20
INICIO DEL PROGRAMA
VALOR INCIAL: 02
INTERRUPTOR:
99
EDAD:
18
PAIS:
USA
DOS CIFRAS
MENOR DE EDAD
# ./EXM20
INICIO DEL PROGRAMA
VALOR INCIAL: 02
INTERRUPTOR:
7
EDAD:
30
PAIS:
zzz
UNA CIFRA
MAYOR DE EDAD
```
