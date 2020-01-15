#!/bin/sh
# wait-for-mariadb.sh

set -e

host="$1"
shift
cmd="$@"

until mysql -u root -prootpw ; do
  >&2 echo "Mariadb is unavailable - sleeping.  command : mysql -u root -prootpw"
  sleep 1
done

>&2 echo "Mariadb is up - executing command"
exec $cmd


