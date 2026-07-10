<%-- 
    Document   : id_number_outcome
    Created on : 12 May 2026, 10:25:06 PM
    Author     : TSHOVELO MOLTAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID Verification Outcome Page</title>
    <style>
        /* Color variables matching your portal theme */
        :root {
            --title-color: navy;           
            --button-bg: blue;            
            --button-hover: darkblue;      
            --success-color: green;        /* Green for successful validation */
            --icon-bg: #e8f5e9;           /* Light green background for the icon */
            --body-bg: ghostwhite;        
            --card-bg: white;             
            --text-main: black;
            --text-muted: dimgray;
            --border-color: lightgray;
            --radius: 12px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif;
            background-color: var(--body-bg);
            color: var(--text-main);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Portal Container Card */
        .portal-card {
            background-color: var(--card-bg);
            padding: 40px 32px;
            border-radius: var(--radius);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
            max-width: 440px;
            width: 100%;
            border: 1px solid var(--border-color);
        }

        /* Success Icon Wrapper */
        .icon-container {
            width: 68px;
            height: 68px;
            background-color: var(--icon-bg);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 24px;
        }

        .icon-container svg {
            width: 34px;
            height: 34px;
            color: var(--success-color);
        }

        /* Typography */
        h1 {
            color: var(--title-color);
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.5px;
            text-align: center;
        }

        p.subtitle {
            color: var(--text-muted);
            font-size: 1rem;
            line-height: 1.5;
            margin-bottom: 24px;
            text-align: center;
        }

        .id-highlight {
            color: var(--text-main);
            font-weight: 700;
            background-color: #f1f5f9;
            padding: 2px 6px;
            border-radius: 4px;
        }

        /* Data Grid for ID Details */
        .data-grid {
            border: 1px solid var(--border-color);
            border-radius: 8px;
            overflow: hidden;
            margin-bottom: 28px;
        }

        .data-row {
            display: flex;
            justify-content: space-between;
            padding: 14px 16px;
            border-bottom: 1px solid var(--border-color);
            background-color: var(--card-bg);
        }

        .data-row:last-child {
            border-bottom: none;
        }

        .data-row:nth-child(even) {
            background-color: #fafafa;
        }

        .data-label {
            color: var(--text-muted);
            font-weight: 600;
            font-size: 0.95rem;
        }

        .data-value {
            color: var(--text-main);
            font-weight: 700;
            font-size: 0.95rem;
        }

        /* Action Link Button */
        .btn-action {
            display: inline-block;
            width: 100%;
            background-color: var(--button-bg);
            color: white;
            text-align: center;
            text-decoration: none;
            font-weight: 600;
            padding: 14px 24px;
            border-radius: 8px;
            transition: all 0.2s ease-in-out;
        }

        .btn-action:hover {
            background-color: var(--button-hover);
            transform: translateY(-1px);
        }

        .btn-action:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>

    <main class="portal-card">
        <!-- SVG Success Checkmark Icon -->
        <div class="icon-container">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" d="M4.5 12.75l6 6 9-13.5" />
            </svg>
        </div>

        <h1>Verification Valid</h1>
        <p class="subtitle">The ID Number <span class="id-highlight"><%= request.getAttribute("id_Number") %></span> is valid. Extracted details:</p>
        
        <!-- Clean Data Presentation Grid -->
        <div class="data-grid">
            <div class="data-row">
                <span class="data-label">Gender</span>
                <span class="data-value"><%= request.getAttribute("gender") %></span>
            </div>
            <div class="data-row">
                <span class="data-label">Citizenship</span>
                <span class="data-value"><%= request.getAttribute("resident") %></span>
            </div>
            <div class="data-row">
                <span class="data-label">Date of Birth</span>
                <span class="data-value"><%= request.getAttribute("dob") %></span>
            </div>
        </div>
        
        <!-- Navigation to check another ID -->
        <a href="add_id.html" class="btn-action">Verify Another ID</a>
    </main>

</body>
</html>
