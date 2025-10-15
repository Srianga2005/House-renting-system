# PowerShell script to download and setup Apache Tomcat
# Run this script as Administrator if needed

Write-Host "Setting up Apache Tomcat for Online House Renting System..." -ForegroundColor Green

# Create tools directory
$toolsDir = ".tools"
$tomcatDir = "$toolsDir\tomcat"

if (!(Test-Path $toolsDir)) {
    New-Item -ItemType Directory -Path $toolsDir -Force
}

if (!(Test-Path $tomcatDir)) {
    New-Item -ItemType Directory -Path $tomcatDir -Force
}

# Download Tomcat 9.0.82 (compatible with Java 17)
$tomcatVersion = "9.0.82"
$tomcatUrl = "https://archive.apache.org/dist/tomcat/tomcat-9/v$tomcatVersion/bin/apache-tomcat-$tomcatVersion-windows-x64.zip"
$tomcatZip = "$tomcatDir\apache-tomcat-$tomcatVersion.zip"
$tomcatExtractDir = "$tomcatDir\apache-tomcat-$tomcatVersion"

Write-Host "Downloading Apache Tomcat $tomcatVersion..." -ForegroundColor Yellow

try {
    # Download Tomcat
    Invoke-WebRequest -Uri $tomcatUrl -OutFile $tomcatZip -UseBasicParsing
    Write-Host "Download completed!" -ForegroundColor Green
    
    # Extract Tomcat
    Write-Host "Extracting Tomcat..." -ForegroundColor Yellow
    Expand-Archive -Path $tomcatZip -DestinationPath $tomcatDir -Force
    
    # Clean up zip file
    Remove-Item $tomcatZip -Force
    
    Write-Host "Tomcat setup completed!" -ForegroundColor Green
    Write-Host "Tomcat is installed at: $tomcatExtractDir" -ForegroundColor Cyan
    
    # Update local.build.properties
    $propertiesFile = "local.build.properties"
    $propertiesContent = @"
# Local overrides for Ant build
# Adjust these paths if your Tomcat/MySQL jar locations differ

# Tomcat installation directory (no trailing slash)
j2ee.server.home=$tomcatExtractDir

# MySQL JDBC driver jar used by NetBeans project reference
file.reference.mysql-connector-java-5.1.5-bin.jar=../frontend/web/WEB-INF/lib/mysql-connector.jar
"@
    
    Set-Content -Path $propertiesFile -Value $propertiesContent
    Write-Host "Updated local.build.properties with Tomcat path" -ForegroundColor Green
    
} catch {
    Write-Host "Error downloading Tomcat: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Please download Tomcat manually from: https://tomcat.apache.org/download-90.cgi" -ForegroundColor Yellow
    Write-Host "Extract it to: $tomcatExtractDir" -ForegroundColor Yellow
}

Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Make sure MySQL is installed and running" -ForegroundColor White
Write-Host "2. Create database: mysql -u root -p < setup-database.sql" -ForegroundColor White
Write-Host "3. Import schema: mysql -u root -p house < database/house.sql" -ForegroundColor White
Write-Host "4. Build project: ant build" -ForegroundColor White
Write-Host "5. Run project: ant run" -ForegroundColor White



