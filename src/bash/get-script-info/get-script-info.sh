#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple script to show how to get get the script base path and name.    #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Get Script Info                                                                  #
# -------------------------------------------------------------------------------- #
# Work out some basic facts about the script, how it was called, where it lives,   #
# what it is called etc.                                                           #
# -------------------------------------------------------------------------------- #

get_script_info()
{
    sourced=false

    if [[ $0 != $BASH_SOURCE ]]; then
        sourced=true
    fi

    readonly sourced

    readonly invoked_file="${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
    readonly invoked_path="$(dirname "${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}")"

    readonly full_path="$( cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
    readonly file_name=$(basename "${BASH_SOURCE[0]}")

    declare -g sourced
    declare -g invoked_file
    declare -g invoked_path
    declare -g full_path
    declare -g file_name
}

# -------------------------------------------------------------------------------- #
# Run Tests                                                                        #
# -------------------------------------------------------------------------------- #
# A VERY simple test function to ensure that it all works                          #
# -------------------------------------------------------------------------------- #

run_test()
{
    get_script_info

    echo "Sourced? : ${sourced}"
    echo "Invoked File: ${invoked_file}"
    echo "Invoked Path: ${invoked_path}"
    echo "Full Path: ${full_path}"
    echo "Script Name: ${file_name}"
}

# -------------------------------------------------------------------------------- #
# Main()                                                                           #
# -------------------------------------------------------------------------------- #
# This is the actual 'script' and the functions/sub routines are called in order.  #
# -------------------------------------------------------------------------------- #

run_test

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #

