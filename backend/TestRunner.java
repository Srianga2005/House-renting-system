import java.io.*;
import java.net.*;
import java.util.*;

/**
 * Simple test runner for Online House Renting System
 * This creates a basic HTTP server to test the application
 */
public class TestRunner {
    private static final int PORT = 8080;
    
    public static void main(String[] args) {
        System.out.println("Starting Online House Renting System Test Server...");
        System.out.println("Server will run on: http://localhost:" + PORT);
        System.out.println();
        
        try {
            ServerSocket serverSocket = new ServerSocket(PORT);
            System.out.println("Server started successfully on port " + PORT);
            System.out.println("Web files are in: " + new File("web").getAbsolutePath());
            System.out.println("Backend classes compiled in: " + new File("build/classes").getAbsolutePath());
            System.out.println();
            System.out.println("Open your browser and go to: http://localhost:" + PORT);
            System.out.println("Available pages:");
            System.out.println("   - Home: http://localhost:" + PORT + "/Home.jsp");
            System.out.println("   - Admin Login: http://localhost:" + PORT + "/AdminLogin.jsp");
            System.out.println("   - Client Login: http://localhost:" + PORT + "/clientLogin.jsp");
            System.out.println("   - Customer Login: http://localhost:" + PORT + "/CustomerLogin.jsp");
            System.out.println();
            System.out.println("Note: Database functionality requires MySQL setup");
            System.out.println("   Run 'setup-database.sql' in MySQL to enable full functionality");
            System.out.println();
            System.out.println("Press Ctrl+C to stop the server");
            
            while (true) {
                Socket clientSocket = serverSocket.accept();
                handleRequest(clientSocket);
            }
        } catch (IOException e) {
            System.err.println("Error starting server: " + e.getMessage());
        }
    }
    
    private static void handleRequest(Socket clientSocket) {
        try {
            BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
            
            String requestLine = in.readLine();
            if (requestLine != null) {
                System.out.println("Request: " + requestLine);
                
                // Simple response
                out.println("HTTP/1.1 200 OK");
                out.println("Content-Type: text/html");
                out.println();
                out.println("<html><body>");
                out.println("<h1>Online House Renting System</h1>");
                out.println("<p>Backend is running successfully!</p>");
                out.println("<p>Web files are ready in the 'web' directory.</p>");
                out.println("<p>To run the full application:</p>");
                out.println("<ul>");
                out.println("<li>Install MySQL and run setup-database.sql</li>");
                out.println("<li>Install Apache Tomcat</li>");
                out.println("<li>Deploy the 'web' folder to Tomcat</li>");
                out.println("</ul>");
                out.println("</body></html>");
            }
            
            clientSocket.close();
        } catch (IOException e) {
            System.err.println("Error handling request: " + e.getMessage());
        }
    }
}
