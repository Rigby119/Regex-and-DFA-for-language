
# Lexical Analysis Parser: Detecting a Custom Language

## Description

In this project, we developed a lexical analysis parser aimed at detecting a custom language composed of the digits `0`, `1`, and `2`. The language allows all combinations of these digits but with specific constraints. We aim to identify valid strings while prohibiting the sequence '2111' and also making sure that it ended with '1111' or '221'. Our solution leverages Deterministic Finite Automata (DFA) and Regular Expressions (Regex) to parse and analyze the language.

To achieve this, we implemented both approaches—DFA for its efficiency and structure, and Regular Expressions for simplicity and compactness. The final implementation includes testing and documentation to ensure correctness using python, and the libraries 're' for regex and 'unittest' for testing.

## Models

![DFA made by hand](https://i.imgur.com/3VDGv4v.jpeg)
![DFA polished](https://i.imgur.com/C3222T8.png)
### DFA

The DFA (Deterministic Finite Automaton) was constructed to represent the same language. The DFA comprises five key elements:

1.  **States** (`Q`) = `[S,A,B,C,D,E,F,G,H,I,J,K]`
    
2.  **Alphabet** (`Σ`) = `[0,1,2]`
    
3.  **Transition Function** (`δ`) as seen in picture 'DFA made by hand' in the below table
    
4.  **Start State** (`q0`) = `S`
    
5.  **Accepting States** (`F`) = `[I,J]`

The construction of the DFA began with the smallest possible expressions and progressively incorporated the language's constraints. This resulted in the final DFA, which accepts or rejects strings based on whether they conform to the specified rules.

### Prolog DFA Implementation

The Prolog implementation of the DFA accepts strings composed of the digits `0`, `1`, and `2` with the same constraints: prohibiting '2111', and ensuring the string ends with '1111' or '221'.

The Prolog code uses states (`S`, `A`, `B`, etc.), transitions between them, and final states (`I` and `J`) to validate whether the input string adheres to the language's rules.

#### Code Explanation

-   **Transition rules** define how the automaton moves between states based on the current input symbol.
    
-   **Final states** (`I` and `J`) represent the accepting states where the string is considered valid.
    
-   **Recursion** in the `process_word` predicate is used to process each character of the input string and move through the DFA's states until the entire string is processed.

### Running the Prolog DFA

To run the Prolog DFA, follow these steps:

1.  Open SWI-Prolog.
    
2.  Open the files as consult... `dfa.pl` and `dfa_test.pl`.
   
4.  To test the automaton, you can call the `start_automaton` predicate with a list representing the input string:
    
    `start_automaton([1,1,1,1]).` 
    
    The output will indicate whether the string is accepted by the DFA.

### Regular Expression

The regular expression that defines our language, considering the specified constraints, is as follows:

`^(?!.*2111)[012]*(1111|221)$` 

### Explanation of the Regular Expression
1.  `(?!.*2111)`: This ensures that the string does not contain the prohibited pattern.
    
2.  `[012]*`: This part allows any combination of the digits '0', '1', and '2', ensuring that there is at least one character from this set.

3. `(1111|221)`: This part ensures that the string finishes with any of the wanted patterns

To test the regular expression, we use the Python 're' module. The following is how you can execute the program:

### Running the Regular Expression

1.  Run the file:
    
    `python3 regex_python.py` 
    
2.  Enter input:
    
    `Enter a string composed of 0s, 1s, and 2s (or type 'q' to quit):` 
    
    Output:

    `True`
    or
	`False`    
    
    To exit, type: `q` 

## Tests

### Prolog DFA Tests

To run the tests for the Prolog DFA implementation:

1.  Inside the Prolog interpreter, once you consult both `dfa.pl` and `dfa_test.pl`, you can run each test by calling the relevant test predicates, like:
    
    `run_tests.` 
    
    Each test will output either `Success` or `Failed`.

### Regular Expression Tests

To test the regular expression:

1.  Run the file:
    
    `python3 testing.py` 
    
The output shows whether all test cases pass, e.g.,:

`... Ran 3 tests in 0.001s
OK` 

## Analysis

### Time Complexity

The time complexity is linear with respect to the input size, i.e., O(n), where `n` is the length of the input string. This is because each character in the input string is checked once, and the constraints are applied with constant time complexity.

## Conclusion

Both the DFA and Regular Expression implementations offer efficient ways to solve the problem. Regular Expressions are simpler and more compact for straightforward patterns, but DFA implementations provide more flexibility and are easier to scale with complex patterns and constraints.

Given the simplicity of the constraints in this project, Regular Expressions were found to be the most optimal solution. However, for more complex cases, DFA implementations may be preferable.