# PowerShell script to compile the Online House Renting System Backend

Write-Host "Compiling Online House Renting System Backend..." -ForegroundColor Green

# Create build directory
if (!(Test-Path "build\classes")) {
    New-Item -ItemType Directory -Path "build\classes" -Force
}

# Set classpath
$classpath = "src;../frontend/web/WEB-INF/lib/*"

Write-Host "Compiling Database classes..." -ForegroundColor Yellow
javac -cp $classpath -d build/classes src/Database/DatabaseConnection.java

Write-Host "Compiling Entity classes..." -ForegroundColor Yellow
javac -cp $classpath -d build/classes src/Entity/Admin.java
javac -cp $classpath -d build/classes src/Entity/Client.java
javac -cp $classpath -d build/classes src/Entity/House.java
javac -cp $classpath -d build/classes src/Entity/User.java

Write-Host "Compiling AdminController classes..." -ForegroundColor Yellow
javac -cp $classpath -d build/classes src/AdminController/AdminLogin.java
javac -cp $classpath -d build/classes src/AdminController/AdminRegister.java
javac -cp $classpath -d build/classes src/AdminController/EditAdminProfile.java

Write-Host "Compiling Controller classes..." -ForegroundColor Yellow
javac -cp $classpath -d build/classes src/Controller/AddHouse.java
javac -cp $classpath -d build/classes src/Controller/ClientLogin.java
javac -cp $classpath -d build/classes src/Controller/ClientRegister.java
javac -cp $classpath -d build/classes src/Controller/EditClientProfile.java
javac -cp $classpath -d build/classes src/Controller/UpdateHouse.java

Write-Host "Compiling CustomerController classes..." -ForegroundColor Yellow
javac -cp $classpath -d build/classes src/CustomerController/CustomerLogin.java
javac -cp $classpath -d build/classes src/CustomerController/CustomerRegister.java
javac -cp $classpath -d build/classes src/CustomerController/EditUserProfile.java

Write-Host "Compilation completed!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Install and configure MySQL database" -ForegroundColor White
Write-Host "2. Install Apache Tomcat" -ForegroundColor White
Write-Host "3. Run: ant build (after setting up Tomcat)" -ForegroundColor White
Write-Host "4. Run: ant run" -ForegroundColor White



