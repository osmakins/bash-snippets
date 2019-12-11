# Bash Snippets Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

For further info see our [changelogs](https://github.com/AntiPhotonltd/changelogs) guide.

## [Unreleased]

Documentation:

* Updated the badges ion the README to be a little more on brand and relevant. ([@TGWolf][])

## [v1.0.8] - December 11 2019

New Features:

* Added a new script get-git-root/get-git-root.sh. ([@TGWolf][])
* Added a new script is-git-repo/is-git-repo.sh ([@TGWolf][])

Documentation:

* A complete review and rework of the ChangeLog. ([@TGWolf][])

Chores:

* Added a whitelist entry to ensure the link checker doesnt file on the changelog. ([@TGWolf][])

Removed:

* Removed legacy files from when the repo had python scripts in it (setup.cfg and .pylintrc). ([@TGWolf][])

## [v1.0.7] - December 10 2019

New Features:

* Added a new script terminal-or-not/terminal-or-not.sh. ([@TGWolf][])
* Added a new script variable-replace/variable-replace.sh. ([@TGWolf][])

Chores:

* Clean up of the .travis.cfg file. ([@TGWolf][])
* Clean up of the CHANGELOG. ([@TGWolf][])

## [v1.0.6] - June 25 2019

New Features:

* Added a new script compare-version/compare-version.sh. ([@TGWolf][])
* Added a new script contains/contains. ([@TGWolf][])
* Added a new script sudo-librarian-puppet/sudo-librarian-puppet.sh. ([@TGWolf][])
* Added a new script array-contains/array-contains.sh. ([@TGWolf][])
* Added a new script array-to-string/array-to-string.sh. ([@TGWolf][])

Bug Fixes:

* Fixed a bug in the get-terraform-version script when a new version of terraform was available. ([@TGWolf][])

Tests:

* Made the way tests are run consistent across all snippets. ([@TGWolf][])

## [v1.0.5] - January 29 2019

Chores:

* Rename the repo from code-snippets to bash-snippets. ([@TGWolf][])

Removed:

* Moved all python snippets into their own repo. ([@TGWolf][])

## [v1.0.4] - December 21 2018

New Features:

* Added a new script bash/using-colour.sh. ([@TGWolf][])
* Added a new script python/which.py. ([@TGWolf][])
* Added a new script python/execute-shell-command.py. ([@TGWolf][])
* Added a new script python/version-compare.py. ([@TGWolf][])

## [v1.0.3] - November 28 2018

New Features:

* Added a new script bash/get-confirmation.sh. ([@TGWolf][])
* Added a new script bash/get-script-info.sh. ([@TGWolf][])
* Added a new script bash/get-terraform-version.sh. ([@TGWolf][])
* Added a new script bash/rollingback.sh. ([@TGWolf][])
* Added a new script bash/strict-mode.sh. ([@TGWolf][])
* Added a new script bash/using-set.sh. ([@TGWolf][])

Improvements:

* Small tweak to the show-errors.sh snippet to ensure errors etc get written to STDERR not STDOUT. ([@TGWolf][])

## [v1.0.2] - November 21 2018

Chores:

* Only clone Travis Toolkit modules when required in travis build. ([@TGWolf][])

## [v1.0.1] - November 15 2018

New Features:

* Added a new section for python snippets. ([@TGWolf][])
* Added a new script python/human-size.py. ([@TGWolf][])

Tests:

* Added required travis tests for python code. ([@TGWolf][])

Chores:

* Updated submodule. ([@TGWolf][])

## [v1.0.0] - November 13 2018

* Initial Release ([@TGWolf][])

[@TGWolf]: https://github.com/TGWolf

[unreleased]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.8...HEAD
[v1.0.8]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.7...v1.0.8
[v1.0.7]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.6...v1.0.7
[v1.0.6]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.5...v1.0.6
[v1.0.5]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.4...v1.0.5
[v1.0.4]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.3...v1.0.4
[v1.0.3]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.2...v1.0.3
[v1.0.2]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.1...v1.0.2
[v1.0.1]: https://github.com/AntiPhotonltd/bash-snippets/compare/v1.0.0...v1.0.1
[v1.0.0]: https://github.com/AntiPhotonltd/bash-snippets/releases/tag/v1.0.0
