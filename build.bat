@echo off
del sources.txt 2>nul
for /r "src" %%f in (*.java) do echo "%%f" >> sources.txt
mkdir out 2>nul

javac --module-path "C:\javafx-sdk-17\lib" --add-modules=javafx.controls,javafx.fxml ^
-cp "lib/*;src" -d out @sources.txt

echo.
echo =======================
echo   BUILD FINISHED
echo =======================
pause
