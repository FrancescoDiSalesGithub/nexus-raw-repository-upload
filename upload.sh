# !/bin/bash

username=$1
password=$2
file=$3
filename=$4
remote_dir=$5

ip=$6
port=$7
repo=$8

curl -X POST -vvvv -u $username:$password -H 'Content-Type: multipart/form-data' -F 'asset0=@$file' -F 'asset0.filename=$filename' -F 'directory=$remote_dir' http://$ip:$port/service/rest/internal/ui/upload/$repo
