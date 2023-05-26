import random
import os
import json

# New version rewritten from the ground up
# Ensures that there are no duplicates by creating a new list of quotes and deleting quotes from that list after the script has been run
# Doesn't touch the original quotes file, it copies the contents to the temp file after shuffling them, then reads from the temp file and deletes quotes from that
# Once the temp file is empty the script will delete it, then on the next run it creates a new temp file and starts again

# Temp file must be written to disk for persistance between runs
quotes_file = "quotes.txt"
temp_file = "temp_quotes.txt"

def get_quote():
    if os.path.exists(temp_file):
        with open(temp_file, 'r') as f:
            lines = json.load(f)
    else:
        with open(quotes_file, 'r') as f:
            lines = f.readlines()
        random.shuffle(lines)

    quote = lines.pop()

    # If the list is empty delete temp file, else write the remaining quotes (minus the one just used) back
    if not lines:
        os.remove(temp_file)
    else:
        with open(temp_file, 'w') as f:
            json.dump(lines, f)

    return quote

print(get_quote())
