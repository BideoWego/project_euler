
if [ $1 ]; then
  NUM=$1

  if [ $2 ]; then
    CMD=""
    EXT=""


    if [ $2 == "c" ]; then
      d=$(find . -type d -name $NUM*)
      CMD="make -C $d/c; $d/c/main"
      EXT="c"
    elif [ $2 == "ruby" ]; then
      CMD="ruby $NUM*/ruby/index.rb"
      EXT="rb"
    fi

    if [ -z "$CMD" ] && [ -z "$EXT" ]; then
      echo "Error: couldn't execute:"
      echo "  Command: $CMD"
      echo "  Extension: $EXT"
    else
      nodemon --exec "echo; $CMD; echo" -e "$EXT"
    fi
  else
    echo "Please provide a programming language"
  fi
else
  echo "Please provide a problem number"
fi
