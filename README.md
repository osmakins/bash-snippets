[![Build Status](https://img.shields.io/travis/SneakyCode/bash-snippets/master?style=for-the-badge&logo=travis)](https://travis-ci.org/SneakyCode/bash-snippets)
[![Software License](https://img.shields.io/badge/license-MIT-blueviolet?style=for-the-badge)](LICENSE.md)
[![Release](https://img.shields.io/github/release/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github&label=Latest%20Release)](https://github.com/SneakyCode/bash-snippets/releases/latest)
[![Last Release](https://img.shields.io/github/release-date/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github)](https://github.com/SneakyCode/bash-snippets/releases/latest)
[![Github commits (since latest release)](https://img.shields.io/github/commits-since/SneakyCode/bash-snippets/latest?color=blueviolet&style=for-the-badge&logo=github)](https://github.com/SneakyCode/bash-snippets/commits)
[![Last Commit](https://img.shields.io/github/last-commit/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github)](https://github.com/SneakyCode/bash-snippets/commits/master)
[![Code Size](https://img.shields.io/github/languages/code-size/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github)](#)
[![Repo Size](https://img.shields.io/github/repo-size/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github)](#)
[![Contributors](https://img.shields.io/github/contributors/SneakyCode/bash-snippets?color=blueviolet&style=for-the-badge&logo=github)](https://github.com/SneakyCode/bash-snippets/graphs/contributors)
[![Wolf](https://img.shields.io/badge/Created%20By-AntiPhoton%20Ltd.-blueviolet?style=for-the-badge)](https://github.com/SneakyCode)

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
| [untag.sh](src/untag/untag.sh) | A simple script to remove ALL tags from a git repo. |
| [using-colour.sh](src/using-colour/using-colour.sh) | An example of how to use colour (see [bash-colour-include](https://github.com/WolfSoftware/bash-colour-include) for a full working solution). |
| [using-set.sh](src/using-set/using-set.sh) | Using 'set' for more robust shell scripting. |
| [variable-replace.sh](src/variable-replace/variable-replace.sh) | Replace template variables in a file with values from an associative array. |
| [verbose-mode.sh](src/verbose-mode/verbose-mode.sh) | Demonstration of script wide verbose/silent mode.. |
