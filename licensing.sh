#/bin/bash
# set -x

function error()
{
  echo "ERROR !!! $1" >&2
  echo "KTHXBYE"
  exit 1
}

if [ $# -ne 2 ]; then
    error "Usage: ./licensing.sh WorkingDirectory PathToLicenseFile"
fi

DIRPATH=$1
LICENSEFILE=$2
TYPES=".R .py"

echo $DIRPATH

licenselines=`cat $LICENSEFILE | wc -l`
for type in $TYPES; 
  do 
  echo "...."
  echo $type; 
  for filenm in `find $DIRPATH -name "*$type"`; 
    do 
    echo $filenm ; 
    matches=`grep -F -x -f $LICENSEFILE $filenm | wc -l`
    # echo $matches
    if [ "$matches" = "$licenselines" ]; 
    then 
      echo "Nothing to do here"; 
    else
      echo "adding license to file"
      cat $LICENSEFILE > /tmp/1
      cat $filenm >> /tmp/1
      mv /tmp/1 $filenm
    fi
  done
done