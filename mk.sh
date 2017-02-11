#!/bin/sh

if [ -z $1 ]
then
    cd draft
    cp ../bibs/*.bib .
    make clean >/dev/null
    make all >/dev/null
    evince draft.pdf  2>/dev/null &
    make clean >/dev/null
    mv *.bib ../bibs
elif [ $1 = 'fast' ]
then
    cd draft
    make partial >/dev/null
    make clean >/dev/null
    evince draft.pdf 2>/dev/null &
elif [ $1 = '0' ]
then

    cp draft/Makefile components/
    cp draft/ruthesis.cls components/
    cd components/
    export TARGETTED='0_introduction.tex'
    make targetted >/dev/null
    make clean >/dev/null
    mv Makefile ../draft
    mv ruthesis.cls ../draft
    evince '0_introduction.pdf' 2>/dev/null &
elif [ $1 = '1' ]
then

    cp draft/Makefile components/
    cp draft/ruthesis.cls components/
    cd components/
    export TARGETTED='1_related_work.tex'
    make targetted >/dev/null
    make clean >/dev/null
    mv Makefile ../draft
    mv ruthesis.cls ../draft
    evince '1_related_work.pdf' 2>/dev/null &
fi
