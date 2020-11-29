#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

help() {
      echo "${bold}USAGE${normal}"
      echo "gerpush - Push to the Git Gerrit repository"
      echo
      echo "${bold}SYNOPSIS${normal}"
      echo "gerpush [--help][-m <msg>][--no-push][--change-id <id>]"
      echo
      echo "${bold}OPTIONS${normal}"
      echo "-m <msg>, --message=<msg>"
      echo "Use the given <msg> as the commit message. If multiple -m options"`
            `"are given, their values are concatenated as separate paragraphs."
      echo
      echo "--no-push"
      echo "prevents pushing to the remote."
      echo
      echo "--change-id <id>"
      echo "Insert this <id> at the bottom of the commit message as the Change-Id. "`
            `"This <id> overrides an existing Change-id."
      echo
}
