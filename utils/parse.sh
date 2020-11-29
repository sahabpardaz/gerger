#!/usr/bin/env bash
source "${BASH_SOURCE%/*}/help.sh"

MESSAGE=
NO_PUSH=false


while test $# -gt 0; do
  case "$1" in
    -h|--help)
      help
      exit 0
      ;;
    -m|--message)
      shift
      if test $# -gt 0; then
        MESSAGE+="\n\n$1"
        shift
      else
        echo "error: switch 'm' requires a value"
        exit 1
      fi
      ;;
    --no-push)
      shift
      NO_PUSH=true
      ;;
    *)
      echo "gerpush: ${1} is not a gerpush command. See 'gerpush --help'."
      exit 1
      ;;
  esac
done


export MESSAGE
export NO_PUSH
