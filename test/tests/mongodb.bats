# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "mongodb-test"
}

@test "Verify mongodb installed" {
  # ensure mongodb executable exists
  run docker exec "mongodb-test" bash -c "[ -f /data/bin/mongod ]"

  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "mongodb-test"
}
