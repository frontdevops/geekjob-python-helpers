#!/usr/bin/env bash

#python setup.py sdist bdist_wheel
#twine upload --repository-url https://test.pypi.org/legacy/ dist/*
# check-manifest


echo "Delete current dist..."
rm -vrf dist
rm -vrf geekjob-python-helpers/*.egg-info

python -m build

#python -m twine upload --verbose --repository testpypi dist/*
#python -m twine upload --verbose dist/*