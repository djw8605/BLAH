#!/bin/bash

blahconffile="${GLITE_LOCATION:-/opt/glite}/etc/blah.config"
binpath=`grep lsf_binpath $blahconffile|grep -v \#|awk -F"=" '{ print $2}'|sed -e 's/ //g'|sed -e 's/\"//g'`

requested=`echo $1 | sed 's/^.*\///'`
${binpath}/bkill $requested >/dev/null 2>&1
