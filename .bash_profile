
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Grunt tab auto-completion
eval "$(grunt --completion=bash)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GRADLE_HOME=/usr/local/bin/gradle;
export GRADLE_OPTS="-Xmx1024m -Xms256m -XX:MaxPermSize=1024m -XX:+CMSClassUnloadingEnabled -XX:+HeapDumpOnOutOfMemoryError"

alias ls='ls -alGF'
alias ll='ls'
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'
function cdd() { cd $1; ls; }
alias cdls=cdd
alias dcom='docker-compose'
alias dcb='dcom build'
alias dck='dcom kill'
alias dcr='dcom rm'
alias dcu='dcom up'
alias dev='cd ~/dev'
alias localteamsite='NODE_ENV=local nodemon -w _src/sitepublisher/components/xsl-includes -e page,xsl,xml "./_express/teamsite/node-teamsite/node-teamsite.js"'
alias lts='localteamsite'
alias q='sublime'
alias rootit='sudo $(history -p !!)'
alias sbp='sourcebashprofile'
alias servewebdev='http-server $webdev -o'
alias sourcebashprofile='source ~/.bash_profile'
alias spy='bash -ex'
alias updatenpm='npm install npm -g'
alias updatepackagemanagers='echo Updating npm …; updatenpm; echo Updating homebrew …; brew update; echo All done!;'
alias udpms='updatepackagemanagers'
alias webdev='cd ~/dev/sal/loans-ui/service/src/main/webdev'

# Git stuff
alias g='git'
alias gb='git branch'
alias gba='git branch -a'
function gc() { git checkout "${@:-develop}"; } # Checkout develop by default
alias gcb='git checkout -b'
alias gch='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdno='git diff --name-only'
alias gfe='git fetch'
alias gh='git help'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gr='git remote'
alias grso='git remote show origin'
alias gruo='git remote update origin'
alias gs='git status'
alias gsh='git show'
alias gt='git tag'


# Git Flow
alias gf='git flow'
alias gff='gf feature'
alias gffs='gff start'
alias gfff='gff finish'
alias gfh='gf hotfix'
alias gfi='gf init'
alias gfr='gf release'
alias gfs='gf support'
alias gfv='gf version'

alias chkjava='ps -ef | grep java'
# alias uirebuild='~/dev/sal/loans-ui/rebuild.sh'
# alias freshBuild='START_TIME=$SECONDS; chkjava; read -p "Any key to continue; ctrl-c to quit." -n1 -s; killall java; clear; echo Killed off java processes.; echo Starting build ...; echo && buildSSOSProj && cleanSAL && buildSALProj && echo && echo Build took $((($SECONDS - $START_TIME) / 60)) minutes.'

# function cleanIDEA() {
# 	echo "Cleaning IDEA stuffs:";
# 	echo "cd ~/dev/sal/loans-ui && gradle cleanIdea idea;";
# 	cd ~/dev/sal/loans-ui && gradle cleanIdea idea &> /dev/null;
# 	echo "Done.";
# 	cd -;
# }

# function buildSSOSProj(){

# 	echo;
# 	echo "Building the SSOS projects (csso-stub, sso-service).";
# 	echo;
# 	cd ~/dev/ssos/;

# 	# if [ $2 != '-s' ]; then

# 		echo;
# 		echo "Cleaning …";
# 		echo;
#     # if [ $1 = '-q' ]; then
# 		# 	./fullClean.sh &> /dev/null  || { echo 'Clean failed.' ; return 1; }
# 		# else
# 			./fullClean.sh || { echo 'Clean failed' ; return 1; }
#   	# fi

# 	# fi

# 	echo;
# 	echo;
# 	echo "Building csso-stub";
# 	echo;
#  #    if [ $1 = '-q' ]; then
# 	# 	./csso-stub/rebuild.sh &> /dev/null || { echo 'csso-stub build failed.' ; return 1; }
# 	# else
# 		./csso-stub/rebuild.sh || { echo 'csso-stub build failed.' ; return 1; }
#     # fi

# 	echo;
# 	echo;
# 	echo "Building sso-service";
# 	echo;
#  #    if [ $1 = '-q' ]; then
# 	# 	./sso-service/rebuild.sh &> /dev/null || { echo 'sso-service build failed.' ; return 1; }
# 	# else
# 		./sso-service/rebuild.sh || { echo 'sso-service build failed' ; return 1; }
#     # fi

