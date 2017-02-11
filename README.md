Rutgers University Computer Science thesis template; Alternate Version
======================================================================

Motivation for alternate version:
----------------------------

Having the thesis in pieces makes it easier to render one part without rendering the whole thing.  Also, I hate how annoying it is to compile latex.  And how many files it generates.  


-------------------------------

The LaTeX style file is a version of the
[Department of Mathematics style file](http://www.math.rutgers.edu/grad/phd_requirements/thesis.html),
customized for students in the Department of Computer Science. It is
based on the
[official university style guide](http://gsnb.rutgers.edu/academics/electronic-thesis-and-dissertation-style-guide).

Directory Structure
-------------------
    
    /aliases.sh                     `source aliases.sh` to set up easy alias 
    /mk.sh                          makes compiling super easy. see below.

    draft/                          the "head" of the project
    draft/draft.tex                 barebones draft 
    draft/ruthesis.cls              modded from original
                                    uses natbib/subfiles by default now
    draft/Makefile                  some Make commands 

    components/                     stores the chapters
    components/0_introduction.tex   barebones example of the first chapter
    components/1_introduction.tex   barebones example of the second chapter
    components/front_matter.tex     the stuff that makes this a dissertation 
    components/preamble.tex         setup things here.

    bibs/                           bibs go here

Usage
-----

To use this setup, clone the repository, and build using provided bash script:

    git clone https://github.com/braingineer/thesis.git
    cd ~/thesis
    git checkout mcmahan_alternate
    source aliases.sh
    mk
    mk 0 
    mk 1
    mk fast

