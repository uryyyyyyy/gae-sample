package main

import (
	"net/http"
	"sample1"
	"appengine"
)

func init() {
	http.HandleFunc("/", sample1Handler)
}

func sample1Handler(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	sample1.RequestHandler(w, r, ctx)
}