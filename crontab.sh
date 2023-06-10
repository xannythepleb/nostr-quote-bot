# PLEASE NOTE: An automated install script has now been added to the repo to install the script as a cronjob automatically!
# I recommend using that instead. If on the other hand you are comfortable editing the crontab yourself, let this serve as a guide on what my working setup looks like.

# put this in your crontab
# crontab -e

# Make sure the shell script (nostrquotes.sh or gonostrquotes.sh) you use has executable permissions
# chmod +x nostrquotes.sh or chmod +x gonostrquotes.sh

# For Python version
0 */3 * * * /home/[you]/nostrquotes.sh >> /home/[you]/nostrbot-cron.log

# For Go version
0 */3 * * * /home/[you]/gonostrquotes.sh >> /home/[you]/gonostrbot-cron.log