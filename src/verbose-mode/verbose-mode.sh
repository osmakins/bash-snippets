#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple script to display some text in the center of the screen.        #
# -------------------------------------------------------------------------------- #

VERBOSE=false

# -------------------------------------------------------------------------------- #
# Enable verbose                                                                   #
# -------------------------------------------------------------------------------- #
# This is a simple function that will enable verbose mode based on a global        #
# variable. It does this by cloning stdout and stderr and then redirecting the     #
# original file descriptors to /dev/null.                                          #
# -------------------------------------------------------------------------------- #

function enable_verbose()
{
    exec 3>&1
    exec 4>&2

    if [[ "${VERBOSE}" = true ]]; then
        echo "Verbose output enabled"
    else
        echo "Verbose output disabled"
        exec 1>/dev/null
        exec 2>/dev/null
    fi
}

function run_tests()
{
    enable_verbose

    echo "I won't be visible when verbose=false"
    echo "I will be visible no matter what" 1>&3 2>&4
}

# -------------------------------------------------------------------------------- #
# Main()                                                                           #
# -------------------------------------------------------------------------------- #
# This is the actual 'script' and the functions/sub routines are called in order.  #
# -------------------------------------------------------------------------------- #

run_tests

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #

