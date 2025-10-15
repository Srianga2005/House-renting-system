# How to Run the Backend

## Prerequisites

1. **Java 8+** ✅ (You have Java 17)
2. **Apache Tomcat 9.0+** (Need to install)
3. **MySQL Database** (Need to install and configure)
4. **Apache Ant** ✅ (You have Ant 1.10.15)

## Setup Steps

### 1. Install and Configure MySQL

```bash
# Download and install MySQL from: https://dev.mysql.com/downloads/mysql/
# Or use MySQL Workbench for easier management

# Create database
mysql -u root -p
CREATE DATABASE house;
USE house;
SOURCE database/house.sql;
```

### 2. Install Apache Tomcat

**Option A: Download Manually**
1. Download Tomcat 9.0.82 from: https://tomcat.apache.org/download-90.cgi
2. Extract to: `backend/.tools/tomcat/apache-tomcat-9.0.82`
3. Update `local.build.properties` with the correct path

**Option B: Use the setup script**
```powershell
PowerShell -ExecutionPolicy Bypass -File setup-tomcat.ps1
```

### 3. Configure Database Connection

Edit `src/Database/DatabaseConnection.java` if needed:
- Default: `localhost:3306/house`
- Username: `root` (or set `DB_USERNAME` environment variable)
- Password: `root` (or set `DB_PASSWORD` environment variable)

### 4. Build the Project

```bash
# Clean and build
ant clean
ant build

# Or compile manually
javac -cp "src;../frontend/web/WEB-INF/lib/*" -d build/classes src/Database/DatabaseConnection.java
javac -cp "src;../frontend/web/WEB-INF/lib/*" -d build/classes src/Entity/*.java
javac -cp "src;../frontend/web/WEB-INF/lib/*" -d build/classes src/AdminController/*.java
javac -cp "src;../frontend/web/WEB-INF/lib/*" -d build/classes src/Controller/*.java
javac -cp "src;../frontend/web/WEB-INF/lib/*" -d build/classes src/CustomerController/*.java
```

### 5. Deploy and Run

**Option A: Using Ant (Recommended)**
```bash
ant run
```

**Option B: Manual Tomcat Deployment**
1. Copy compiled classes to Tomcat's webapps directory
2. Copy frontend/web contents to Tomcat's webapps/ROOT
3. Start Tomcat server
4. Access: http://localhost:8080

## Quick Start (If you have Tomcat installed)

```bash
# 1. Set Tomcat path
set TOMCAT_HOME=C:\path\to\your\tomcat

# 2. Build
ant -Dj2ee.server.home=%TOMCAT_HOME% build

# 3. Run
ant -Dj2ee.server.home=%TOMCAT_HOME% run
```

## Troubleshooting

### Common Issues:

1. **"server home directory is missing"**
   - Install Tomcat and set the path in `local.build.properties`
   - Or use: `ant -Dj2ee.server.home=<tomcat_path> build`

2. **Database connection errors**
   - Make sure MySQL is running
   - Check database credentials in `DatabaseConnection.java`
   - Verify database `house` exists and has the correct schema

3. **Class not found errors**
   - Make sure all JAR files are in `../frontend/web/WEB-INF/lib/`
   - Check classpath in compilation commands

## Access the Application

Once running, access the application at:
- **Home**: http://localhost:8080
- **Admin Login**: http://localhost:8080/AdminLogin.jsp
- **Client Login**: http://localhost:8080/clientLogin.jsp
- **Customer Login**: http://localhost:8080/CustomerLogin.jsp

## Default Users (if database is populated)

Check the database for default user accounts, or create new ones through the registration pages.



