#!/bin/bash

# Make sure this script has the executable permission!
# chmod +x install_nostr_bot.sh

# Make sure you modify the paths if you move the directory from your home folder

echo "Please choose the version of the script to install as a cronjob:"
echo "1. Python"
echo "2. Go"
read -p "Make sure the language is already installed on this system and enter your choice (1 or 2): " choice

case $choice in
  1)
    script="nostrquotes.sh"
    ;;
  2)
    script="gonostrquotes.sh"
    ;;
  *)
    echo "Invalid choice, please type 1 or 2 only."
    exit 1
    ;;
esac

(crontab -l 2>/dev/null; echo "0 */3 * * * $HOME/nostr-quote-bot/$script") | crontab -
echo "$script will now run as a cronjob every three hours - you may alter or remove the crontab entry at any time by running crontab -e from this account, but please make sure you know what you're doing!"