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
       PROGRAM-ID. EXM19.

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


       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            DISPLAY 'VALOR INCIAL: ' INTERRUPTOR-1.

            ACCEPT INTERRUPTOR-1            FROM SYSIN.

            IF INT-PROHIBIDO
              DISPLAY 'NUMERO PROHIBIDO'
            END-IF.

            IF INT-CINCO AND INT-IMPAR OR INT-1-CIFRA
              DISPLAY 'CINCO, IMPAR, UNA CIFRA'
            END-IF.

            IF INTERRUPTOR-1 > 20 AND 
               INTERRUPTOR-1 < 50
              DISPLAY 'ENTRE 20 Y 50'
            ELSE
              DISPLAY 'FUERA DE RANGO'
            END-IF.
