# Online House Renting System

House rental portal is a webpage where house owners, clients, customers can exchange information effectively and inexpensively. Provides user-friendly interface, satisfying the needs of the consumers. Employs a new strategy that facilitates easy management of rental houses.

## Project Structure

This project has been reorganized into separate frontend and backend components for better maintainability and development workflow.

```
OnlineHouseRentingSystem-master/
├── backend/                    # Backend Java Application
│   ├── src/                   # Java source code
│   │   ├── AdminController/   # Admin-related controllers
│   │   ├── Controller/        # Main application controllers
│   │   ├── CustomerController/# Customer-related controllers
│   │   ├── Database/          # Database connection classes
│   │   └── Entity/            # Data model classes
│   ├── database/              # Database scripts
│   │   ├── house.sql         # Main database schema
│   │   └── house_fixed.sql   # Fixed database schema
│   ├── config/               # Configuration files
│   │   └── conf/             # Application configuration
│   ├── nbproject/            # NetBeans project configuration
│   ├── build.xml             # Ant build script
│   └── local.build.properties# Local build properties
├── frontend/                  # Frontend Web Application
│   ├── web/                  # Web application files
│   │   ├── *.jsp             # JSP pages
│   │   ├── css/              # Stylesheets
│   │   ├── js/               # JavaScript files
│   │   ├── img/              # Images and assets
│   │   ├── vendor/           # Third-party libraries
│   │   └── WEB-INF/          # Web application configuration
│   └── assets/               # Additional frontend assets
│       └── Projects Screenshot/ # Project screenshots
└── README.md                 # This file
```

## MODULES

### OWNER
This module is operated by the user who is the owner of the property and wants to give it for rent. The owner should register with an application which will be authorized by the client. The owner can upload room details, pictures, location, rent, etc. which comes under owner module. The owner can view the house and add house from his module.

### CLIENT
This module is operated by a client who is an admin to this application who will look after users registering with the application (owners and customers) and activate and deactivate them.

### CUSTOMER
This module is operated by a customer who needs to register with the application. A customer is a person who is looking for rent. The customer is activated by client and customer can search based on specifications and get results about rent details.

## EXISTING SYSTEM

The housing sector remains vigilant to face the challenges of the change of the existing system. People migrating to other cities or states either for different purposes. Finding a shelter, which fits all the requirements of the customer is hard, most of them don't match their needs.

## Development Setup

### Backend Setup
1. Navigate to the `backend/` directory
2. Ensure you have Java 8+ and Apache Tomcat installed
3. Configure your database connection in the Database classes
4. Run the database scripts in the `database/` folder
5. Build the project using the provided `build.xml`

### Frontend Setup
1. The frontend files are located in the `frontend/web/` directory
2. Deploy the web application to your Tomcat server
3. Ensure all CSS, JS, and image assets are properly linked

## Project Screenshots

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_53_53 PM](https://user-images.githubusercontent.com/56467741/93248761-4e3f9e00-f75e-11ea-8cbf-055d849df806.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 02_00_46 PM](https://user-images.githubusercontent.com/56467741/93248558-fef96d80-f75d-11ea-855b-8460e9083e59.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_55_19 PM](https://user-images.githubusercontent.com/56467741/93248697-3536ed00-f75e-11ea-87aa-40ad40a658a3.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_59_35 PM](https://user-images.githubusercontent.com/56467741/93248638-1c2e3c00-f75e-11ea-81e0-bec24e00fdf9.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_57_00 PM](https://user-images.githubusercontent.com/56467741/93248662-2819fe00-f75e-11ea-88a3-ec24e00fdf9.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 02_00_39 PM](https://user-images.githubusercontent.com/56467741/93248602-0fa9e380-f75e-11ea-890b-d636b25e6b45.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_59_42 PM](https://user-images.githubusercontent.com/56467741/93248632-18021e80-f75e-11ea-948e-05d7ab5462b6.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_55_59 PM](https://user-images.githubusercontent.com/56467741/93248682-2fd9a280-f75e-11ea-99de-f98087d0e29c.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 01_54_33 PM](https://user-images.githubusercontent.com/56467741/93248729-4253dc00-f75e-11ea-9f5a-42a9ba90602b.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 02_01_00 PM](https://user-images.githubusercontent.com/56467741/93248778-5566ac00-f75e-11ea-953d-927b88d2c887.png)

![OnlineHouseRentingSystem - Google Chrome 15-09-2020 02_00_53 PM](https://user-images.githubusercontent.com/56467741/93248795-5a2b6000-f75e-11ea-91cb-67f1e152be10.png)

## Want to Contribute?
- Created something awesome, made this code better, added some functionality, or whatever (this is the hardest part).
- [Fork it](http://help.github.com/forking/).
- Create new branch to contribute your changes.
- Commit all your changes to your branch.
- Submit a [pull request](http://help.github.com/pull-requests/).

## Technology Stack
- **Backend**: Java, JSP, Servlets
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Server**: Apache Tomcat
- **Build Tool**: Apache Ant

## License
This project is open source and available under the [MIT License](LICENSE).