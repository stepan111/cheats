# Open multiple files in tabs
 # horisontal split
 vim -o file1 file2

 # vertical split
 vim -O file1 file2

# Search and replace in all visible windows
 :windo %s/pattern/replace/ge

# Run macros in all windows
 :windo normal @m

# File management

:e              reload file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file


# Insertion
:r {file}       insert from file


https://habrahabr.ru/post/68249/

https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Modes#Ex-mode
$ ex '+set ff=unix' '+w' '+q' applyPatch.sh
$ file applyPatch.sh
applyPatch.sh: POSIX shell script, ASCII text executable

