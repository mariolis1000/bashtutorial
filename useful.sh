# echo, cd, ls, pwd

pushd /example #go to some other file like cd but remember where you were
popd # return to where you were


ln [-s] file1.txt file2.txt    #create link

less ex.txt                    #like cat, but scrollable
grep 'word' input.txt          #pattern patch , aka find a word
find ~/ -name "sth.txt"        #find something

locate           #quicksearch for a file in a sorted database of the OS
which            #searches and finds other commands / programms
history #lists previously typed commands
whatis [command] #tells us what a command does in one line
apropos [topic]  #tells us what to do with a command
stat -c "%A %a %n" * #lists like ls -l but with 777 instead of -rwx--
#whereis

kill #terminate a process
killall #kill a process by name
watch #reruns a command every 2 seconds
free #checks how much free memory

sed [-] 's/old/new/'           #find and replace 

awk                            #TBD its a patter scanning and processing language

sort [-n] file.txt             #sorts text contents, by default its alphabetic
                               #use -n for numeric

#PIPING
echo 'something old' | sed 's/old/new' #prints 'something new'
ls | xargs grep useful.sh              #useful.sh
#grep splits what you pipe into it in chunks and then passes those chunks as arguments to 
#whatever command you put next

#subshell
echo "I am at: $(pwd)"  #executing a command inside a string

#Redirection
echo "something" > text.txt 
    #the > symbol takes the standard input and writes it to the target file
    #if the file exists it will overrite it
echo "something" >> text.txt
    #will append the text into the file without overwritting it
./a.out < useful.sh  #passes the content into the standard in of a file



fzf #fuzzy find, is an interactive finder that can be passed like
ls -lah | fzf

compgen -c #list all commands , can be piped into less

compgen [option] [word] #generats possible completions like TAB
# -c commands, -a aliases, -k keywords, -A function ->functions defined in the shell
# -v variables

#example
compgen -c | grep git #finds and lists all commands with git in the name


#VERY USEFUL EXAMPLE
compgen -c | fzf | xargs man #fuzzy-find any comand in my system and then open its manual
alias fman="compgen -c | fzf | xargs man" #alias the above and call it fman


history #lists previously typed commands