# 	echo;
# 	echo "Done.";
# 	echo;
# 	cd -;

# }

# function buildSALProj(){

# 	echo;
# 	echo "Building the SAL projects (tbsb-adapter, loans-tbsb-adapter, loans-ui).";
# 	echo;
# 	cd ~/dev/sal/;

# 	echo;
# 	echo "Cleaning …";
# 	echo;
# 	./fullClean.sh || { echo 'Clean failed' ; return 1; }

# 	echo;
# 	echo;
# 	echo "Building tbsb-adapter";
# 	echo;
# 	# ./tbsp-adapter/rebuild.sh || { echo 'tbspadapter build failed.' ; return 1; }
# 	cd ~/dev/sal/;
# 	./tbsb-adapter/rebuild.sh

# 	echo;
# 	echo;
# 	echo "Building loans-tbsb-adapter";
# 	echo;
# 	# ./loans-tbsb-adapter/rebuild.sh || { echo 'loans-tbsb-adapter build failed' ; return 1; }
# 	./loans-tbsb-adapter/rebuild.sh

# 	echo;
# 	echo;
# 	echo "Building loans-ui";
# 	echo;
# 	# ./loans-ui/rebuild.sh || { echo 'loans-ui build failed' ; return 1; }
# 	./loans-ui/rebuild.sh

# 	echo;
# 	echo "Done.";
# 	echo;
# 	echo;
# 	cd -;

# }


# function cleanSAL(){

# 	echo;
# 	echo;
# 	echo "Cleaning SAL build.";
# 	cd ~/dev/sal
# 	find . -type d -name build | xargs rm -rf

# 	cd metrics-ui
# 	nice gradle clean

# 	cd ../loans-ui
# 	nice gradle clean

# 	cd ../sv2-ui
# 	nice gradle clean

# 	cd ../tbsb-adapter
# 	nice gradle clean

# 	cd ..
# 	rm -f */artefacts/*.jar */logs/*.log logs/*.log buildSrc/build/libs/buildSrc.jar

# }


# function buildEverything(){
# 	# echo NO;
# 	# return 0;
# 	echo;
# 	echo "Building everything (csso-stub, sso-service, tbsb-adapter, loans-tbsb-adapter, loans-ui).";
# 	echo;
# 	# buildSSOSProj -q;

# 	cleanSAL;

# 	buildSALProj -q -s;
# 	echo;
# 	echo;
# 	echo "Done.";
# 	echo;
# }

# function foo() {
#     echo "Parameter #1 is $1";
#     echo "Parameter #2 is $2";
#     echo "Parameter #3 is $3";
#     if [ $1 = '-v' ]; then
#     	echo "It'll be a miracle if this works!";
#     fi
# }

# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}

export GREP_OPTIONS='--color=auto'
# Prevent less from clearing the screen while still showing colors.
export LESS=-XR


# Copyright (c) 2012 "Cowboy" Ben Alman
# Licensed under the MIT license.
# http://benalman.com/about/license/
#
# Example:
# [master:!?][cowboy@CowBook:~/.dotfiles]
# [11:14:45] $
#
# Read more (and see a screenshot) in the "Prompt" section of
# https://github.com/cowboy/dotfiles

# ANSI CODES - SEPARATE MULTIPLE VALUES WITH ;
#
#  0  reset          4  underline
#  1  bold           7  inverse
#
# FG  BG  COLOR     FG  BG  COLOR
# 30  40  black     34  44  blue
# 31  41  red       35  45  magenta
# 32  42  green     36  46  cyan
# 33  43  yellow    37  47  white

if [[ ! "${prompt_colors[@]}" ]]; then
  prompt_colors=(
    "33" # information color
    "37" # bracket color
    "31" # error color
  )

  if [[ "$SSH_TTY" ]]; then
    # connected via ssh
    prompt_colors[0]="32"
  elif [[ "$USER" == "root" ]]; then
    # logged in as root
    prompt_colors[0]="35"
  fi
fi

# Inside a prompt function, run this alias to setup local $c0-$c9 color vars.
alias prompt_getcolors='prompt_colors[9]=; local i; for i in ${!prompt_colors[@]}; do local c$i="\[\e[0;${prompt_colors[$i]}m\]"; done'

