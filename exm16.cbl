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
       PROGRAM-ID. EXM16.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        77 TEXTO                   PIC X(20) VALUE LOW-VALUES.
        77 CONT                    PIC 9(09) VALUE ZEROES.
        77 CONT-Z                  PIC ZZZ,ZZZ,ZZ9.
        77 CONT-NUM                PIC 9(01) VALUE ZEROES.
        77 CONT-DISPLAY            PIC X(11) VALUE SPACES.

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
      *           ----+----1----+----2
            MOVE 'HOLA DESDE COBOL'         TO TEXTO.
            INSPECT TEXTO TALLYING CONT FOR CHARACTERS.

            DISPLAY 'HAY ' CONT ' CARACTERES'.

            MOVE CONT                       TO CONT-Z.
            INSPECT CONT-Z TALLYING CONT-NUM FOR LEADING SPACES.

            DISPLAY 'HAY ' CONT-NUM ' ESPACIOS'
                    ' EN CONT-Z (ZZZ,ZZZ,ZZ9): >'
                    CONT-Z
                    '<'.

            MOVE CONT-Z(CONT-NUM + 1:)      TO CONT-DISPLAY.

            DISPLAY 'DISPLAY SIN ESPACIOS A LA IZQUIERDA'
                    'DE CONT-Z: >'
                    CONT-DISPLAY
                    '<'.
