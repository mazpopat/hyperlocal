cd ~  - home directory
cd ~/ - same thing
cd .  - current directory
cd .. - parent directory
cd /  - root directory
cd -  - previous directory


mkdir -p (-p "flag or switch") - switches modify behaviour of the command. 



cat /usr/share/dict/words |grep "out$"

cat /usr/share/dict/words |grep "out$" | wc - l
'cat' command opens the file, reads teh file, and outputs the file to STDOUT (standard output),
 that output is then piped to the grep command, which is 
going to pattern match using the regexp that was provided and then ultimately output the result.

($) - represents end of the line ie without $ would look for ous anywehre in any words


what does | stand for? Opens a socket or pipe between two processes, to direct the data from one command to another

(>)  Redirects the STDOUT of the command on the left to the STDIN of the command on the right





enumerable   - module with methods to do wiht iterating and counting a finite sequence of things.

"select" and 'detect" methods in ruby'
'detect' going to return the first that it finds in an array or etc
'select' give back a collection (subset) of matching shit that you are looking for.

you can mimic a detect by using select to get back the collection and then looking at the 'first' item in 
the returned array.
'detect' will end cycle after finding while 'select' will continue through array etc.



GITHUB


git pull --rebase origin develop

-step 1 unwind
2 pulls the repo from the other project
3 reapplys the commits from the other user
4ready to push the origin upstrea
end product will aply both repos


get checkout develop

merge fast foreward(ff) when your uploading your features



git diff - shows all changes made..
        = shows all the changes in the terminal

    git diff --cached <file>

    ==cached is for staged changes


.gitignore in root directory
ignores specific files that you dont want
  logs/*


MIDTERM PROJECT
  postgres.app
  postgres app.com


Models are the nouns    Dont need a login page
Routes, verbs
Wireframe/design,                         -www.moqups.com
- based on user flow from user stories
- wireframe for every page of your app
- be specific about data points on the page

Ui Framework 
-bootstrap    - startbootstrap.com/wrapbootstrap.com for themes
-foundation
-pure
-bourbon
-responsive? - re wireframe a mobile/responsive version


postgres create
psql -U vagrant -d postgres - connect to postgres(or hyperlocal to database directly)
\dt for tables

psql -U vagrant -d hyperlocal - connect to hyperlocal




rake routes ---- show available routes.

