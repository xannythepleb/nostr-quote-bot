import secrets
# using secrets for better entropy, otherwise it picks the same quotes over and over

text_file = open("quotes.txt")
line = text_file.readlines()

print(secrets.choice(line))
text_file.close()
