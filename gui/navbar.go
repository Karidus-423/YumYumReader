package ui

import (
	"log"

	"fyne.io/fyne/v2/container"
	"fyne.io/fyne/v2/layout"
	"fyne.io/fyne/v2/widget"
)

func nav_bar() {
	settingsButton := widget.NewButton("Settings", func() {
		log.Println("Entered Settings")
	})
	libraryButton := widget.NewButton("Library", func() {
		log.Println("Entered Library")
	})
	homeButton := widget.NewButton("Yum Yum Reader", func() {
		log.Println("Entered Home Page")
	})

	bar := container.New(layout.NewHBoxLayout(), settingsButton, homeButton,
		layout.NewSpacer(), libraryButton)
}
