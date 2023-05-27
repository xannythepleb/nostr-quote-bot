package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"math/rand"
	"os"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano()) // Generate entropy

	quotesFile := "quotes.txt"
	tempFile := "temp_quotes.txt"

	// Error handling if quotes.txt is missing
	if _, err := os.Stat(quotesFile); os.IsNotExist(err) {
		// quotes.txt does not exist in current directory, tell the user
  		fmt.Println("quotes.txt is missing - please put a file named quotes.txt in the same directory as this script.")
  		return
	}

	var lines []string

	// Check if temp file exists already
	if _, err := os.Stat(tempFile); err == nil {
		// If it does, load quotes from it
		data, _ := ioutil.ReadFile(tempFile)
		json.Unmarshal(data, &lines)
	} else if os.IsNotExist(err) {
		// If not, copy from the original quotes.txt file
		file, _ := os.Open(quotesFile)
		scanner := bufio.NewScanner(file)
		for scanner.Scan() {
			lines = append(lines, scanner.Text())
		}
		file.Close()

		// Mix it up like codeine and Sprite
		rand.Shuffle(len(lines), func(i, j int) { lines[i], lines[j] = lines[j], lines[i] })
	} else {
		fmt.Println("Error checking file:", err)
		return
	}

	// Pick a random quote
	quote := lines[len(lines)-1]
	lines = lines[:len(lines)-1]

	// If the temp file is empty, delete it so it gets recreated on next run
	if len(lines) == 0 {
		os.Remove(tempFile)
	// If not empty, copy remaining quotes back to it for next run
	} else {
		data, _ := json.Marshal(lines)
		ioutil.WriteFile(tempFile, data, 0644)
	}
	
	// Finally, print a quote
	fmt.Println(quote)
}
