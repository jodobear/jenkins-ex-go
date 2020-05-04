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

func handler(w http.ResponseWriter, r *http.Request) {
	simple := Simple{"Hello", "World",r.Host}

	jsonOutput, _ := json.Marshal(simple)

	fmt.Fprintln(w, string(jsonOutput))
}

func main() {
	fmt.Println("Server started differently..")
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":9090", nil))
}
