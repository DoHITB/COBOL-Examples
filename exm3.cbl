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
       PROGRAM-ID. EXM3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 PERSONA.
           02 NOMBRE-COMPLETO.
              03 NOMBRE                 PIC X(10) VALUE 'NOMBRE'.
              03 P-APELLIDO             PIC X(10) VALUE 'APELLIDO1'.
           02 F-NACIMIENTO.
              03 DIA                    PIC 9(02) VALUE 25.
              03 FILLER                 PIC X(01) VALUE '/'.
              03 MES                    PIC 9(02) VALUE 11.
              03 FILLER                 PIC X(01) VALUE '/'.
              03 ANYO                   PIC 9(04) VALUE 1990.
        77 CONTADOR-2                   PIC 9(10) VALUE 987654321.

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'
            DISPLAY 'TE LLAMAS: ' PERSONA(1:10).
            DISPLAY 'TU APELLIDO ES: ' PERSONA(11:10).
            DISPLAY 'LAS 3 ULTIMAS LETRAS DEL APELLIDO: ' 
                    P-APELLIDO(7:).

            STOP RUN.
