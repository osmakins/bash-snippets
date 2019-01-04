#!/usr/bin/env python

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# Suffix a given number with the correct ordinal.                                  #
# -------------------------------------------------------------------------------- #

from __future__ import print_function

import sys


# -------------------------------------------------------------------------------- #
# Ordinal                                                                          #
# -------------------------------------------------------------------------------- #
# Calculate the correct ordinal for a given number.                                #
# -------------------------------------------------------------------------------- #

def ordinal(num):
    SUFFIXES = {1: 'st', 2: 'nd', 3: 'rd'}

    # I'm checking for 10-20 because those are the digits that
    # don't follow the normal counting scheme.
    if 10 <= num % 100 <= 20:
        suffix = 'th'
    else:
        # the second parameter is a default.
        suffix = SUFFIXES.get(num % 10, 'th')
    return str(num) + suffix


# -------------------------------------------------------------------------------- #
# Run Tests                                                                        #
# -------------------------------------------------------------------------------- #
# Run tests to ensure that the code works correctly.                               #
# -------------------------------------------------------------------------------- #

def run_tests():
    for i in range(1, 25):
        print(ordinal(i))


# -------------------------------------------------------------------------------- #
# Main() really this time                                                          #
# -------------------------------------------------------------------------------- #
# This runs when the application is run from the command it grabs sys.argv[1:]     #
# which is everything after the program name and passes it to main the return      #
# value from main is then used as the argument to sys.exit, which you can test for #
# in the shell. program exit codes are usually 0 for ok, and non-zero for          #
# something going wrong.                                                           #
# -------------------------------------------------------------------------------- #

if __name__ == "__main__":
    sys.exit(run_tests())

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #
