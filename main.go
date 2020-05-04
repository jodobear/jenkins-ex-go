package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
)

type Simple struct {
	Name string
	Description string
	Url string
}

func SimpleFactory (host string) Simple {
	return Simple{"Hello", "World", host}
}

func main() {
	fmt.Println("Server started")
	http.HandleFunc("/", SimpleFactory)
	log.Fatal(http.ListenAndServe(":9090", nil))
}
