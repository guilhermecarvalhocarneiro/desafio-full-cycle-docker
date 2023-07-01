package main

import (
	"fmt"
	"os"
)

func main() {
	message := os.Getenv("MESSAGE")
	if message == "" {
		message = "Full Cycle Rocks!!"
	}

	fmt.Println(message)
}
