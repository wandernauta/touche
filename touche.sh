#
# touche.sh
# Instantiate a file from a template or touch it if it already exists
#
# Put (or source) this in your .zsh_profile or whatever.
# 
# Usage:
# $ touche MyClass.cpp +gpl 
#

touche () {
  if [[ $# == 0 ]]; then echo "Usage: touche <file>"; return; fi
  FILE="$1"

  if [[ -e $FILE ]]; then touch $FILE; return; fi

  BASENAME=$(basename $FILE)
  IFS='.' read FNAME FEXT <<<$BASENAME

  if [[ ! -e ~/Templates/$FEXT.m4 ]]; then touch $FILE; return; fi

  ARGS=$argv[2,-1]
  FLAGS=$(echo $ARGS | sed 's/\+/--define=/g')

  echo "divert(-1)
# File and directory macro's
define(FILENAME, \`$FNAME')
define(FILEEXT, \`$FEXT')
define(FILE, \`$FILE')
define(DIR, \`esyscmd(\`basename \$PWD | tr -d \"\n\"')')
define(TPLDIR, \`esyscmd(\`echo \$HOME/Templates | tr -d \"\n\"')')

# User information
define(FULLNAME, \`esyscmd(\`getent passwd wn | cut -d: -f5 | cut -d, -f1 | tr -d \"\n\"')')
define(MONTHYEAR, \`esyscmd(\`date +\"%B %Y\" | tr -d \"\n\"')')
define(YEAR, \`esyscmd(\`date +\"%Y\" | tr -d \"\n\"')')
divert(0)dnl" | cat - ~/Templates/$FEXT.m4 | eval m4 $FLAGS --include=~/Templates/ - > $FILE
}
