@echo off
::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: Programar en batch
::
:: Proposta de script
::
:: 
::::::::::::::::::::::::::::::::::::::::::::::

:: Título
echo De bytes a bits e de xigas a megas
echo.

:: Pregunta o usuario o tamaño do seu ficheiro
set /P varTam=" O que ocupa o teu ficheiro: "


:: Menú coa opción de convertir de bytes a bits ou de xigas a megas
echo 1. son bytes e quero pasalo a bits
echo 2. son xigas e quero pasalo a megas
echo.

:: Pregunta ó usuario o que quere facer
set /P resposta=" O cambio de unidades que queres facer:  "


:: No caso de que escolla a primeira opción
if %resposta%==1 (
	set /A total= %varTam%*8
	echo Os bits que ocupa son:
)


:: No caso de que escolla a segunda opción
if %resposta%==2 (
	set /A total= %varTam%*1024
	echo Os megas que ocupa son:
)

:: Mostra en pantalla o total da conta
echo %total%
echo.

:: Pregunta se quere enviar o resultado a un ficheiro
set /P varFich="Preme "s" se desexas enviar o resultado a un ficheiro "

:: Manda a un ficheiro se quere o usuario
if %varFich%==s (
	echo %varTam% >> resultado.txt
	echo convertiuse a >> resultado.txt
	echo %total% >> resultado.txt
	if exist resultado.txt (echo Ficheiro gardado)
) else set /p varSeg= "Esta seguro de que non quere enviar o resultado a uno arquivo.Pulse "si" para gardar, ou "non" para volver atras:     "
if %varSeg%==si echo Adeus
if %varSeg%==non echo %total% >> resultado.txt
if %varSeg%==non if exist resultado.txt (echo Ficheiro gardado)


pause
