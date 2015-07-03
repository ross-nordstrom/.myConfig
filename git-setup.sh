#!/bin/bash

echo "Setting git aliases..."
#read -p "Continue? Will overwrite any conflicting aliases... [yN]" yn

echo -e "\nCurrent git global email: "
git config --global user.email
read -p "What's your email for git? (Hit enter for no change) " email
if [[ $email != "" ]]; then
    git config --global user.email "$email"
fi

echo -e "\nCurrent git global name: "
git config --global user.name
read -p "What's your name for git?  (Hit enter for no change) " name
if [[ $name != "" ]]; then
    git config --global user.name "$name"
fi

echo -e "\nTell git pull to NOT automatically merge from the current branch"
git config --global branch.autosetupmerge false

echo -e "\nUse the 'current' strategy for Git pushes"
git config --global push.default current

# Don't do this for now because it doesn't work with older versions of git
#echo -e "\nUse the new Git 2.0 default setting of simple push (safest for beginners)"
#git config --global push.default simple

echo -e "\nDefault git editor is vim"
git config --global core.editor "vim"

echo -e "\nSetup color syntax for git"
git config --global color.ui true

echo -e "\nUse a tab-width of 4 for git diff"
git config --global core.pager "less -x4"

echo -e "\ngit a ==> Add"
git config --global --unset-all alias.a
git config --global alias.a add

echo -e "\ngit s ==> Status"
git config --global --unset-all alias.s
git config --global alias.s status

echo "git b ==> Branch (all)"
git config --global --unset-all alias.b
git config --global alias.b "branch -a"

echo "git ci ==> Commit"
git config --global --unset-all alias.ci
git config --global alias.ci commit

echo -e "git undo ==> Undo last commit"
git config --global --unset-all alias.undo
git config --global alias.undo "reset --soft HEAD^"

echo "git co ==> Checkout"
git config --global --unset-all alias.co
git config --global alias.co checkout

echo "git d ==> Diff"
git config --global --unset-all alias.d
git config --global alias.d "diff --word-diff"


echo "git ds ==> Diff Staged"
git config --global --unset-all alias.ds
git config --global alias.ds "diff --staged --word-diff"

echo "git df ==> File diff"
git config --global --unset-all alias.df
git config --global alias.df "diff --name-only"

echo "git dd ==> Diff stats"
git config --global --unset-all alias.dd
git config --global alias.dd "diff --stat"

echo "git f ==> Fetch"
git config --global --unset-all alias.f
git config --global alias.f fetch

echo "git p ==> Pull"
git config --global --unset-all alias.p
git config --global alias.p pull

echo "git lol ==> Better log"
git config --global --unset-all alias.lol
git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short --all -10"

echo "git unstash ==> Unstash (git stash pop)"
git config --global --unset-all alias.unstash
git config --global alias.unstash "stash pop"

echo "git ignore ==> Assume a file is unchanged"
git config --global --unset-all alias.ignore
git config --global alias.ignore "update-index --assume-unchanged"

echo "git r ==> rebase"
git config --global --unset-all alias.r
git config --global alias.r "rebase"

echo -e "\nAll done."
