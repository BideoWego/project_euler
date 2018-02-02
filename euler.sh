
if [ $1 ]; then
  NUM=$1

  if [ $2 ]; then
    CMD=""
    EXT=""
    d=$(find . -type d -name $NUM*)

    if [ $2 == "c" ]; then
      CMD="make -C $d/c; $d/c/main"
      EXT="c"
    elif [ $2 == "ruby" ]; then
      CMD="ruby $d/ruby/index.rb"
      EXT="rb"
    elif [ $2 == 'javascript' ]; then
      CMD="node $d/javascript/index.js"
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
