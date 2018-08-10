$PBExportHeader$w_main_dock.srw
forward
global type w_main_dock from window
end type
type mdi_1 from mdiclient within w_main_dock
end type
end forward

global type w_main_dock from window
integer width = 3479
integer height = 2252
boolean titlebar = true
string title = "Untitled"
string menuname = "m_main_menu"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowtype windowtype = mdidockhelp!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mdi_1 mdi_1
end type
global w_main_dock w_main_dock

on w_main_dock.create
if this.MenuName = "m_main_menu" then this.MenuID = create m_main_menu
this.mdi_1=create mdi_1
this.Control[]={this.mdi_1}
end on

on w_main_dock.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
end on

event open;window lw_dock1, lw_dock2
window lw_sheet1, lw_sheet2

opensheetwithparmDocked(lw_dock1, 'Docked Properties', 'w_docking_window', w_main_dock, WindowDockLeft!, 'DockProperties')
opensheetwithparmInTabGroup(lw_dock2, 'Docked Classes', 'w_docking_window', lw_dock1, 'DockClasses')

opensheetWithParmAsDocument(lw_sheet1,'Area de Trabajo 1','w_main_sheet',w_main_dock,'SheetTrabajo1')
opensheetWithParmAsDocument(lw_sheet2,'Area de Trabajo 2','w_main_sheet',w_main_dock,'SheetTrabajo2')

lw_sheet1.setfocus()
lw_dock1.setfocus()

end event

type mdi_1 from mdiclient within w_main_dock
long BackColor=268435456
end type

