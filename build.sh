#!/usr/bin/env bash

#python setup.py sdist bdist_wheel
#twine upload --repository-url https://test.pypi.org/legacy/ dist/*
# check-manifest


git pull origin main
git add --all .
git commit -m "🐛 Fix some, update any. 🚀 v1.0.1"
git push origin main
git tag -a v1.0.1 -m "🚀 v1.0.1"
git push origin --tags

exit

echo "Delete current dist..."
rm -vrf dist
rm -vrf geekjob-python-helpers/*.egg-info

python -m build

#python -m twine upload --verbose --repository testpypi dist/*
python -m twine upload --verbose dist/*
