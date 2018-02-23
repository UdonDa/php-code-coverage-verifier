#!/usr/bin/env bash
git diff > my-diff.patch
phpunit --coverage-clover=my-clover.xml
php ./bin/php-code-coverage-verifier verify my-clover.xml my-diff.patch