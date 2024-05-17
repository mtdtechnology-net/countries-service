set -e

env

echo "Starting nodejs"

cd /usr/src


COMMAND="${COMMAND:-npm run start}"

echo "Using command : " $COMMAND

exec $COMMAND