@echo off
echo Compiling Connect Four Game...
if exist "out" rmdir /s /q "out"
mkdir out
echo Compiling all Java files...
javac -d out -cp src/main/java src/main/java/com/connectfour/*.java src/main/java/com/connectfour/model/*.java src/main/java/com/connectfour/view/*.java src/main/java/com/connectfour/controller/*.java src/main/java/com/connectfour/util/*.java
if %errorlevel% == 0 (
    echo Compilation successful!
) else (
    echo Compilation failed!
)
pause