# Frontend - Online House Renting System

This directory contains the frontend components of the Online House Renting System.

## Structure

```
frontend/
├── web/                    # Main web application directory
│   ├── *.jsp              # JSP pages for different modules
│   ├── css/               # Stylesheets
│   │   ├── login.css      # Login page styles
│   │   ├── style.css      # Main application styles
│   │   └── sb-admin-2.*   # Admin dashboard styles
│   ├── js/                # JavaScript files
│   │   ├── datatables-demo.js
│   │   └── sb-admin-2.min.js
│   ├── img/               # Images and icons
│   ├── vendor/            # Third-party libraries
│   │   ├── bootstrap/     # Bootstrap framework
│   │   ├── datatables/    # DataTables plugin
│   │   ├── fontawesome-free/ # FontAwesome icons
│   │   ├── jquery/        # jQuery library
│   │   └── jquery-easing/ # jQuery easing effects
│   └── WEB-INF/           # Web application configuration
└── assets/                # Additional assets
    └── Projects Screenshot/ # Project screenshots
```

## Pages

### User Pages
- `Home.jsp` - Landing page
- `UserHome.jsp` - User dashboard
- `CustomerLogin.jsp` - Customer login
- `CustomerRegister.jsp` - Customer registration
- `SearchHouse.jsp` - House search functionality
- `HouseDetails.jsp` - House details view

### Client Pages
- `clientLogin.jsp` - Client login
- `ClientRegister.jsp` - Client registration
- `ClientAddHouse.jsp` - Add new house
- `ClientDetail.jsp` - Client details
- `UpdateHouse.jsp` - Update house information
- `DeleteHouse.jsp` - Delete house

### Admin Pages
- `AdminLogin.jsp` - Admin login
- `AdminRegister.jsp` - Admin registration
- `AdminDashboard.jsp` - Admin dashboard
- `ViewUsers.jsp` - View all users
- `ViewClients.jsp` - View all clients
- `ViewHouses.jsp` - View all houses

## Development

### Prerequisites
- Node.js (for development server)
- Web browser

### Setup
1. Install dependencies:
   ```bash
   npm install
   ```

2. Start development server:
   ```bash
   npm run dev
   ```

3. Open browser to `http://localhost:8080`

### Technologies Used
- **HTML5** - Markup
- **CSS3** - Styling
- **JavaScript** - Client-side functionality
- **Bootstrap 4** - UI framework
- **jQuery** - JavaScript library
- **DataTables** - Table functionality
- **FontAwesome** - Icons
- **JSP** - Server-side rendering

## Notes
- This frontend is designed to work with the Java backend
- JSP pages require a Java servlet container (Tomcat) to run
- Static assets can be served independently for development



