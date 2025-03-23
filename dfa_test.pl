% Load the main file
:- ["dfa"].

% Test cases:

% Empty list
test0 :-
    start_automaton([]).

% Accepting test cases (must end in 1111 or 221, and must not contain 2111)

test1 :-
    start_automaton([1,1,1,1]).  %  Ends in 1111
test2 :-
    start_automaton([2,2,1]).     %  Ends in 221
test3 :-
    start_automaton([0,1,1,1,1]).  %  Ends in 1111
test4 :-
    start_automaton([0,2,2,1]).  %  Ends in 221
test5 :-
    start_automaton([1,0,1,1,1,1]).  %  Ends in 1111

% Incorrect test cases

test6 :-
    start_automaton([1,1,1,0]).  %  Does not end in 1111 or 221
test7 :-
    start_automaton([2,1,1,1,1]).  %  Contains 2111
test8 :-
    start_automaton([0,2,2,0]).  %  Does not end in 1111 or 221
test9 :-
    start_automaton([2,1,0,1]).  %  Does not end in 1111 or 221
test10 :-
    start_automaton([0,1,1,0,1]).  %  Does not end in 1111 or 221
test11 :-
    start_automaton([2,1,1,1,0]).  %  Contains 2111
test12 :-
    start_automaton([1,2,1,0]).  %  Does not end in 1111 or 221
test13 :-
    start_automaton([2,1,0,1,2]).  %  Does not end in 1111 or 221
test14 :-
    start_automaton([0,0,0,0]).  %  Does not end in 1111 or 221
test15 :-
    start_automaton([1,0,2,1]).  %  Does not end in 1111 or 221

% Run test
run_tests :-
    write('Test 0: '), (test0 -> write('Success') ; write('Failed')), nl,
    write('Test 1: '), (test1 -> write('Success') ; write('Failed')), nl,
    write('Test 2: '), (test2 -> write('Success') ; write('Failed')), nl,
    write('Test 3: '), (test3 -> write('Success') ; write('Failed')), nl,
    write('Test 4: '), (test4 -> write('Success') ; write('Failed')), nl,
    write('Test 5: '), (test5 -> write('Success') ; write('Failed')), nl,
    write('Test 6: '), (test6 -> write('Success') ; write('Failed')), nl,
    write('Test 7: '), (test7 -> write('Success') ; write('Failed')), nl,
    write('Test 8: '), (test8 -> write('Success') ; write('Failed')), nl,
    write('Test 9: '), (test9 -> write('Success') ; write('Failed')), nl,
    write('Test 10: '), (test10 -> write('Success') ; write('Failed')), nl,
    write('Test 11: '), (test11 -> write('Success') ; write('Failed')), nl,
    write('Test 12: '), (test12 -> write('Success') ; write('Failed')), nl,
    write('Test 13: '), (test13 -> write('Success') ; write('Failed')), nl,
    write('Test 14: '), (test14 -> write('Success') ; write('Failed')), nl,
    write('Test 15: '), (test15 -> write('Success') ; write('Failed')), nl.