<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Currency Conversion Process</title>
        
        <%!
            
            //Define constant....
            final double USD = 3.92;
            final double STG = 5.96;
            final double EURO = 4.47;
            
            //Define method to perform currency exchange.....
            private double calculateRate(String currency, int amount)
            {
                double currencyChange = 0.00;
                
                if (currency.equals("1"))
                    currencyChange = (double) (amount / USD);
                if (currency.equals("2"))
                    currencyChange = (double) (amount / STG);
                if (currency.equals("3"))
                    currencyChange = (double) (amount / EURO);
                return currencyChange;
            }
        %>
    </head>
    <body>
        <%    
            //Using JSP Scriplet..
            String currency = request.getParameter("currency");
            int amount = Integer.parseInt(request.getParameter("amount"));

            String currencyName="";
            if (currency.equals("1"))
                currencyName="USD";
            if (currency.equals("2"))
                currencyName="STG";
            if (currency.equals("3"))
                currencyName="EURO";
        %> 
        
<h1>Use JSP Declaration tag, JSP Scriplet and JSP Expression in application</h1>
        
        <p style="color: #8A2BE2;">Amount in Ringgit Malaysia is RM<%=amount%></p>
        
        <%DecimalFormat df = new DecimalFormat("0.00");%>
        
        <p style="color: #8A2BE2;">Amount in <%=currencyName%> is RM<%=df.format(calculateRate(currency, amount))%></p>
    </body>
</html>
    
