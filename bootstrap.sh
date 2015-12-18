#!/bin/sh

REPO_SOURCE_HAN_SANS="https://github.com/adobe-fonts/source-han-sans/archive/1.004R.tar.gz"

SYSTEM=`uname -s`

if [ "x$SYSTEM" == "xDarwin" ]; then
  SCRIPTPATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
else
  SCRIPTPATH=$(dirname $(readlink -f "$0"))
fi

TMPDIR=`mktemp -d`
FONTDIR="${SCRIPTPATH}/fonts"

mkdir -p $FONTDIR || exit 1

trap "{ cd -; rm -rf $TMPDIR; exit 255; }" SIGINT

cd $TMPDIR  # switch to temp dir
echo "Change to ${TMPDIR}"

# Get Source Han Sans
curl -L ${REPO_SOURCE_HAN_SANS} | tar zx
cp -f source-han-sans-*/OTF/SimplifiedChinese/*.otf ${FONTDIR}

cd -  # back to current folder
rm -rf $TMPDIR

exit 0
