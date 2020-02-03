#!/usr/bin/env bash

#Generate html files
pushd "generator"
python3 generator.py
popd

#Copy html files to Server
host='root@tedxiong.com'
path='/usr/local/nginx/html/nav'
# scp -r index.html 404.html assets pages ${host}:${path}

#Push code to github
time=`date "+%Y-%m-%d_%H-%M-%S"`
who=`hostname`
git add --all
git commit -m "${who} push @ ${time}"
git push origin master
echo "Finished Push"