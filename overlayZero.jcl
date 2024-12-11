
//REPLACESAL  JOB (ACCOUNT),'Replace Salary',CLASS=A,MSGCLASS=A,NOTIFY=&SYSUID
//STEP01     EXEC PGM=SORT
//SYSPRINT   DD  SYSOUT=*
//SORTOUT    DD  DISP=OLD,DSN=YOUR.OUTPUT.FILE /* Output file where salary will be replaced with Packed Decimal 0 */
//SORTIN     DD  DISP=SHR,DSN=YOUR.INPUT.FILE /* Input file with emp-no, emp-name, and salary */
//SYSIN      DD *
  OPTION COPY
  INREC OVERLAY=(21:Z'F0') /* Replaces salary field (positions 21–24) with Packed Decimal 0 */
  OUTREC FIELDS=(1,20,21,4) /* Keeps emp-no and emp-name intact, replaces salary with Packed Decimal 0 */
/*


