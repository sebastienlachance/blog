#!/bin/bash
bundle exec rake generate
echo "Adding files"
git add -A
echo "Committing"
git commit -am "new post"
echo "Pushing to github"
git push github
echo "Pushing to Heroku"
git push heroku
