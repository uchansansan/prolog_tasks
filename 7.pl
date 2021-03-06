%Задание7: предикат, вычисляющий по списку и числу, подсписок исходного списка, начинающийся с элемента с указанным номером

find_list([], _, _, []). % Если передали пустой сет

find_list([_|T1], Ind, Cur, [H1|T]):- % Крутим список пока не найдем нужный индекс
    Cur < Ind, !,
    Cur1 is Cur + 1,
    find_list(T1, Ind, Cur1, [H1|T]).

find_list(T1, Ind, Cur, T1):- % Копируем хвост в ответ
    Cur >= Ind, !.

start(Set, Ind, Answer):- % Стартовый предикат
    I is 1,
    find_list(Set, Ind, I, Answer).

%Пример: start([1,2,3],2,A)
%Ответ: A = [2, 3]
