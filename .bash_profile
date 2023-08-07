export PATH=/c/mingw64/bin*$PATH

# Color定義
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# Gitのbranchを取得
prompt_git() {
	local branchName='';

	# ワークツリー内にいるか確認
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo $?) == '0' ]; then

		# branch名、またはhashの短縮表記を取得
		branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
			git rev-parse --short HEAD 2> /dev/null || \
			echo '(unknown)')";

		echo -e "${1}${branchName}";
	else
		return;
	fi;
}

# 現在時刻を取得
time_now(){
	time=`date +%H%M`
    workStart=1000
    workEnd=2100

    if [ $workStart -lt $time -a $time -lt $workEnd ]; then
        echo -e "${txtwht}[$(date '+%r')]"
	else
        echo -e "${bakred}[$(date '+%r')]"
    fi;
}

PS1="\$(time_now)";
PS1+="\[${txtgrn}\] \W"; # working directory
PS1+="\$(prompt_git \"\[${bldwht}\] on \[${txtylw}\]\")"; # Git repository details
PS1+="\[${txtwht}\] \$ \[${reset}\]"; # `fi
