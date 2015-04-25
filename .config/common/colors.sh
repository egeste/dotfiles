NONE="\033[0m"    # unsets color to term's fg color

# regular colors
K="\033[0;30m"    # black
R="\033[0;31m"    # red
G="\033[0;32m"    # green
Y="\033[0;33m"    # yellow
B="\033[0;34m"    # blue
M="\033[0;35m"    # magenta
C="\033[0;36m"    # cyan
W="\033[0;37m"    # white

# emphasized (bolded) colors
EMK="\033[1;30m"
EMR="\033[1;31m"
EMG="\033[1;32m"
EMY="\033[1;33m"
EMB="\033[1;34m"
EMM="\033[1;35m"
EMC="\033[1;36m"
EMW="\033[1;37m"

# background colors
BGK="\033[40m"
BGR="\033[41m"
BGG="\033[42m"
BGY="\033[43m"
BGB="\033[44m"
BGM="\033[45m"
BGC="\033[46m"
BGW="\033[47m"

function colors {
  echo ; echo -e "${NONE}Foreground color codes:" ; echo
  echo -n -e "${NONE}{NONE}" ; echo "	${NONE}"
  echo -n -e "${W}{W}" ; echo -n "	${W}" ; echo -n -e "${EMW}	{EMW}" ; echo "	${EMW}"
  echo -n -e "${B}{B}" ; echo -n "	${B}" ; echo -n -e "${EMB}	{EMB}" ; echo "	${EMB}"
  echo -n -e "${G}{G}" ; echo -n "	${G}" ; echo -n -e "${EMG}	{EMG}" ; echo "	${EMG}"
  echo -n -e "${C}{C}" ; echo -n "	${C}" ; echo -n -e "${EMC}	{EMG}" ; echo "	${EMC}"
  echo -n -e "${R}{R}" ; echo -n "	${R}" ; echo -n -e "${EMR}	{EMR}" ; echo "	${EMR}"
  echo -n -e "${M}{M}" ; echo -n "	${M}" ; echo -n -e "${EMM}	{EMM}" ; echo "	${EMM}"
  echo -n -e "${Y}{Y}" ; echo -n "	${Y}" ; echo -n -e "${EMY}	{EMY}" ; echo "	${EMY}"
  echo -n -e "${K}{K}" ; echo -n "	${K}" ; echo -n -e "${EMK}	{EMK}" ; echo "	${EMK}"
  echo ; echo -e "${NONE}Background color codes:" ; echo
  echo -n -e "${BGK}{BGK}" ; echo "	${BGK}" ; echo -n -e "${NONE}"
  echo -n -e "${BGR}{BGR}" ; echo "	${BGR}" ; echo -n -e "${NONE}"
  echo -n -e "${K}${BGG}{BGG}" ; echo "	${BGG}" ; echo -n -e "${NONE}"
  echo -n -e "${K}${BGY}{BGY}" ; echo "	${BGY}" ; echo -n -e "${NONE}"
  echo -n -e "${BGB}{BGB}" ; echo "	${BGB}" ; echo -n -e "${NONE}"
  echo -n -e "${BGM}{BGM}" ; echo "	${BGM}" ; echo -n -e "${NONE}"
  echo -n -e "${K}${BGC}{BGC}" ; echo "	${BGC}" ; echo -n -e "${NONE}"
  echo -n -e "${K}${BGW}{BGW}" ; echo "	${BGW}" ; echo -n -e "${NONE}"
}
