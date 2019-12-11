[![Build Status](https://img.shields.io/travis/AntiPhotonltd/bash-snippets/master.svg)](https://travis-ci.org/AntiPhotonltd/bash-snippets)
[![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)
[![Release](https://img.shields.io/github/release/AntiPhotonltd/bash-snippets.svg)](https://github.com/AntiPhotonltd/bash-snippets/releases/latest)
[![Github commits (since latest release)](https://img.shields.io/github/commits-since/AntiPhotonltd/bash-snippets/latest.svg)](https://github.com/AntiPhotonltd/bash-snippets/commits)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/AntiPhotonltd/bash-snippets.svg)](https://github.com/AntiPhotonltd/bash-snippets)
[![GitHub contributors](https://img.shields.io/github/contributors/AntiPhotonltd/bash-snippets.svg)](https://github.com/AntiPhotonltd/bash-snippets)

# Bash Snippets

This is a collection of useful(ish) bash snippets. The snippets are all simple self-contained pieces of code (a class or subroutine), but non of them are large enough to require having a repository in their own right.

## Bash Snippets

| Name | Description |
| --- | --- |
| [array-contains.sh](src/array-contains/array-contains.sh) | Check to see if an array contains a specific value. |
| [array-to-string.sh](src/array-to-string/array-to-string.sh) | Concert an array to a string with a custom seperator and a final optional value. | 
| [center-text.sh](src/center-text/center-text.sh) | Center any given text on the screen (optional define the screen width). |
| [check-prerequisites.sh](src/check-prerequisites/check-prerequisites.sh) | Check prerequisite commands are installed. |
| [compare-versions.sh](src/compare-versions/compare-versions.sh) | Compare two version strings with optional custom delimiter. |
| [contains.sh](src/contains/contains.sh) | Check to see if one string contains another. |
| [error-messages.sh](src/error-messages/error-messages.sh) | Display error, warning and success messages. |
| [get-confirmation.sh](src/get-confirmation/get-confirmation.sh) | Get user confirmation for an action. |
| [get-git-root.sh](src/get-git-root/get-git-root.sh) | Get the root directory of a given git repo (and handle correctly when it isn't a git repo). |
| [get-script-info.sh](src/get-script-info/get-script-info.sh) | Get information about a script (full path and script name). |
| [get-terraform-version.sh](src/get-terraform-version/get-terraform-version.sh) | Get the current terraform version. |
| [is-git-repo.sh](src/is-git-repo/is-git-repo.sh) | Check if a given directory contains a git repo. |
| [rollingback.sh](src/rollingback/rollingback.sh) | Using signals to create rollback functions for cleaner scripting. |
| [strict-mode.sh](src/strict-mode/strict-mode.sh) | An example of a 'strict' mode setup for bash scripts. |
| [sudo-librarian-puppet.sh](src/sudo-librarian-puppet/sudo-librarian-puppet.sh ) | Run librarian-puppet via sudo without changing default sudoers file (Debian 9 / Puppet 5). |
| [terminal-or-not.sh](src/terminal-or-not/terminal-or-not.sh) | A script to allow to determine if your script is attached to a terminal, pipe or redirection. |
| [using-colour.sh](src/using-colour/using-colour.sh) | An example of how to use colour (see [bash-colour-include](https://github.com/WolfSoftware/bash-colour-include) for a full working solution). |
| [using-set.sh](src/using-set/using-set.sh) | Using 'set' for more robust shell scripting. |
| [variable-replace.sh](src/variable-replace/variable-replace.sh) | Replace template variables in a file with values from an associative array. |
