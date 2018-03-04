#!/usr/bin/env bash
args=$@
sbt "test:run-main mult8x8.Launcher $args"
