$PBExportHeader$pruebasvarias.sra
$PBExportComments$Generated Application Object
forward
global type pruebasvarias from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pruebasvarias from application
string appname = "pruebasvarias"
end type
global pruebasvarias pruebasvarias

on pruebasvarias.create
appname="pruebasvarias"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pruebasvarias.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
OleObject wsh
Integer  li_rc

/*
WScript.Network
=============
Properties:

    UserName     The username variable, likely the SAM Account Name (the pre-Windows 2000 name)
    UserDomain   The NetBIOS domain name
    ComputerName This is the NetBIOS computer name

Methods

    AddWindowsPrinterConnection Add a printer in Windows 2000 and higher
    AddPrinterConnection    Add a printer in older systems
    EnumNetworkDrives       List the mapped drives on the computer
    EnumPrinterConnections  List the installed printers
    MapNetworkDrive         Map a network drive
    RemoveNetworkDrive      Remove a network drive
    RemovePrinterConnection Remove a printer connection
    SetDefaultPrinter       Set the default printer
	 
Ejemplo

oleobject ole_object 
long ll_rc 
ole_object=CREATE oleobject 
ll_rc=ole_object.ConnectToNewObject("WScript.Network") 

//Nombre de la impresora 
ole_object.SetDefaultPrinter("Canon Bubble-Jet BJC-240") 

ole_object.DisconnectObject() 
Destroy ole_object 
*/

wsh = CREATE OleObject
li_rc = wsh.ConnectToNewObject( "WScript.Network" )
IF li_rc = 0 THEN
	MessageBox( "Domain", "Dominio: " + String( wsh.UserDomain) + " Computadora: " + String( wsh.ComputerName) + " usuario: " + String( wsh.UserName) )
END IF
wsh.DiconnectObject()
DESTROY (wsh)


end event

