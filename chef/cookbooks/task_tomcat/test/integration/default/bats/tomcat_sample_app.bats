#!/usr/bin/env bats

@test "sample app is deployed" {
  run curl http://localhost:8080/sample/
  [ "$status" -eq 0 ]
}