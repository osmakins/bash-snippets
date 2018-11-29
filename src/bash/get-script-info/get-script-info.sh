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
    local ro=${1:-false}

    [[ $0 != "${BASH_SOURCE[0]}" ]] && IS_SOURCED=true || IS_SOURCED=false

    INVOKED_FILE="${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
    INVOKED_PATH="$(dirname "${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}")"
    FULL_PATH="$( cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
    FILE_NAME=$(basename "${BASH_SOURCE[0]}")

    if [[ "${ro}" = true ]]
    then
        readonly IS_SOURCED
        readonly INVOKED_FILE
        readonly INVOKED_PATH
        readonly FULL_PATH
        readonly FILE_NAME
    fi

    export IS_SOURCED
    export INVOKED_FILE
    export INVOKED_PATH
    export FULL_PATH
    export FILE_NAME
}

# -------------------------------------------------------------------------------- #
# Run Tests                                                                        #
# -------------------------------------------------------------------------------- #
# A VERY simple test function to ensure that it all works                          #
# -------------------------------------------------------------------------------- #

run_test()
{
    get_script_info

    echo "Sourced? : ${IS_SOURCED}"
    echo "Invoked File: ${INVOKED_FILE}"
    echo "Invoked Path: ${INVOKED_PATH}"
    echo "Full Path: ${FULL_PATH}"
    echo "Script Name: ${FILE_NAME}"
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

