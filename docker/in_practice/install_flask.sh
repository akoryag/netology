#!/bin/bash
name_repo="shvirtd-flask"
repo_url="https://github.com/akoryag/$name_repo.git"
install_dir="/opt/$name_repo/"

git clone $repo_url
cat > $install_dir.env <<EOL
#db
MYSQL_ROOT_PASSWORD=SudoQwerty123!
MYSQL_DATABASE=flask
MYSQL_USER=flask_user
MYSQL_PASSWORD=qwerty123!
MYSQL_TABLE=flask_table
#web
DB_HOST=db
DB_USER=flask_user
DB_PASSWORD=qwerty123!
DB_NAME=flask
DB_TABLE=flask_table
EOL
cd $install_dir
docker compose up -d