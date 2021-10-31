@echo off
::Set UTF-8
chcp 65001 > nulcmd

setlocal EnableDelayedExpansion

::################################################################
:: Exportação de Aplicativos do Qlik Sense de Saas Para OnPremise
::
:: Autor: Jean Paul T Neumann
:: Atualização: 30/10/2021
::
:: http://www.ntech.com.br
::
::(c) 2021 By NTech Tecnologia de Informacao Ltda
::################################################################

::Ler corrente Data e Hora
for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do set %%x

::Ler TimeStamp
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "timestamp=%dt:~0,14%"
::set timestamp=%Year%%Month%%Day%%Hour%%Minute%%Second%

::Inicializa variáveis
set ParamSpaceName=
set ParamNoData=
set SpaceName=
set SpaceID=
set count=0

::Define Atributos Caracteres
::https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences
set normal=[0m
set bold=[1m
set yellow=[33m

::Checa se foi passado params
if [%1]==[] goto main

	if "%~1"=="--help" (
		
		echo %yellow%%bold%Exportação Aplicativos Qlik Sense Saas Por Space%normal%
		echo ================================================
		echo By NTech Tecnologia de Informação Ltda
		echo.
		echo Sintaxe: 
		echo %0 [SpaceName] [--nodata] [--help]
		echo.
		echo Parâmetros:
		echo.
		echo      [Space Name] - Nome do Space onde residem os apps para exportação. Não informado usará o default do script
		echo      --nodata - efetuar exportação do app sem dados
		echo      --help - Tela de ajuda
		echo.
		
		::Finaliza script
		goto :eof
	) else (
			
		rem if NOT [%2]==[] if NOT "%~1"=="--nodata" (set ParamSpaceName=%~1)
		
		if "%~1"=="--nodata" (
			set ParamNoData=1
			if NOT [%2]==[] set ParamSpaceName=%~2
		) else (
			set ParamSpaceName=%~1
		)
		
		if "%~2"=="--nodata" (
			set ParamNoData=1
			set ParamSpaceName=%~1
		) else (
			if NOT [%2]==[] set ParamSpaceName=%~2
		)
			
		rem echo :::: !ParamSpaceName!  !ParamNoData! 
		
	)
	

:main

::Define variavel com nome do Space a ser processado
if not "%ParamSpaceName%"=="" (
	Set SpaceName="%ParamSpaceName%"
) else (
	Set SpaceName=CDDNE-Devel
)

echo ==================================================
echo %yellow%%bold%Exportação Aplicativos Qlik Sense SaaS Por Space%normal%
echo Space %bold%%SpaceName%%normal%
echo (c) 2021 By NTech Tecnologia de Informação Ltda
echo %Day%/%Month%/%Year%  %Hour%:%Minute%:%Second%
echo %timestamp%
echo ==================================================
Rem Need to use jq - https://stedolan.github.io/jq/download/

::Ler ID de SpaceName e coloca na variável SpaceID
for /f "delims=" %%i in ('qlik space ls --name %SpaceName%^|jq -r ".[]|.id"') do set SpaceID=%%i

echo SpaceID: %SpaceID%

::Checa se Space informado existe
if "%SpaceID%"=="" (
	Echo Space Não Encontrado em . Verifique...
	goto :eof
)

::Ler aplicativos existentes no SpaceID
FOR /F "tokens=1-2" %%i IN ('qlik item ls --limit 1000 --resourceType app --spaceId %SpaceID%^|jq --raw-output -r ".[]|.name + \"\t\"  + .resourceAttributes.id"' ) do (
	
	rem %%i=Name  %%j=ID
	
	set /A count=count+1
	
	echo Exportando APP %%i [%%j]
	
	
	if "%ParamNoData%"=="" (
		::Exporta os aplicativos com dados
		qlik app export %%j --output-file "%%i (%timestamp%).qvf" 
	
	) else (
		::Exporta os aplicativos com dados
		qlik app export %%j --output-file "%%i (%timestamp%)-nd.qvf" --NoData
	
	)
	
)

echo.
echo Processados %count% Registros

:end

