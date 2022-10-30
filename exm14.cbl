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
       PROGRAM-ID. EXM14.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 PARTES OCCURS 10     PIC X(20).
        77 TEXTO                   PIC X(20).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
      *           ----+----1----+----2
            MOVE 'A EL LE DE LO MISMO'
              TO TEXTO.

            DISPLAY 'VALOR INICIAL: ' TEXTO.

            UNSTRING TEXTO DELIMITED BY SPACE
                INTO PARTES(1)
                     PARTES(2)
                     PARTES(3)
                     PARTES(4)
                     PARTES(5)
                     PARTES(6)
                     PARTES(7)
                     PARTES(8)
                     PARTES(9)
                     PARTES(10).

            DISPLAY 'VALOR DE PARTES: '
            DISPLAY '  (1) '  PARTES(1)
            DISPLAY '  (2) '  PARTES(2)
            DISPLAY '  (3) '  PARTES(3)
            DISPLAY '  (4) '  PARTES(4)
            DISPLAY '  (5) '  PARTES(5)
            DISPLAY '  (6) '  PARTES(6)
            DISPLAY '  (7) '  PARTES(7)
            DISPLAY '  (8) '  PARTES(8)
            DISPLAY '  (9) '  PARTES(9)
            DISPLAY '  (10) ' PARTES(10).

            MOVE FUNCTION LOWER-CASE(PARTES(1))
              TO PARTES(1).

            MOVE FUNCTION LOWER-CASE(PARTES(3))
              TO PARTES(3).

            MOVE FUNCTION LOWER-CASE(PARTES(5))
              TO PARTES(5).

            MOVE FUNCTION LOWER-CASE(PARTES(7))
              TO PARTES(7).

            MOVE FUNCTION LOWER-CASE(PARTES(9))
              TO PARTES(9).

            MOVE ALL SPACES                 TO TEXTO.

            STRING PARTES(1)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(2)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(3)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(4)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(5)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(6)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(7)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(8)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(9)  DELIMITED BY SPACE
                   ' '        DELIMITED BY SIZE
                   PARTES(10) DELIMITED BY SPACE
            INTO TEXTO.

            DISPLAY 'VALOR FINAL: ' TEXTO.
