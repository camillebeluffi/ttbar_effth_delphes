490c490
<       COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR,NAMPSO)
---
>       COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR,2)
562,565c562,567
<       JAMP(1,1)=+AMP(1)-1D0/6D0*AMP(2)-1D0/6D0*AMP(3)-1D0/6D0*AMP(4)
<      $ +AMP(5)+AMP(6)-1D0/6D0*AMP(7)-1D0/6D0*AMP(8)+AMP(9)+AMP(10)
<      $ +AMP(11)+AMP(12)
<       JAMP(2,1)=+1D0/2D0*(+AMP(2)+AMP(3)+AMP(4)+AMP(7)+AMP(8))
---
>       JAMP(1,1)=+AMP(6)-1D0/6D0*AMP(8)+AMP(10)+AMP(12)
>       JAMP(1,2)=+AMP(1)-1D0/6D0*AMP(2)-1D0/6D0*AMP(3)-1D0/6D0*AMP(4)
>      $ +AMP(5)-1D0/6D0*AMP(7)+AMP(9)+AMP(11)
>       
>       JAMP(2,1)=+1D0/2D0*(AMP(8))
>       JAMP(2,2)=+1D0/2D0*(+AMP(2)+AMP(3)+AMP(4)+AMP(7))
568c570
<       DO M = 1, NAMPSO
---
>       DO M = 1, 2 
574,576c576,578
<           DO N = 1, NAMPSO
<             IF (CHOSEN_SO_CONFIGS(SQSOINDEX1(M,N))) THEN
<               MATRIX1 = MATRIX1 + ZTEMP*DCONJG(JAMP(I,N))/DENOM(I)
---
>           DO N = 1, 2
>             IF ((M+N).EQ.3) THEN
>               MATRIX1=MATRIX1+ZTEMP*DCONJG(JAMP(I,N))/DENOM(I)
591,594c593,596
<         DO M = 1, NAMPSO
<           DO N = 1, NAMPSO
<             IF (CHOSEN_SO_CONFIGS(SQSOINDEX1(M,N))) THEN
<               JAMP2(I)=JAMP2(I)+JAMP(I,M)*DCONJG(JAMP(I,N))
---
>         DO M = 1, 2
>           DO N = 1, 2
>             IF ((M+N).EQ.3) THEN
>               JAMP2(I)=JAMP2(I)+ABS(JAMP(I,M)*DCONJG(JAMP(I,N)))
599a602
> 