# Exit code of previous command.
function prompt_exitcode() {
  prompt_getcolors
  [[ $1 != 0 ]] && echo " $c2$1$c9"
}

# Git status.
function prompt_git() {
  prompt_getcolors
  local status output flags branch
  status="$(git status 2>/dev/null)"
  [[ $? != 0 ]] && return;
  output="$(echo "$status" | awk '/# Initial commit/ {print "(init)"}')"
  [[ "$output" ]] || output="$(echo "$status" | awk '/# On branch/ {print $4}')"
  [[ "$output" ]] || output="$(git branch | perl -ne '/^\* \(detached from (.*)\)$/ ? print "($1)" : /^\* (.*)/ && print $1')"
  flags="$(
    echo "$status" | awk 'BEGIN {r=""} \
        /^(# )?Changes to be committed:$/        {r=r "+"}\
        /^(# )?Changes not staged for commit:$/  {r=r "!"}\
        /^(# )?Untracked files:$/                {r=r "?"}\
      END {print r}'
  )"
  if [[ "$flags" ]]; then
    output="$output$c1:$c0$flags"
  fi
  echo "$c1[$c0$output$c1]$c9"
}

# hg status.
function prompt_hg() {
  prompt_getcolors
  local summary output bookmark flags
  summary="$(hg summary 2>/dev/null)"
  [[ $? != 0 ]] && return;
  output="$(echo "$summary" | awk '/branch:/ {print $2}')"
  bookmark="$(echo "$summary" | awk '/bookmarks:/ {print $2}')"
  flags="$(
    echo "$summary" | awk 'BEGIN {r="";a=""} \
      /(modified)/     {r= "+"}\
      /(unknown)/      {a= "?"}\
      END {print r a}'
  )"
  output="$output:$bookmark"
  if [[ "$flags" ]]; then
    output="$output$c1:$c0$flags"
  fi
  echo "$c1[$c0$output$c1]$c9"
}

# SVN info.
function prompt_svn() {
  prompt_getcolors
  local info="$(svn info . 2> /dev/null)"
  local last current
  if [[ "$info" ]]; then
    last="$(echo "$info" | awk '/Last Changed Rev:/ {print $4}')"
    current="$(echo "$info" | awk '/Revision:/ {print $2}')"
    echo "$c1[$c0$last$c1:$c0$current$c1]$c9"
  fi
}

# Maintain a per-execution call stack.
prompt_stack=()
trap 'prompt_stack=("${prompt_stack[@]}" "$BASH_COMMAND")' DEBUG

function prompt_command() {
  local exit_code=$?
  # If the first command in the stack is prompt_command, no command was run.
  # Set exit_code to 0 and reset the stack.
  [[ "${prompt_stack[0]}" == "prompt_command" ]] && exit_code=0
  prompt_stack=()

  # Manually load z here, after $? is checked, to keep $? from being clobbered.
  [[ "$(type -t _z)" ]] && _z --add "$(pwd -P 2>/dev/null)" 2>/dev/null

  # While the simple_prompt environment var is set, disable the awesome prompt.
  [[ "$simple_prompt" ]] && PS1='\n$ ' && return

  prompt_getcolors
  # http://twitter.com/cowboy/status/150254030654939137
  PS1="\n"
  # svn: [repo:lastchanged]
  PS1="$PS1$(prompt_svn)"
  # git: [branch:flags]
  PS1="$PS1$(prompt_git)"
  # hg:  [branch:flags]
  PS1="$PS1$(prompt_hg)"
  # misc: [cmd#:hist#]
  # PS1="$PS1$c1[$c0#\#$c1:$c0!\!$c1]$c9"
  # path: [user@host:path]
  PS1="$PS1$c1[$c0\u$c1@$c0\h$c1:$c0\w$c1]$c9"
  PS1="$PS1\n"
  # date: [HH:MM:SS]
  PS1="$PS1$c1[$c0$(date +"%H$c1:$c0%M$c1:$c0%S")$c1]$c9"
  # exit code: 127
  PS1="$PS1$(prompt_exitcode "$exit_code")"
  PS1="$PS1 \$ "
}

PROMPT_COMMAND="prompt_command"

# prompt_command
#Start the impromptu prompt
source impromptu
# cd ~/
