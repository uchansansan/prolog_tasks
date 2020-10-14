% replace([входной список],значение,заменяемое значение,[результирующий список]).
replace([],_,_,[]).%если список пустой
replace([X],X,N,[N]).
replace([X|St],X,N,[N|Lt]):-replace(St,X,N,Lt).
replace([Y|St],X,N,[Y|Lt]):-replace(St,X,N,Lt).
