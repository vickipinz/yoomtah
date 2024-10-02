package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	fmt.Println("my mango is to blow up")

	if len(os.Args) > 1 {
		web()
	}
}

func web() {
	http.HandleFunc("/main.html", func(w http.ResponseWriter, r *http.Request) {
		bytes, err := os.ReadFile("main.html")
		if err != nil {
			w.WriteHeader(500)
			return
		}
		w.Header().Add("Content-Type", "text/html")
		w.Write(bytes)
	})

	http.HandleFunc("/Picture", func(w http.ResponseWriter, r *http.Request) {
		bytes, err := os.ReadFile("con/Desktop/134.png")
		if err != nil {
			w.WriteHeader(500)
			return
		}
		w.Header().Add("Content-Type", "image/png")
		w.Write(bytes)
	})

	http.ListenAndServe(":8080", nil)
}
