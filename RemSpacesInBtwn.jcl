//REMOVEWS  JOB (ACCOUNT),'REMOVE SPACES',CLASS=A,MSGCLASS=A
//STEP01    EXEC PGM=SORT
//SYSOUT    DD  SYSOUT=*
//SORTIN    DD  DSN=your.input.dataset,DISP=SHR
//SORTOUT   DD  DSN=your.output.dataset,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0)
//SYSIN     DD  *
  SORT FIELDS=COPY
  INREC FINDREP=(IN=C' ',OUT=C'')
/*

