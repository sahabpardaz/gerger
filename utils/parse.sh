#!/usr/bin/env bash
echo $@
source "${BASH_SOURCE%/*}/help.sh"

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
        MESSAGE+="\n\n$1"
        shift
      else
        echo "error: switch 'm' requires a value"
        exit 1
      fi
      ;;
    *)
      echo "gerpush: ${1} is not a gerpush command. See 'gerpush --help'."
      exit 1
      ;;
  esac
done


export MESSAGE
