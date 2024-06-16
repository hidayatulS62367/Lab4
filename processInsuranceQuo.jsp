<%-- 
    Document   : processInsuranceQuo
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance Process</title>
        <style>
            table {
                color: #8A2BE2;
            }
        </style>
        <%

            String icNo = request.getParameter("ICNo");
            String name = request.getParameter("username"); 
            String typeCoverage = request.getParameter("Type_Coverage");
            String op = "+";
            
            String NCDPercentage="";
            
            double insuranceAmount = 0.00;
            
            final double GST = 57.60;
            
            char opchar = op.charAt(0);
            op = request.getParameter("NCD");
            opchar = op.charAt(0);
            
            int marketPrice = Integer.parseInt(request.getParameter("price"));
if (typeCoverage.equals("2")){

                switch(opchar){
                    case '0': 
                        NCDPercentage="10%";
                        insuranceAmount = (double) (marketPrice*(3.8/100));
                        break;
                    case '1': 
                        NCDPercentage="25%";
                        insuranceAmount = (double) (marketPrice*(3.0/100));
                        break;
                    case '2': 
                        NCDPercentage="35%";
                        insuranceAmount = (double) (marketPrice*(2.4/100));
                        break;
                    case '3': 
                        NCDPercentage="55%";
                        insuranceAmount = (double) (marketPrice*(1.8/100));
                        break;     
                }
            }
            else if (typeCoverage.equals("1")){
                
                switch(opchar){
                    case '0': 
                        NCDPercentage="10%";
                        insuranceAmount = (double) (marketPrice*(3.3/100));
                        break;
                    case '1': 
                        NCDPercentage="25%";
                        insuranceAmount = (double) (marketPrice*(2.5/100));
                        break;
                    case '2': 
                        NCDPercentage="35%";
                        insuranceAmount = (double) (marketPrice*(1.8/100));
                        break;
                    case '3': 
                        NCDPercentage="55%";
                        insuranceAmount = (double) (marketPrice*(3.3/100));
                        break;
                }
            }
            
            String typeCoverageName="";
            if (typeCoverage.equals("1"))
                typeCoverageName="Third Party";
            if (typeCoverage.equals("2"))
                typeCoverageName="Comprehensive";
           
        %>
    </head>

<body>
        <%DecimalFormat df = new DecimalFormat("0.00");%>
        <fieldset>
            <table>
                <legend>Details of Insurance Quotation</legend>
                <tr>
                    <td><label>IC No: </label><%=icNo%></td>
                </tr>
                <tr>
                    <td><label>Name: </label><%=name%></td>                 
                </tr>
                <tr>
                    <td><label>Market Price: </label><%=marketPrice%></td>
                </tr>
                <tr>
                    <td><label>Coverage Type: </label><%=typeCoverageName%></td>
                </tr>
                <tr>
                    <td><label>No claims discount (NCD) = </label><%=NCDPercentage%></td>
                </tr>
                <tr>
                    <td><label>Insurance amount: </label><%=df.format(insuranceAmount)%></td>
                </tr>
                <tr>
                    <td><label>6% GST: </label><%=df.format(GST)%></td>
                </tr>
                <tr>
                    <td><label>Final Amount (with 6% GST): </label><%=df.format(insuranceAmount + GST)%></td>
                </tr>
            </table> 
        </fieldset>
    </body>
</html>
