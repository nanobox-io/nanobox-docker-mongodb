# Test mongo after build
set -e
docker run --name=mongo-test -d nanobox/mongo
docker exec -it mongo-test /bin/bash
curl localhost:5540/hooks/configure -d '{"logtap_host":"10.0.2.15:6361","uid":"db1"}'
sleep 2
sv status db
exit
docker kill mongo-test
