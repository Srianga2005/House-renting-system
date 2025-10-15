# Backend - Online House Renting System

This directory contains the backend Java application for the Online House Renting System.

## Structure

```
backend/
├── src/                    # Java source code
│   ├── AdminController/    # Admin-related controllers
│   │   ├── AdminLogin.java
│   │   ├── AdminRegister.java
│   │   └── EditAdminProfile.java
│   ├── Controller/         # Main application controllers
│   │   ├── AddHouse.java
│   │   ├── ClientLogin.java
│   │   ├── ClientRegister.java
│   │   ├── EditClientProfile.java
│   │   └── UpdateHouse.java
│   ├── CustomerController/ # Customer-related controllers
│   │   ├── CustomerLogin.java
│   │   ├── CustomerRegister.java
│   │   └── EditUserProfile.java
│   ├── Database/          # Database connection classes
│   │   └── DatabaseConnection.java
│   └── Entity/            # Data model classes
│       ├── Admin.java
│       ├── Client.java
│       ├── House.java
│       └── User.java
├── database/              # Database scripts
│   ├── house.sql         # Main database schema
│   └── house_fixed.sql   # Fixed database schema
├── config/               # Configuration files
│   └── conf/             # Application configuration
├── nbproject/            # NetBeans project configuration
├── build.xml             # Ant build script
└── local.build.properties # Local build properties
```

## Controllers

### AdminController
- `AdminLogin.java` - Handles admin authentication
- `AdminRegister.java` - Handles admin registration
- `EditAdminProfile.java` - Handles admin profile updates

### Controller
- `AddHouse.java` - Handles adding new houses
- `ClientLogin.java` - Handles client authentication
- `ClientRegister.java` - Handles client registration
- `EditClientProfile.java` - Handles client profile updates
- `UpdateHouse.java` - Handles house information updates

### CustomerController
- `CustomerLogin.java` - Handles customer authentication
- `CustomerRegister.java` - Handles customer registration
- `EditUserProfile.java` - Handles user profile updates

## Entities

### Data Models
- `Admin.java` - Admin entity with properties and methods
- `Client.java` - Client entity for property owners
- `House.java` - House entity with rental information
- `User.java` - User entity for customers

## Database

### Database Connection
- `DatabaseConnection.java` - Manages database connections and operations

### Database Scripts
- `house.sql` - Main database schema with tables for users, clients, admins, and houses
- `house_fixed.sql` - Updated database schema with fixes

## Development

### Prerequisites
- Java 8 or higher
- Apache Tomcat 8.5 or higher
- MySQL 5.7 or higher
- Apache Ant (for building)

### Setup
1. Configure database connection in `DatabaseConnection.java`
2. Run database scripts in the `database/` folder
3. Update database credentials in the connection class
4. Build the project:
   ```bash
   ant build
   ```
5. Deploy to Tomcat server

### Build Configuration
- `build.xml` - Ant build script for compilation and packaging
- `project.properties` - NetBeans project configuration
- `local.build.properties` - Local build properties

## API Endpoints

The application uses JSP and servlets for handling requests. Main endpoints include:

- `/AdminLogin` - Admin login processing
- `/AdminRegister` - Admin registration processing
- `/ClientLogin` - Client login processing
- `/ClientRegister` - Client registration processing
- `/CustomerLogin` - Customer login processing
- `/CustomerRegister` - Customer registration processing
- `/AddHouse` - Add new house processing
- `/UpdateHouse` - Update house processing

## Technologies Used
- **Java 8** - Programming language
- **JSP** - Server-side rendering
- **Servlets** - Web application framework
- **MySQL** - Database
- **Apache Ant** - Build tool
- **Apache Tomcat** - Application server

## Notes
- This backend is designed to work with the JSP frontend
- Database connection details need to be configured before deployment
- The application follows MVC pattern with separate controllers for different user types



