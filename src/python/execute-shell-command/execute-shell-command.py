#!/usr/bin/env python

"""
A python function for executing shell commands and returning the outputs and exit status.
"""

from __future__ import print_function
import collections
import os
import subprocess


ExecutionResult = collections.namedtuple('ExecutionResult', 'status, stdout, stderr')


def execute_shell_command(cmd):
    """
    execute the shell command
    """
    kwargs = dict(args=cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=os.getcwd())
    process = subprocess.Popen(**kwargs)
    stdout, stderr = process.communicate()
    status = process.poll()
    return ExecutionResult(status, stdout, stderr)


def run_tests():
    """
    Test to see of the which command does as required - it SHOULD fail on 'flibble'
    """

    results = execute_shell_command('ls -l')

    print('Status: %s' % results.status)
    print('Stdout: %s' % results.stdout)
    print('Stderr: %s' % results.stderr)


if __name__ == '__main__':
    run_tests()
