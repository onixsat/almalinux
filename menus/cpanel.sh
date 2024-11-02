#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  ${BLUE}Menu Cpanel - ${BOLD}${RED}Configuracão${NORMAL}
EOM
createMenu "menuCpanel" "$ENV_VAR_MENU"
addMenuItem "menuCpanel" "Sub Menu" showSubmenu2

function showSubmenu2(){
	source config/submenus.sh
	sub-menu "menuCpanel"
  reload "return" "menuCpanel"
	pause
}

