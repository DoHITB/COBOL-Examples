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
       PROGRAM-ID. EXM8.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 FECHA.
              03 F-ANYO                 PIC 9(02).
           02 OPERACION-1.
              03 OP-A.
                 04 BASE                PIC 9(01).
                 04 SUM1                PIC 9(02).
                 04 SUM2                PIC 9(02).
                 04 SUM3                PIC 9(09).
                 04 SUM4                PIC 9(09).
              03 OP-B.
                 04 SUM5                PIC 9(01)V9.
           02 OPERACION-2.
              03 OP-A.
                 04 BASE                PIC 9(01).
                 04 SUM1                PIC 9(02).
                 04 SUM2                PIC 9(02).
                 04 SUM3                PIC 9(09).
                 04 SUM4                PIC 9(09).
              03 OP-B.
                 04 SUM5                PIC 9(01).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            MOVE 9                      TO BASE OF OPERACION-1.
            MOVE 10                     TO SUM1 OF OPERACION-1.
            MOVE 20                     TO SUM2 OF OPERACION-1.
            MOVE 30                     TO SUM3 OF OPERACION-1.
            MOVE 40                     TO SUM4 OF OPERACION-1.
            MOVE OP-A OF OPERACION-1    TO OP-A OF OPERACION-2.

            MOVE 1.9                    TO SUM5 OF OPERACION-1.
            MOVE 1                      TO SUM5 OF OPERACION-2

            DISPLAY 'VALORES INICIALES-1: '
                    BASE OF OPERACION-1
                    ' ' 
                    SUM1 OF OPERACION-1
                    ' '
                    SUM2 OF OPERACION-1
                    ' '
                    SUM3 OF OPERACION-1
                    ' '
                    SUM4 OF OPERACION-1
                    ' '
                    SUM5 OF OPERACION-1.

            DISPLAY 'VALORES INICIALES-2: '
                    BASE OF OPERACION-2
                    ' ' 
                    SUM1 OF OPERACION-2
                    ' '
                    SUM2 OF OPERACION-2
                    ' '
                    SUM3 OF OPERACION-2
                    ' '
                    SUM4 OF OPERACION-2
                    ' '
                    SUM5 OF OPERACION-2.

            ADD BASE OF OPERACION-1     TO BASE OF OPERACION-2
                ON SIZE ERROR MOVE 0    TO BASE OF OPERACION-2.

            DISPLAY 'BASE: ' BASE OF OPERACION-2.

            ADD CORRESPONDING OPERACION-1
             TO OPERACION-2.

            DISPLAY 'SUM5: ' SUM5 OF OPERACION-2.

            MOVE 1.9                    TO SUM5 OF OPERACION-1.
            MOVE 1                      TO SUM5 OF OPERACION-2.

            ADD SUM5 OF OPERACION-1     TO SUM5 OF OPERACION-2 ROUNDED.

            DISPLAY 'SUM5: ' SUM5 OF OPERACION-2.

            DISPLAY 'VALORES FINALES-1: '
                    BASE OF OPERACION-1
                    ' ' 
                    SUM1 OF OPERACION-1
                    ' '
                    SUM2 OF OPERACION-1
                    ' '
                    SUM3 OF OPERACION-1
                    ' '
                    SUM4 OF OPERACION-1
                    ' '
                    SUM5 OF OPERACION-1.

            DISPLAY 'VALORES FINALES-2: '
                    BASE OF OPERACION-2
                    ' ' 
                    SUM1 OF OPERACION-2
                    ' '
                    SUM2 OF OPERACION-2
                    ' '
                    SUM3 OF OPERACION-2
                    ' '
                    SUM4 OF OPERACION-2
                    ' '
                    SUM5 OF OPERACION-2.
      
