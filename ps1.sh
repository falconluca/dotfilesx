#!/bin/bash

# PS1
HOST_NAME=Luca
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
parse_git_branch() {
    pr=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
    if [ -z ${pr} ]; then
        echo ""
		return;
    fi
    echo " git:${pr}"
}
print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}
# TODO git-dirty
emojis=("🚀" "😎" "😈" "🍻" "🍺")
EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI => "
