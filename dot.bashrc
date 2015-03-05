# .basshrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function length()
{
  echo -n ${#1}
}

function init-prompt-git-branch()
{
  git symbolic-ref HEAD 2>/dev/null >/dev/null &&
  echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///')$(parse_git_dirty))"
}

if which git 2>/dev/null >/dev/null
then
  export PS1_GIT_BRANCH='\[\e[$[COLUMNS]D\]\[\e[0;31m\]\[\e[$[COLUMNS-$(length $(init-prompt-git-branch))]C\]$(init-prompt-git-branch)\[\e[$[COLUMNS]D\]\[\e[0m\]'
else
  export PS1_GIT_BRANCH=
fi
export PS1="\[\e[0;32m\]\u \[\e[0;33m\]\w $PS1_GIT_BRANCH\n\[\e[0;36m\]\t \[\e[0m\]\$ "


if [ $(echo $- | grep i | wc -l) = '1' ]; then
  exec zsh
fi
