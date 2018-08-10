$PBExportHeader$w_docking_window.srw
forward
global type w_docking_window from window
end type
end forward

global type w_docking_window from window
integer width = 1138
integer height = 996
boolean titlebar = true
string title = "Window Dock"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "Library5!"
boolean center = true
end type
global w_docking_window w_docking_window

on w_docking_window.create
end on

on w_docking_window.destroy
end on

event open;string ls_title

ls_title = message.stringparm

this.Title = ls_title

end event

