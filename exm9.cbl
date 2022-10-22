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
       PROGRAM-ID. EXM9.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 OPERACION-1.
              03 OP-A.
                 04 BASE                PIC 9(01).
                 04 SUB1                PIC 9(02).
                 04 SUB2                PIC 9(02).
                 04 SUB3                PIC 9(09).
                 04 SUB4                PIC 9(09).
              03 OP-B.
                 04 SUB5                PIC 9(09)V9.
           02 OPERACION-2.
              03 OP-C.
                 04 BASE                PIC 9(01).
                 04 SUB1                PIC 9(02).
                 04 SUB2                PIC 9(02).
                 04 SUB3                PIC 9(09).
                 04 SUB4                PIC 9(09).
              03 OP-D.
                 04 SUB5                PIC 9(09).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.

            MOVE 10                     TO SUB1 OF OP-A.
            MOVE 11                     TO SUB1 OF OP-C.
            MOVE 20                     TO SUB2 OF OP-A.
            MOVE 05                     TO SUB2 OF OP-C.
            MOVE 27                     TO SUB3 OF OP-A.
            MOVE 01                     TO SUB3 OF OP-C.
            MOVE 05                     TO SUB4 OF OP-A.
            MOVE 15                     TO SUB4 OF OP-C.

            DISPLAY 'VALORES INICIALES-1: '
                    BASE OF OPERACION-1
                    ' ' 
                    SUB1 OF OPERACION-1
                    ' '
                    SUB2 OF OPERACION-1
                    ' '
                    SUB3 OF OPERACION-1
                    ' '
                    SUB4 OF OPERACION-1
                    ' '
                    SUB5 OF OPERACION-1.

            DISPLAY 'VALORES INICIALES-2: '
                    BASE OF OPERACION-2
                    ' ' 
                    SUB1 OF OPERACION-2
                    ' '
                    SUB2 OF OPERACION-2
                    ' '
                    SUB3 OF OPERACION-2
                    ' '
                    SUB4 OF OPERACION-2
                    ' '
                    SUB5 OF OPERACION-2.

            SUBTRACT SUB1 OF OP-A     FROM SUB1 OF OP-C.
            SUBTRACT SUB2 OF OP-A     FROM SUB2 OF OP-C.
            SUBTRACT SUB3 OF OP-A     FROM SUB3 OF OP-C
            ON SIZE ERROR DISPLAY 'ERROR!'.
            SUBTRACT SUB4 OF OP-A     FROM SUB4 OF OP-C
            GIVING SUB5 OF OP-B.

            DISPLAY 'VALORES FINALES-1: '
                    BASE OF OPERACION-1
                    ' ' 
                    SUB1 OF OPERACION-1
                    ' '
                    SUB2 OF OPERACION-1
                    ' '
                    SUB3 OF OPERACION-1
                    ' '
                    SUB4 OF OPERACION-1
                    ' '
                    SUB5 OF OPERACION-1.

            DISPLAY 'VALORES FINALES-2: '
                    BASE OF OPERACION-2
                    ' ' 
                    SUB1 OF OPERACION-2
                    ' '
                    SUB2 OF OPERACION-2
                    ' '
                    SUB3 OF OPERACION-2
                    ' '
                    SUB4 OF OPERACION-2
                    ' '
                    SUB5 OF OPERACION-2.
