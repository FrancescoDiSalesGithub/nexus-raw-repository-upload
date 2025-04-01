# !/bin/bash

username=$1
password=$2
file=$3
filename=$4
remote_dir=$5

ip=$6
port=$7
repo=$8


curl --location 'http://$ip:$port/service/rest/internal/ui/upload/$repo' -u $username:$password -F 'asset0=@"$file"' -F 'asset0.filename="$filename"'  -F 'directory="$remote_dir"'
