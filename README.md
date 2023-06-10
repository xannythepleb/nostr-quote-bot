# Nostr quote bot

**Update 26/05/23: Quotes.py script totally rewritten to avoid duplicates. For details see the comments in [the script.](https://github.com/xannythepleb/nostr-quote-bot/blob/main/quotes.py)**

**Update 27/05/23: Added a [Go version!](https://github.com/xannythepleb/nostr-quote-bot/blob/main/quotes.go)**

**Update 10/06/23: Added [an install script](https://github.com/xannythepleb/nostr-quote-bot/blob/main/install_nostr_bot.sh) to automate adding your choice of Python or Go script as a cronjob!**

A Nostr quote bot for Linux. Picks a random line from a text file and sends it to Nostr using [Noscl.](https://github.com/fiatjaf/noscl)

Simply clone the repo and give the shell scripts execute permissions by running this command inside the `nostr-quote-bot` directory:

```
chmod +x install_nostr_bot.sh && chmod +x nostrquotes.sh && chmod +x gonostrquotes.sh
```

Then run the install script:

```
./install_nostr_bot.sh
```

Done!

[Here is an example of this in action!](https://primal.net/profile/npub1ms4z8e2fsgjh75vtk8c9pym50gjvp3uxl7uru8v7c7pnd9empadq2ulevr)

Direct link to open in Nostr client:

nostr://npub1ms4z8e2fsgjh75vtk8c9pym50gjvp3uxl7uru8v7c7pnd9empadq2ulevr

[Full guide here.](https://habla.news/a/naddr1qqnkummnw3ez6ut4da6x2uedvfhhgtts096xsmmw94eksetvdskhvetj0ykk2ctn0yqjzamnwvaz7tmjv4kxz7fww35x2mmjv9hxwetsd9kxcctswqhxxmmd9uqs7amnwvaz7tmw9eux6u3wwdjj7qglwaehxw309ahx7um5wghxymr0vd4hqmmhv4ezucmpwp5hgctv9uq3jamnwvaz7tmjv4kxz7fwwdhx7un59eek7cmfv9kz7qgewaehxw309aex2mrp0yhxzatnw3exjcmg9ehx2ap0qgs0plu8uaukh2r0ep95spajtfw7ugrdwfxx7cd23pfewk3emmh07kqrqsqqqa286tzjfv)

Comes in three parts:

* Python script
* Shell script
* Crontab entry

You simply provide:

* A text file with a new quote (or whatever you want to post) on each line

Dependencies:

* Python 3
* Go (for Noscl)
* Noscl
* Linux
