      *****************************************************************
      *                                                               *
      * This software have been developed under GNU GPL v3 License.   *
      *   That means, no closed distribution of this software is      *
      *   allowed.                                                    *
      *                                                               *
      * Please refer to the License text here:                        *
      *   https://www.gnu.org/licenses/gpl-3.0.txt                    *
      *                                                               *
      * For any comment, suggestion or similar, you can reach me via  *
      * mail on "doscar.sole@gmail.com"                               *
      *                                                               *
      *****************************************************************
       ID DIVISION.
       PROGRAM-ID. EXM12.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 OPERACION-1.
              03 OP-A.
                 04 BASE                PIC 9(09).
                 04 TEXTO               PIC X(50).
                 04 TEXTO-N             PIC X(02).
           02 DATOS.
              03 BASE-LEN               PIC 9(01).
              03 N-TEXTO                PIC 9(02).
        01 ACTUAL.
           02 FECHA-ACTUAL.
              03 ANYO                   PIC 9(04).
              03 MES                    PIC 9(02).
              03 DIA                    PIC 9(02).
           02 HORA-ACTUAL.
              03 HORA                   PIC 9(02).
              03 MINUTOS                PIC 9(02).
              03 SEGUNDOS               PIC 9(02).
              03 MILISEGUNDOS           PIC 9(02).
           02 FRANJA.
              03 SIGNO                  PIC X(01).
              03 HORAS-MINUTOS          PIC 9(04).
        01 RAIZ.
           02 A                         PIC 9(08).
           02 B                         PIC 9(08).
           02 C                         PIC 9(08).
           02 D                         PIC 9(08).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.

            MOVE 123                        TO BASE.
            MOVE 'HOLA DESDE COBOL'         TO TEXTO.
            MOVE FUNCTION LENGTH(BASE)      TO BASE-LEN.
            MOVE FUNCTION LOWER-CASE(TEXTO) TO TEXTO.
            MOVE FUNCTION UPPER-CASE(TEXTO(1:1))
                                            TO TEXTO(1:1).
            MOVE '12'                       TO TEXTO-N.
            COMPUTE N-TEXTO = FUNCTION NUMVAL(TEXTO-N).
            MOVE FUNCTION CURRENT-DATE      TO ACTUAL.
            MOVE 900                        TO A.
            MOVE 200                        TO B.
            MOVE 300                        TO C.
            COMPUTE D = B ** 2 - (4 * A * C).

            DISPLAY 'LONGITUD DE BASE: ' BASE-LEN.
            DISPLAY 'TEXTO:            ' TEXTO.
            DISPLAY 'N-TEXTO:          ' N-TEXTO.
            DISPLAY 'ACTUAL:           ' ACTUAL.
            DISPLAY 'D:                ' D.
