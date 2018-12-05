#!/usr/bin/env python

"""
A python implementation of the UNIX which command.
"""

from __future__ import print_function
import os


def which(program):
    """
    Docs to go here
    """
    fpath, fname = os.path.split(program)
    if fpath:
        if os.path.exists(program) and os.access(program, os.X_OK):
            return program
    else:
        for path in os.environ["PATH"].split(os.pathsep):
            exe_file = os.path.join(path, program)
            if os.path.exists(exe_file) and os.access(exe_file, os.X_OK):
                return exe_file
    return None


def run_tests():
    """
    Test to see of the which command does as required - it SHOULD fail on 'flibble'
    """
    required_commands = ['touch', 'grep', 'wget', 'flibble']

    for command in required_commands:
        if which(command) is None:
            print("Error: %s is not installed" % command)


if __name__ == '__main__':
    run_tests()
