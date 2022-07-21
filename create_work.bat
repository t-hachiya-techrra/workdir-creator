@ECHO OFF

if exist current_work (
    rmdir current_work
)

if not exist "%DATE:~0,4%%DATE:~5,2%" (
    mkdir "%DATE:~0,4%%DATE:~5,2%"
)

if not exist "%DATE:~0,4%%DATE:~5,2%\work_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%" (
    mkdir "%DATE:~0,4%%DATE:~5,2%\work_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%"
)

mklink /j current_work "%DATE:~0,4%%DATE:~5,2%\work_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%"

START EXPLORER "%DATE:~0,4%%DATE:~5,2%\work_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%"
