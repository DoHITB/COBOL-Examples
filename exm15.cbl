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
       PROGRAM-ID. EXM15.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        77 TEXTO                   PIC X(20).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            MOVE 'HOLA DESDE COBOL'               TO TEXTO.

            DISPLAY 'TEXTO: ' TEXTO.
            INSPECT TEXTO CONVERTING 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
                                  TO 'abcdefghijklmnopqrstuvwxyz'.
            DISPLAY 'TEXTO: ' TEXTO.

            INSPECT TEXTO REPLACING FIRST 'hola'
                                 BY       'adio'.
            DISPLAY 'TEXTO: ' TEXTO.

            INSPECT TEXTO REPLACING ALL 'o'
                                     BY 'z'.
            DISPLAY 'TEXTO: ' TEXTO.

            INSPECT TEXTO REPLACING FIRST 'z'
                                 BY       'y'.

            DISPLAY 'TEXTO: ' TEXTO.
