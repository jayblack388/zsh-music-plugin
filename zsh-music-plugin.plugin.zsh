#!/usr/bin/env zsh

dir="$(dirname "${0:A}")/appleScripts"

music() {
  if [[ -z $1 ]]; then
    help
  else
    case $1 in
      -open | -o)
          osascript $dir/open.applescript
        ;;
      -vol | -v)
        if [[ -z $2 ]]; then
          echo "This set volume 0-100"
        else
          osascript $dir/volume.applescript "$2"
        fi
        ;;
      -stop | -s)
        osascript $dir/pause.applescript
        ;;
      -play | -p)
        osascript $dir/play.applescript
        ;;
      -next | -n)
        osascript $dir/next.applescript
        ;;
      -current | -c)
        osascript $dir/current.applescript
        ;;
      -query | -q)
        if [[ -z $2 ]]; then
          echo "You need to pass a search query"
        else
          osascript $dir/query.applescript "$2"
        fi
        ;;
      -help | -h)
        help
        ;;
      *)
        help
        echo "Invalid option flag."
        ;;
    esac
  fi
}


help(){

# Define table headers
header1="COMMAND"
header2="CMD"
header3="DESCRIPTION"
header4="USAGE"

# Print table rows
com1="-open"
cmd1="-o"
des1="Launches Music"
ex1="music -o"

com2="-vol"
cmd2="-v"
des2="Changes volume"
ex2="music -v 10"

com3="-stop"
cmd3="-s"
des3="Pauses Music"
ex3="music -s"

com4="-play"
cmd4="-p"
des4="Plays Music"
ex4="music -p"

com5="-next"
cmd5="-n"
des5="Skips song"
ex5="music -n"

com6="-current"
cmd6="-c"
des6="Shows current track"
ex6="music -c"

com7="-query"
cmd7="-q"
des7="Search for songs"
ex7="music -q 'Song Name'"


echo ''
echo "  ;;;;;; ███████ ███████ ██   ██ ███    ███ ██    ██ ███████ ██  ██████ "
sleep 0.01
echo "  ;    ;    ███  ██      ██   ██ ████  ████ ██    ██ ██      ██ ██      "
sleep 0.01
echo "  ;    ;   ███   ███████ ███████ ██ ████ ██ ██    ██ ███████ ██ ██      "
sleep 0.01
echo ",;;  ,;; ███         ██  ██   ██ ██  ██  ██ ██    ██      ██ ██ ██      "
sleep 0.01
echo "';;  ';; ███████ ███████ ██   ██ ██      ██  ██████  ███████ ██  ██████ "
sleep 0.01
echo ""
sleep 0.01
# Print the table headers
printf "%-10s %-5s %-25s %-10s\n" "$header1" "$header2" "$header3" "$header4"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com1" "$cmd1" "$des1" "$ex1"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com2" "$cmd2" "$des2" "$ex2"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com3" "$cmd3" "$des3" "$ex3"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com4" "$cmd4" "$des4" "$ex4"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com5" "$cmd5" "$des5" "$ex5"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com6" "$cmd6" "$des6" "$ex6"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com7" "$cmd7" "$des7" "$ex7"
sleep 0.01
}
