%Задание3: цикл for

f(X,Y):- Y is X*X*X. % Полезный предикат, чтобы что-то прикольное выводило(в данном случае куб числа)
for(I, N):- % Цикл, от I до I < N , I++
    I is N; 
    I < N,
    write('x='), write(I),write(' y='), f(I,Y), write(Y), write('\n'),  
    I1 is I + 1 ,
    for(I1, N),!.
    
%Пример: for(0,3)
%Ответ: x=0 y=0 x=1 y=1 x=2 y=8
