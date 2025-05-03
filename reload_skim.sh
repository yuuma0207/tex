#!/bin/bash
ABS_PATH=$(realpath "$1")  # 引数を絶対パスに変換

/usr/bin/osascript << EOF
  set theFile to POSIX file "$ABS_PATH" as alias
  tell application "Skim"
    activate
    set theDocs to get documents whose path is (get POSIX path of theFile)
    if (count of theDocs) > 0 then revert theDocs
    open theFile
  end tell
EOF
