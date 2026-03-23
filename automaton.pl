% Carlos Arturo Gomez Ayala | A01711027
% Prof. Titular: Dr. Benjamin Valdes Aguirre
% Implementation of Computational Methods (Gpo 602)
% ITESM

% automaton for elvish words
% words: dae, dagor, daro, del, din

% transitions
move(q0, q1, d).
move(q1, q2, a).
move(q1, q7, e).
move(q1, q9, i).
move(q2, qf, e).
move(q2, q4, g).
move(q4, q5, o).
move(q5, qf, r).
move(q2, q6, r).
move(q6, qf, o).
move(q7, qf, l).
move(q9, qf, n).

accepting_state(qf).

go_over_automaton(List) :-
    automaton_check(List, q0).

automaton_check([], State) :-
    accepting_state(State).

automaton_check([H|T], State) :-
    move(State, Next, H),
    automaton_check(T, Next).

% tests
test_dae :-
    write('dae - Expected: true'), nl,
    go_over_automaton([d,a,e]).

test_dagor :-
    write('dagor - Expected: true'), nl,
    go_over_automaton([d,a,g,o,r]).

test_daro :-
    write('daro - Expected: true'), nl,
    go_over_automaton([d,a,r,o]).

test_del :-
    write('del - Expected: true'), nl,
    go_over_automaton([d,e,l]).

test_din :-
    write('din - Expected: true'), nl,
    go_over_automaton([d,i,n]).

test_dog :-
    write('dog - Expected: false'), nl,
    go_over_automaton([d,o,g]).

test_hello :-
    write('hello - Expected: false'), nl,
    go_over_automaton([h,e,l,l,o]).
