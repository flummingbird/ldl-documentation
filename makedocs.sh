#! /bin/bash

make html
aws s3 sync build/html/ s3://docs.dsl.lsu.edu/
git pull 
git add .
git commit
git push origin master
