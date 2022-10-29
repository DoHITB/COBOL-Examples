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
           02 PARTES.
              03 PARTE-1           PIC X(20).
              03 PARTE-2           PIC X(20).
              03 PARTE-3           PIC X(20).
        77 TEXTO                   PIC X(60).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            DISPLAY '  EJEMPLO 1: '.
            MOVE 'HOLA'                     TO PARTE-1.
            MOVE 'DESDE'                    TO PARTE-2.
            MOVE 'COBOL'                    TO PARTE-3.

            STRING PARTE-1
                   PARTE-2
                   PARTE-3
            DELIMITED BY SIZE             INTO TEXTO.

            DISPLAY TEXTO.

            MOVE ALL SPACES                 TO TEXTO.
            DISPLAY '  EJEMPLO 2: '.
            MOVE 'HOLA *'                   TO PARTE-1.
            MOVE 'DESDE *'                  TO PARTE-2.
            MOVE 'COBOL *'                  TO PARTE-3.

            STRING PARTE-1
                   PARTE-2
                   PARTE-3
            DELIMITED BY '*'              INTO TEXTO.

            DISPLAY TEXTO.

            MOVE ALL SPACES                 TO TEXTO.
            DISPLAY '  EJEMPLO 3: '.
            MOVE 'HOLA'                     TO PARTE-1.
            MOVE 'DESDE'                    TO PARTE-2.
            MOVE 'COBOL'                    TO PARTE-3.

            STRING PARTE-1 DELIMITED BY SPACE
                   ', '    DELIMITED BY SPACE
                   ' '     DELIMITED BY SIZE
                   PARTE-2 DELIMITED BY SPACE
                   ' '     DELIMITED BY SIZE
                   PARTE-3 DELIMITED BY SPACE
                                          INTO TEXTO.

            DISPLAY TEXTO.
