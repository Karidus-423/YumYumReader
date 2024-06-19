package ui

import (
	"fyne.io/fyne/v2/app"
)

func Home_page() {
	myApp := app.New()
	myWindow := myApp.NewWindow("Box Layout")
	navBar := nav_bar()
	myWindow.SetContent(navBar)

	myWindow.ShowAndRun()
}
