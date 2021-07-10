Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME\.starship\config.toml"
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# this is to show the directory
function ls {
  colorls --sd
}
#this funtion is to show directory in long format
function la {
  colorls --long
# you can use both the upper one and the lower one both gives you the same command
  # colorls -l
}
#this is to show folders in form of tree
function ltree{
  colorls --tree
}
#this is to show in form of git stages
function lsg{
  colorls --gs
}
# to show files and folders in sorted form
function lssf {
  colorls --sf
}

# shows git stages in tree form
function lsgtree {
  colorls --gs --tree
}

function npmi {
  npm i 
}

function npmuu {
  npm update;npm upgrade
}

function nfa {
  npm fix audit
}

function pipi {
  python -m pip install 
}

function pips {
  pip search
}

function pipreq {
  pip freeze > requirements.txt
}

function pipupall{
  python -m pip install -r requirements.txt --upgrade
}

function py {
  python
}

function gin {
  git init
}

function gaa {
  git add .
}

function ga {
  git add
}

function gc {
  git commit -s -m
}
function gac {
  git add . ; git commit -m
}
function gb {
  git branch -m 
}

function grmadd {
  git remote add 
}

function grmr {
  git rm -r
}

function gp {
  git push
}

function gpfrc {
  git push --force
}

function gch {
  git checkout
}

function djproj {
  django-admin startproject 
}

function djapp {
  django-admin startapp
}

function djrun {
  python manage.py runserver
}

function djmkmig {
  python manage.py makemigrations
}

function djmig {
  python manage.py migration
}

function djsmig {
  python manage.py showmigrations
}

function profile {
  cd ~/OneDrive/Documents/PowerShell/
}


