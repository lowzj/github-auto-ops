#!/bin/bash

auth={username}:{access_key}

origin_prop='remote.origin.url'
repo=https://github.com/lowzj/config-server-test.git
auth_repo=https://$auth@github.com/lowzj/config-server-test.git

cd config-server-test
git config user.name lowzj
git config user.email zj3142063@gmail.com

git config $origin_prop $auth_repo
for i in "$@"; do
  eval $i
done
git config $origin_prop $repo
