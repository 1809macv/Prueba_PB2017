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
appname = "pruebasvarias"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on pruebasvarias.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

