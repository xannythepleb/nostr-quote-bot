# Make sure you modify the paths if you move the directory from your home folder or noscl is installed elsewhere
# You must provide the full paths when running this script in a crontab as it uses a different environment to your user

# Make sure this script has the executable permission!
# chmod +x nostrquotes.sh

b=$(python3 $HOME/nostr-quote-bot/quotes.py)
echo $b
$HOME/go/bin/noscl publish "$b"