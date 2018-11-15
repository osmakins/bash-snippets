#!/usr/bin/env bash
set -eo pipefail
test -n "${DEBUG:-}" && set -x

find_requirements() {
        git ls-tree -r HEAD | grep -E 'requirements.txt' | awk '{print $4}'
}

install_all_requirements() {
	echo 'Installing all requirements'
	find_requirements | while read -r file; do
		pip install -r "${file}"
	done
}

# if being executed, check all executables, otherwise do nothing
if [ $SHLVL -gt 1 ]; then
	install_all_requirements
else
	return 0
fi