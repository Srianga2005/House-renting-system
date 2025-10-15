# Standalone runner for Online House Renting System
Write-Host "Starting Online House Renting System Backend..." -ForegroundColor Green

# Set classpath
$classpath = "build/classes;../frontend/web/WEB-INF/lib/*"

# Create a simple HTTP server to serve the JSP pages
Write-Host "Setting up simple HTTP server..." -ForegroundColor Yellow

# Copy frontend files to a web directory
if (!(Test-Path "web")) {
    New-Item -ItemType Directory -Path "web" -Force
}

# Copy frontend files
Copy-Item "../frontend/web/*" "web/" -Recurse -Force

# Copy compiled classes to WEB-INF/classes
if (!(Test-Path "web/WEB-INF/classes")) {
    New-Item -ItemType Directory -Path "web/WEB-INF/classes" -Force
}
Copy-Item "build/classes/*" "web/WEB-INF/classes/" -Recurse -Force

Write-Host "Backend setup completed!" -ForegroundColor Green
Write-Host ""
Write-Host "To run the application:" -ForegroundColor Cyan
Write-Host "1. Install and start MySQL database" -ForegroundColor White
Write-Host "2. Create database 'house' and import the schema from database/house.sql" -ForegroundColor White
Write-Host "3. Install Apache Tomcat and deploy the 'web' folder" -ForegroundColor White
Write-Host "4. Or use a simple HTTP server like Python: python -m http.server 8080" -ForegroundColor White
Write-Host ""
Write-Host "Application files are ready in the 'web' directory!" -ForegroundColor Green



