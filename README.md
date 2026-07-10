# South African ID Verification Portal

This is a straightforward Java web application I built to validate 13-digit South African ID numbers and pull out the demographic data hidden inside them. 

On the backend, a Java Servlet runs the submitted ID through the Luhn Algorithm (Modulus 10) to make sure it's structurally authentic. If the ID passes the check, the app breaks down the string to extract and display the user's Date of Birth, Gender, and Citizenship status (Citizen vs. Permanent Resident). If the ID is fake or mistyped, it routes the user to a clean error page instead.

### Tech Used
* Java Servlets & JSP
* HTML5 & Vanilla CSS
* Built using NetBeans 8.2 and GlassFish 4.1.1 

### How to run it
1. Open the project in NetBeans 8.2.
2. Make sure your GlassFish server is up and running.
3. Clean, build, and run the project.
4. Open the landing page in your browser.
