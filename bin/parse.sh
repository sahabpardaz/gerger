#!/usr/bin/env bash

source ./help.sh

MESSAGE=


while test $# -gt 0; do
  case "$1" in
    -h|--help)
      help
      exit 0
      ;;
    -m|--message)
      shift
      if test $# -gt 0; then
        export MESSAGE+="\n\n$1"
      else
        echo "error: switch 'm' requires a value"
        exit 1
      fi
      shift
      ;;
    *)
      echo "gerpush: ${1} is not a gerpush command. See 'gerpush --help'."
      exit 1
      ;;
  esac
done
