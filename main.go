package main

import (
	"crypto/md5"
	"fmt"
	"os"
	"os/exec"
)

// Intentionally vulnerable sample for validating the gosec scanner.
func main() {
	// G401 / G501 — weak cryptographic primitive
	fmt.Println(md5.New())

	// G204 — subprocess with tainted input; G104 — unhandled error
	arg := os.Getenv("USER_INPUT")
	exec.Command("sh", "-c", "echo "+arg).Run()
}
