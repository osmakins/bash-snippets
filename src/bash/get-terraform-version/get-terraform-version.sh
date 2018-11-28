#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple script to display errors, warning and success messages.         #
# -------------------------------------------------------------------------------- #

get_terraform_version()
{
    local terraform_version

    command=$(command -v "terraform")
    if [[ -z $command ]]; then
        echo "Terraform is not installed - Aborting"
        exit
    fi

    terraform_version=$(terraform --version)
    terraform_version=${terraform_version##* }                  # retain the part after the last space
    terraform_version=${terraform_version#?}                    # strip the first letter

    if [[ -z ${terraform_version} ]]; then
        echo "Could not determine terraform version - Aborting"
        exit
    fi

    echo ${terraform_version}
}

# -------------------------------------------------------------------------------- #
# Run Tests                                                                        #
# -------------------------------------------------------------------------------- #
# A VERY simple test function to ensure that it all works                          #
# -------------------------------------------------------------------------------- #

run_test()
{
    tf_version=$(get_terraform_version)
    echo $tf_version
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

