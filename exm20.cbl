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
       PROGRAM-ID. EXM20.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 INTERRUPTOR-1        PIC 9(02) VALUE 2.
              88 INT-CINCO                   VALUE 5.
              88 INT-1-CIFRA                 VALUE 0 THRU 9.
              88 INT-2-CIFRA                 VALUE 10 THRU 99.
              88 INT-PAR                     VALUE 0, 2, 4, 6, 8, 10.
              88 INT-IMPAR                   VALUE 1 3 5 7 9.
              88 INT-PROHIBIDO               VALUE 11 THRU 80.
           02 EDAD                 PIC 9(03).
           02 PAIS                 PIC X(03).


       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            DISPLAY 'VALOR INCIAL: ' INTERRUPTOR-1.

            DISPLAY 'INTERRUPTOR: '.
            ACCEPT INTERRUPTOR-1            FROM SYSIN.
            
            DISPLAY 'EDAD: '.
            ACCEPT EDAD                     FROM SYSIN.
            
            DISPLAY 'PAIS: '.
            ACCEPT PAIS                     FROM SYSIN.

            EVALUATE TRUE
              WHEN INT-CINCO
                DISPLAY 'CINCO'
              WHEN INT-1-CIFRA
                DISPLAY 'UNA CIFRA'
              WHEN INT-2-CIFRA
                DISPLAY 'DOS CIFRAS'
              WHEN INT-PAR
                DISPLAY 'PAR'
              WHEN INT-IMPAR
                DISPLAY 'IMPAR'
              WHEN INT-PROHIBIDO
                DISPLAY 'PROHIBIDO'
              WHEN OTHER
                DISPLAY 'CASO NO CONTEMPLADO: ' INTERRUPTOR-1
            END-EVALUATE.

            EVALUATE TRUE       ALSO PAIS
              WHEN (EDAD >= 18) ALSO 'ESP'
                DISPLAY 'MAYOR DE EDAD'
              WHEN (EDAD >= 21) ALSO ANY
                DISPLAY 'MAYOR DE EDAD'
              WHEN OTHER
                DISPLAY 'MENOR DE EDAD'
            END-EVALUATE.
