<%-- 
    Document   : id_number_error
    Created on : 12 May 2026, 10:19:50 PM
    Author     : TSHOVELO MOLTAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID Number Error Page</title>
    <style>
        /* Color variables matching the portal theme, adding crimson for warning */
        :root {
            --title-color: crimson;        /* Distinct color for error/alert titles */
            --button-bg: blue;            /* Standard Blue for the Action link button */
            --button-hover: darkblue;      /* Darker Blue when hovering */
            --icon-bg: #fde8e8;           /* Soft light red tint for the warning circle */
            --body-bg: ghostwhite;        /* Soft off-white for the page background */
            --card-bg: white;             /* White background for the main card */
            --text-main: black;
            --text-muted: dimgray;
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
            text-align: center;
            border: 1px solid lightgray;
        }

        /* Warning Icon Wrapper Circle */
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
            color: var(--title-color);
        }

        /* Typography */
        h1 {
            color: var(--title-color);
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 12px;
            letter-spacing: -0.5px;
        }

        p {
            color: var(--text-muted);
            font-size: 1rem;
            line-height: 1.5;
            margin-bottom: 32px;
        }

        /* Highlight block for the invalid ID token */
        .id-token {
            display: inline-block;
            background-color: #f1f5f9;
            padding: 4px 10px;
            border-radius: 4px;
            font-family: monospace;
            font-weight: 600;
            color: black;
        }

        /* Action Link Button */
        .btn-action {
            display: inline-block;
            width: 100%;
            background-color: var(--button-bg);
            color: white;
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
        <!-- SVG Warning Triangle Icon -->
        <div class="icon-container">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v3.75m9-.75a9 9 0 11-18 0 9 9 0 0118 0zm-9 3.75h.008v.008H12v-.008z" />
            </svg>
        </div>

        <h1>ID Number Error</h1>
        
        <p>
            The ID Number <span class="id-token"><%= request.getAttribute("id_Number") %></span> is not valid.<br> 
            Please enter a correct 13-digit identity string.
        </p>
        
        <!-- Action Button returning back to the input form -->
        <a href="add_id.html" class="btn-action">Try Again</a>
    </main>

</body>
</html>
