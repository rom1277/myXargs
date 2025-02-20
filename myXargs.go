package main

import (
	"bufio"
	"fmt"
	"os"
	"os/exec"
)

func main() {
	console := bufio.NewScanner(os.Stdin)
	args := os.Args[1:]
	var x []string
	for console.Scan() {
		in := console.Text()
		if in == "" {
			continue
		}
		x = append(x, in)
	}
	args = append(args, x...)
	cmd := exec.Command(args[0], args[1:]...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	err := cmd.Run()
	if err != nil {
		fmt.Fprintln(os.Stderr, "Error executing command:", err)
		os.Exit(1)
	}
}
