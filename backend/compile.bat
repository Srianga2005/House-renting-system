@echo off
echo Compiling Online House Renting System Backend...

REM Create build directory
if not exist "build\classes" mkdir "build\classes"

REM Set classpath
set CLASSPATH=src;../frontend/web/WEB-INF/lib/*

REM Compile Database classes
echo Compiling Database classes...
javac -cp "%CLASSPATH%" -d build/classes src/Database/DatabaseConnection.java

REM Compile Entity classes
echo Compiling Entity classes...
javac -cp "%CLASSPATH%" -d build/classes src/Entity/Admin.java
javac -cp "%CLASSPATH%" -d build/classes src/Entity/Client.java
javac -cp "%CLASSPATH%" -d build/classes src/Entity/House.java
javac -cp "%CLASSPATH%" -d build/classes src/Entity/User.java

REM Compile Controller classes
echo Compiling Controller classes...
javac -cp "%CLASSPATH%" -d build/classes src/AdminController/AdminLogin.java
javac -cp "%CLASSPATH%" -d build/classes src/AdminController/AdminRegister.java
javac -cp "%CLASSPATH%" -d build/classes src/AdminController/EditAdminProfile.java

javac -cp "%CLASSPATH%" -d build/classes src/Controller/AddHouse.java
javac -cp "%CLASSPATH%" -d build/classes src/Controller/ClientLogin.java
javac -cp "%CLASSPATH%" -d build/classes src/Controller/ClientRegister.java
javac -cp "%CLASSPATH%" -d build/classes src/Controller/EditClientProfile.java
javac -cp "%CLASSPATH%" -d build/classes src/Controller/UpdateHouse.java

javac -cp "%CLASSPATH%" -d build/classes src/CustomerController/CustomerLogin.java
javac -cp "%CLASSPATH%" -d build/classes src/CustomerController/CustomerRegister.java
javac -cp "%CLASSPATH%" -d build/classes src/CustomerController/EditUserProfile.java

echo Compilation completed!
echo.
echo Next steps:
echo 1. Install and configure MySQL database
echo 2. Install Apache Tomcat
echo 3. Run: ant build (after setting up Tomcat)
echo 4. Run: ant run
echo.
pause



