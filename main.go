package main

import (
	"fmt"
	"net/http"

	"github.com/varasheb/laffw/config"

	"github.com/go-chi/chi/v5"
)

func main() {

	config.InitDB()

	r := chi.NewRouter()
	r.Get("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Welcome to laf firmware db"))
	})
	// r.Mount("/users", userhdlr.UserRoutes())
	// r.Mount("/tasks", taskhdlr.TaskRoutes())
	// r.Mount("/teams", teamhdlr.TeamRoutes())

	fmt.Println("Starting server on :8080.....")
	http.ListenAndServe(":8080", r)
}
