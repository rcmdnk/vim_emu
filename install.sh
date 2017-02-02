#!/usr/bin/env bash

if [[ ! "$OSTYPE" =~ darwin ]];then
  echo Can be used only in Mac.
  exit 1
fi

files=(vim_emu_test.xml vim_emu.xml vim_emu)
instdir="$HOME/Library/Application Support/Karabiner"

backup="bak"
overwrite=1
makelink=0
dryrun=0
newlink=()
exist=()
curdir=$(pwd -P)darwin
# help
HELP="Usage: $0 [-ndl] [-b <backup file postfix>]

Make copies/links of Mac related files/directories

Arguments:
      -b  Set backup postfix (default: make *.bak file)
          Set \"\" if backups are not necessary
      -n  Don't overwrite if file is already exist
      -d  Dry run, don't install anything
      -l  Make link instead of copies
      -h  Print Help (this message) and exit
"
while getopts b:ndlh OPT;do
  case $OPT in
    "b" ) backup=$OPTARG ;;
    "n" ) overwrite=0 ;;
    "d" ) dryrun=1 ;;
    "l" ) makelink=1 ;;
    "h" ) echo "$HELP" 1>&2; exit ;;
    * ) echo "$HELP" 1>&2; exit 1;;
  esac
done

echo "**********************************************************"
echo "Install VIM Emulation setting files for Karabiner"
echo "**********************************************************"
echo
if [ $dryrun -ne 0 ];then
  echo "*** This is dry run, not install anything ***"
fi
i=0
while [ $i -lt ${#files[@]} ];do
  f=${files[$i]}
  d=$instdir
  i=$(($i+1))
  echo install $f to \"$d\"
  install=1
  if [ $dryrun -eq 1 ];then
    install=0
  fi
  if [ "`ls "$d/$f" 2>/dev/null`" != "" ];then
    exist=(${exist[@]} "$f")
    if [ $dryrun -eq 1 ];then
      echo -n ""
    elif [ $overwrite -eq 0 ];then
      install=0
    elif [ "$backup" != "" ];then
      rm -rf "$d/${f}.$backup"
      mv "$d/$f" "$d/${f}.$backup"
    else
      rm -rf "$d/$f"
    fi
  else
    newlink=(${newlink[@]} "$f")
  fi
  if [ $install -eq 1 ];then
    if [ $makelink -eq 1 ];then
      ln -s "$curdir/$f" "$d/$f"
    else
      cp -r "$curdir/$f" "$d/$f"
    fi
  fi
done
if [ $dryrun -eq 0 ];then
  if ! grep -q vim_emu_test.xml "$instdir/private.xml";then
    sed -i .$backup 's/<\/root>/  <include path="vim_emu_test.xml"><\/include>\
<\/root>/' "$instdir/private.xml"
    echo -n "$instdir/private.xml was updated"
    if [ "$backup" = "" ];then
      rm -f $instdir/private.xml.
      echo "."
    else
      echo ", a backup (private.xml.$backup) was made."
    fi
  fi
fi
echo ""
if [ $dryrun -eq 1 ];then
  echo "Following files don't exist:"
else
  echo "Following files were newly installed:"
fi
echo "  ${newlink[@]}"
echo
echo -n "Following files existed"
if [ $dryrun -eq 1 ];then
  echo "Following files exist:"
elif [ $overwrite -eq 0 ];then
  echo "Following files exist, remained as is:"
else
  if [ "$makelink" -eq 1 ];then
    echo -n "Following files existed, replaced by new links"
  else
    echo -n "Following files existed, replaced by new copies"
  fi
  if [ "$backup" != "" ];then
    echo ", and backups (*.$backup) were made:"
  else
    echo ":"
  fi
fi
echo "  ${exist[@]}"
echo
