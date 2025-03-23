transition(s,c,0).
transition(s,a,1).
transition(s,b,2).
transition(a,c,0).
transition(a,d,1).
transition(a,b,2).
transition(b,c,0).
transition(b,e,1).
transition(b,f,2).
transition(c,c,0).
transition(c,a,1).
transition(c,b,2).
transition(d,c,0).
transition(d,g,1).
transition(d,b,2).
transition(e,c,0).
transition(e,h,1).
transition(e,b,2).
transition(f,c,0).
transition(f,i,1).
transition(f,f,2).
transition(g,c,0).
transition(g,j,1).
transition(g,b,2).
transition(h,c,0).
transition(h,k,1).
transition(h,b,2).
transition(i,c,0).
transition(i,h,1).
transition(i,b,2).
transition(j,c,0).
transition(j,j,1).
transition(j,b,2).
transition(k,k,0).
transition(k,k,1).
transition(k,k,2).


final_state(i).
final_state(j).


start_automaton(Word) :-
    process_word(Word, s).

process_word([], CurrentState) :-
    final_state(CurrentState).

process_word([Value|Rest], CurrentState) :-
    transition(CurrentState, NextState, Value),
    process_word(Rest, NextState).