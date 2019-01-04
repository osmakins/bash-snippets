#!/usr/bin/env python

"""
A python script to compare version numbers
"""

import re


def version_compare(version1, version2):
    """
    Compare 2 version strings.
    """
    def normalize(v):
        return [int(x) for x in re.sub(r'(\.0+)*$', '', v).split(".")]
    return cmp(normalize(version1), normalize(version2))


def run_tests():
    """
    Tests
    """

    assert version_compare("1", "1") == 0					# nosec
    assert version_compare("2.1", "2.2") < 0					# nosec
    assert version_compare("3.0.4.10", "3.0.4.2") > 0				# nosec
    assert version_compare("4.08", "4.08.01") < 0				# nosec
    assert version_compare("3.2.1.9.8144", "3.2") > 0				# nosec
    assert version_compare("3.2", "3.2.1.9.8144") < 0				# nosec
    assert version_compare("1.2", "2.1") < 0					# nosec
    assert version_compare("2.1", "1.2") > 0					# nosec
    assert version_compare("5.6.7", "5.6.7") == 0				# nosec
    assert version_compare("1.01.1", "1.1.1") == 0				# nosec
    assert version_compare("1.1.1", "1.01.1") == 0				# nosec
    assert version_compare("1", "1.0") == 0					# nosec
    assert version_compare("1.0", "1") == 0					# nosec
    assert version_compare("1.0", "1.0.1") < 0					# nosec
    assert version_compare("1.0.1", "1.0") > 0					# nosec
    assert version_compare("1.0.2.0", "1.0.2") == 0				# nosec

    #
    # The following should fail
    #
    try:
        assert version_compare("1.0.1", "1.0") < 0				# nosec
    except AssertionError:
        print("It failed as expected")


if __name__ == '__main__':
    run_tests()
