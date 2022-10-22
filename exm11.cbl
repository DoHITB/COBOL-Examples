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
       PROGRAM-ID. EXM10.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 OPERACION-1.
              03 OP-A.
                 04 BASE                PIC 9(09).
                 04 TEMPORAL            PIC 9(09).
                 04 DIGITOS             PIC 9(04).
                 04 RESTO               PIC 9(04).
                 04 CONTADOR            PIC 9(01).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.

            MOVE 859753164              TO BASE.
            MOVE 10                     TO DIGITOS.
            MOVE 1                      TO CONTADOR.

            DISPLAY 'BASE: ' BASE.
            DISPLAY 'DIGITOS: ' DIGITOS.
            DISPLAY 'CONTADOR: ' CONTADOR.

            DIVIDE DIGITOS            INTO BASE
            GIVING TEMPORAL      REMAINDER RESTO.

            DISPLAY 'EL/LOS ULTIMO/S '
                    CONTADOR
                    ' DIGITO/S DE BASE: '
                    RESTO.

            ADD 1                       TO CONTADOR.
            MULTIPLY 10                 BY DIGITOS.

            DISPLAY 'BASE: ' BASE.
            DISPLAY 'DIGITOS: ' DIGITOS.
            DISPLAY 'CONTADOR: ' CONTADOR.

            DIVIDE DIGITOS            INTO BASE
            GIVING TEMPORAL      REMAINDER RESTO.

            DISPLAY 'EL/LOS ULTIMO/S '
                    CONTADOR
                    ' DIGITO/S DE BASE: '
                    RESTO.

            ADD 1                       TO CONTADOR.
            MULTIPLY 10                 BY DIGITOS.

            DISPLAY 'BASE: ' BASE.
            DISPLAY 'DIGITOS: ' DIGITOS.
            DISPLAY 'CONTADOR: ' CONTADOR.

            DIVIDE DIGITOS            INTO BASE
            GIVING TEMPORAL      REMAINDER RESTO.

            DISPLAY 'EL/LOS ULTIMO/S '
                    CONTADOR
                    ' DIGITO/S DE BASE: '
                    RESTO.
