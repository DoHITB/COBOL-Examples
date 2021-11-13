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
       PROGRAM-ID. EXM6.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VARIABLES.
           02 FECHA.
              03 F-ANYO                 PIC 9(02).
              03 F-MES                  PIC 9(02).
              03 F-DIA                  PIC 9(02).
           02 FECHA-YYYYMMDD.
              03 F-ANYO                 PIC 9(04).
              03 F-MES                  PIC 9(02).
              03 F-DIA                  PIC 9(02).
           02 TIEMPO.
              03 T-HORA                 PIC 9(02).
              03 T-MINUTO               PIC 9(02).
              03 T-SEGUNDO              PIC 9(02).
              03 T-CENT                 PIC 9(02).
           02 LINEA.
              03 FACTOR                 PIC 9(04).
              03 FILLER                 PIC X(76).

       PROCEDURE DIVISION.
       MAINLINE.       
            DISPLAY 'INICIO DEL PROGRAMA'
            ACCEPT FECHA                   FROM DATE.
            ACCEPT FECHA-YYYYMMDD          FROM DATE YYYYMMDD.
            ACCEPT TIEMPO                  FROM TIME.
            
            DISPLAY 'FECHA DEL DÍA (Y2K): '
                    F-DIA                    OF FECHA
                    '.'
                    F-MES                    OF FECHA
                    '.'
                    F-ANYO                   OF FECHA.

            DISPLAY 'FECHA DEL DÍA (YYYYMMDD): '
                    F-DIA                    OF FECHA-YYYYMMDD
                    '.'
                    F-MES                    OF FECHA-YYYYMMDD
                    '.'
                    F-ANYO                   OF FECHA-YYYYMMDD.

            DISPLAY 'TIEMPO (HHMMSSCC): '
                    T-HORA
                    ':'
                    T-MINUTO
                    ':'
                    T-SEGUNDO
                    '.'
                    T-CENT.

            DISPLAY 'INTRODUCE FACTOR: '            
            ACCEPT FACTOR                  FROM SYSIN.

            DISPLAY 'FACTOR: '
                    FACTOR

            STOP RUN.
