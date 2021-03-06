#!/bin/bash

set -e
errors=0

# Run unit tests
(
  ./bionitio_testperl5_5_test.pl || {
    echo "'bionitio_testperl5_5_test.pl' failed"
    let errors+=1
  }
)

[ "$errors" -gt 0 ] && {
    echo "There were $errors errors found"
    exit 1
}

echo "Ok : Perl specific tests"
