# Make sure you modify the paths to match the install locations on your system
# You must provide the full paths when running this script in a crontab as it uses a different environment to your user

# Make sure this script has the executable permission!
# chmod +x gonostrquotes.sh

b=$(/usr/local/go/bin/go run /home/[you]/quotes.py)
echo $b
/home/[you]/go/bin/noscl publish "$b"
