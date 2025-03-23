"""
Author: Roberto Serna
Date: 17/03/2025
Project: Python regex tester
purpose of the project: Test the regex created based on the DFA
"""

"""
RULESET:
- Only has 0, 1 or 2
- but must end in 1111 or 221 
- and must no have 2111
"""

import re

def test_regex(test_string):
    """
    Run a test that verifies a string using our regex pattern

    Args:
        test_string (str): Test String.

    Returns:
        None: Prints a message indicating whether the input 
        string is part of the language. 
    """
    regex_pattern = r"^(?!.*2111)[012]*(1111|221)$"
    boolVal = bool(re.fullmatch(regex_pattern, test_string))
    print(boolVal)
    return boolVal

def main():
    """
    Interact with the user and test input strings.

    Args:
        None.

    Returns:
        None: Exits the program when the user inputs 'exit'.
    """
    while True:
        test_string = input("Enter a string composed of 0s, 1s, and 2s (or type 'q' to quit): ")
        if test_string.lower() == 'q':
            break
        test_regex(test_string)

# Runs the main function if the script is executed directly.
if __name__ == "__main__":
    main()
