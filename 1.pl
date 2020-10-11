sum(N,S):-s(1,N,S).
 
s(I,N,0):-I>N,!.
s(I,N,S):-I1 is I+2,s(I1,N,S1),S is S1+I.
