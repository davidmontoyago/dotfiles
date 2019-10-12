#!/bin/bash

function install_dotfile() {
  DOTFILE=$1
  SRCDIR=${2:-./}
  DESTDIR=${3:-$HOME}
  STAMP=$(date '+%Y-%m-%d-%H%M%S')
  if [ -e $DESTDIR/$DOTFILE ]; then
    echo "backing up previous $DOTFILE..."
    mv $DESTDIR/$DOTFILE "$DESTDIR/$DOTFILE-backup-$STAMP"
  fi

  cp $SRCDIR/$DOTFILE $DESTDIR
  echo "installed $DESTDIR/$DOTFILE"
}
