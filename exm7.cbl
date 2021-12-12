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
       PROGRAM-ID. EXM7.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 FECHA.
              03 F-ANYO                 PIC 9(02).
           02 OPERACION.
              03 BASE                   PIC 9(01).
              03 SUM1                   PIC 9(02).
              03 SUM2                   PIC 9(02).
              03 SUM3                   PIC 9(09).
              03 SUM4                   PIC 9(09).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.
            MOVE 1                      TO BASE.
            MOVE 10                     TO SUM1.
            MOVE 20                     TO SUM2.
            MOVE 30                     TO SUM3.
            MOVE 40                     TO SUM4.

            DISPLAY 'VALORES INICIALES: '
                    BASE
                    ' ' 
                    SUM1
                    ' '
                    SUM2
                    ' '
                    SUM3
                    ' '
                    SUM4.

            ADD 10 BASE SUM1 SUM2 SUM2  TO SUM3
                                           SUM4.

            DISPLAY 'VALORES FINALES: '
                    BASE
                    ' ' 
                    SUM1
                    ' '
                    SUM2
                    ' '
                    SUM3
                    ' '
                    SUM4.
