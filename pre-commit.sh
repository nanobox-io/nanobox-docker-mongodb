#!/bin/bash
# copy common files to version directories
rsync -a files/. 2.6/files
rsync -a hookit/. 2.6/hookit
git add 2.6 --all

rsync -a files/. 3.0/files
rsync -a hookit/. 3.0/hookit
git add 3.0 --all
