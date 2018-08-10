$PBExportHeader$w_main_sheet.srw
forward
global type w_main_sheet from window
end type
end forward

global type w_main_sheet from window
integer width = 3479
integer height = 1584
boolean titlebar = true
string title = "Window Sheet"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "Form!"
boolean center = true
end type
global w_main_sheet w_main_sheet

on w_main_sheet.create
end on

on w_main_sheet.destroy
end on

event open;string ls_title

ls_title = message.stringparm

this.Title = ls_title

end event

