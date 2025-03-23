import unittest
# Load the main code file
from regexTest import test_regex

# Import the function to be tested
class TestRegexPattern(unittest.TestCase):
    # Test case for an empty string
    def test_empty_string(self):
        self.assertFalse(test_regex(''))

    # Test case for valid strings
    def test_valid_strings(self):
        valid_cases = [
            '1111',    # ends with 1111
            '221',     # ends with 221
            '001111',  # ends with 1111
            '222221',  # ends with 221
            '2201111', # ends with 1111
            '01221',   # ends with 221
            '101111',  # ends with 1111
            '201111',  # ends with 1111
        ]
        for case in valid_cases:
            self.assertTrue(test_regex(case))

    # Test case for invalid strings
    def test_invalid_strings(self):
        invalid_cases = [
            '2111',     # contains 2111
            '1110',     # doesn't end with 1111 or 221
            '221100',   # doesn't end with 1111 or 221
            '222',      # doesn't end with 1111 or 221
            '012220',   # doesn't end with 1111 or 221
            '21111',    # contains 2111
            '000',      # doesn't end with 1111 or 221
            '221110',   # contains 2111
        ]
        for case in invalid_cases:
            self.assertFalse(test_regex(case))

if __name__ == '__main__':
    unittest.main()
