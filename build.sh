#!/bin/sh
name=interaction2011
(platex-utf8 -shell-escape $name &&
    platex-utf8 -shell-escape $name &&
#    platex-utf8 $name &&
    dvipdfmx $name &&
    open $name".pdf") || echo 'error!'

/bin/sh cleanup.sh
