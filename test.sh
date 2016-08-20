#!/bin/bash
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.


cleanup(){
    cd "$(git rev-parse --show-toplevel)"
    git reset HEAD
    git clean -df .
    exit "$1"
}

# Setup tests
git reset HEAD
git clean -df .
echo '/tests/ignored/test
/tests/ignored-dir/
/tests/ignored-dir-both/
' >> .gitignore

PATH="$(git rev-parse --show-toplevel):$PATH"

mkdir -p tests
cd tests

mkdir -p test-staged
touch test-staged/test
git add test-staged/test

mkdir -p test-unstaged
touch test-unstaged/test

mkdir -p test-empty

mkdir -p test-both
touch test-both/staged
touch test-both/unstaged
git add test-both/staged

mkdir -p ignored
touch ignored/test

mkdir -p ignored-dir
touch ignored-dir/test

mkdir -p ignored-dir-both
touch ignored-dir-both/unstaged
touch ignored-dir-both/staged
git add -f ignored-dir-both/staged

touch staged
touch unstaged
touch ignored

git add staged

# Start testing

# Test output
result="$(git ls -b -a)"
expected=$'ignored\tGitignored
ignored-dir\tGitignored
ignored-dir-both\tStaged
staged\tStaged
test-both\tStaged
test-empty\tEmpty
test-staged\tStaged
test-unstaged\tUntracked
unstaged\tUntracked'

if [ "$result" != "$expected" ]
then
    cleanup 1
fi

# Test formatting
result="$(git ls -c -a)"
expected=$'ignored         \tGitignored
ignored-dir     \tGitignored
ignored-dir-both\tStaged
staged          \tStaged
test-both       \tStaged
test-empty      \tEmpty
test-staged     \tStaged
test-unstaged   \tUntracked
unstaged        \tUntracked'

if [ "$result" != "$expected" ]
then
    cleanup 1
fi

# Test gitignored dir contents
result="$(git ls -b -a "ignored-dir")"
expected=$'test\tGitignored'

if [ "$result" != "$expected" ]
then
    cleanup 1
fi

# Test gitignored dir with staged contents
result="$(git ls -b -a "ignored-dir-both")"
expected=$'staged\tStaged
unstaged\tGitignored'

if [ "$result" != "$expected" ]
then
    cleanup 1
fi

# Test empty dir
result="$(git ls -b -a "test-empty")"
expected=""

if [ "$result" != "$expected" ]
then
    cleanup 1
fi

cleanup 0
