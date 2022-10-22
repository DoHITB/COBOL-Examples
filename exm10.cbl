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
                 04 BASE                PIC 9(01).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'.

            MOVE 1                      TO BASE.

            DISPLAY 'BASE: ' BASE.
            
            SET BASE UP BY 2.

            DISPLAY 'BASE: ' BASE.

            SET BASE DOWN BY 1.

            DISPLAY 'BASE: ' BASE.
