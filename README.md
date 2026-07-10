# South African ID Verification Portal

A lightweight Java Web Application built to validate 13-digit South African National Identity Numbers and extract core demographic data. 

The application utilizes the **Luhn Algorithm** (Modulus 10 check digit framework) on the backend to verify whether a submitted ID is structurally authentic. Once confirmed valid, it programmatically parses the identity string to extract and display key metadata.

### 🚀 Key Features
* **Automated Validation:** Uses Luhn algorithm checks to filter out typos or fake identification strings instantly.
* **Data Extraction:** Decodes the ID layout to securely pull **Date of Birth**, **Gender**, and **Citizenship Status** (Citizen vs. Permanent Resident).
* **Clean Portal Design:** A centralized user interface styled with pure, cross-browser compatible CSS.

### 🛠️ Tech Stack
* **Java Enterprise:** Servlets & Dynamic JSPs
* **Frontend:** HTML5 & Vanilla CSS
* **Environment:** Developed using NetBeans 8.2 and GlassFish 4.1.1.

### 💻 How to Run
1. Clone this repository or open the project files in **NetBeans 8.2**.
2. Ensure **GlassFish Server 4.1.1** is configured in your NetBeans Services tab.
3. Right-click the project name and select **Clean and Build**.
4. Right-click the project and select **Run**.
5. Access the application in your browser at `http://localhost:8080/YourProjectName/`.
