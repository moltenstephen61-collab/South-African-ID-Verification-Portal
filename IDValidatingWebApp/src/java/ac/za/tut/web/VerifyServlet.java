/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.za.tut.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TSHOVELO MOLTAR
 */
public class VerifyServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id_Number = request.getParameter("idNumber");
        String gender = "", dob = ""; 
        String residencyStatus = "";
        
        // Run the Luhn validation algorithm check
        boolean isvalid = isValid(id_Number);
        
        if (isvalid == true) {
            gender = determineGender(id_Number);
            dob = getBirthDate(id_Number);
            
            // Map the boolean into a clean text string for the user interface
            if (isSouthAfricanCitizen(id_Number)) {
                residencyStatus = "South African Citizen";
            } else {
                residencyStatus = "Permanent Resident";
            }
            
            // Set attributes for the success outcome JSP
            request.setAttribute("dob", dob);
            request.setAttribute("id_Number", id_Number);
            request.setAttribute("gender", gender);
            request.setAttribute("resident", residencyStatus);
            
            request.getRequestDispatcher("id_number_outcome.jsp").forward(request, response);
           
        } else {
            // Forward the raw string to the error tracking page
            request.setAttribute("id_Number", id_Number);
            request.getRequestDispatcher("id_number_error.jsp").forward(request, response);
        }
    }

    public String determineGender(String idNumber) {
        // Extract the 4 digits starting from index 6 (the 7th digit)
        String genderSection = idNumber.substring(6, 10);
        
        // Convert that text into a number so we can compare it
        int genderCode = Integer.parseInt(genderSection);
        
        if (genderCode < 5000) {
            return "Female";
        } else {
            return "Male";
        }
    }

    public boolean isValid(String idNumber) {
        int sum = 0;
        
        for (int i = 0; i < 13; i++) {
            // Get each digit one by one
            int digit = Character.getNumericValue(idNumber.charAt(i));
            
            // Double every second digit (even indices: 1, 3, 5, etc.)
            if ((i + 1) % 2 == 0) {
                digit = digit * 2;
                if (digit > 9) {
                    digit = digit - 9;
                }
            }
            
            sum += digit;
        }
        
        // If the total sum ends in a 0, it passes the Luhn check
        return (sum % 10 == 0);
    }

    public boolean isSouthAfricanCitizen(String idNumber) {
        if (idNumber != null && idNumber.length() == 13) {
            // Extract the 11th digit (index 10)
            char citizenshipDigit = idNumber.charAt(10);
            
            // Return true if it is '0'
            return citizenshipDigit == '0';
        }
        return false;
    }

    public String getBirthDate(String idNumber) {
        if (idNumber != null && idNumber.length() == 13) {
            String year = idNumber.substring(0, 2);
            String month = idNumber.substring(2, 4);
            String day = idNumber.substring(4, 6);

            int yearInt = Integer.parseInt(year);
            String century;
            
            // Dynamic century mapping rule
            if (yearInt <= 26) {
                century = "20";
            } else {
                century = "19";
            } 

            return day + "-" + month + "-" + century + year;
        }
        return "Invalid ID";
    }
}
