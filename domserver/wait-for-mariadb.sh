#!/bin/sh
# wait-for-mariadb.sh

set -e

host="$1"
shift
cmd="$@"

until mysql -u root -prootpw --port 13306 --host=$host; do
  >&2 echo "Mariadb is unavailable - sleeping.  command : mysql -u root -prootpw --port 13306 --host=$host"
  sleep 1
done

>&2 echo "Mariadb is up - executing command"
exec $cmd
