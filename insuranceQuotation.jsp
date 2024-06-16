<%-- 
    Document   : insuranceQuotation
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance Quotation</title>
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <form action="processInsuranceQuo.jsp">
            <fieldset>
                <table>
                    <legend>Insurance Calculation</legend>
                    <tr>
                        <td><label>IC No<span style="color:red;">*</span></label></td>
                        <td><input type="text" name="ICNo" value="" size="30" placeholder="E.g. 821210-05-3478" required></td>
                    </tr>
                    <tr>
                        <td><label>Name<span style="color:red;">*</span></label></td>
                        <td><input type="text" name="username" value="" size="30" placeholder="Enter name" required></td>
                    </tr>
                    <tr>
                        <td><label>Price<span style="color:red;">*</span></label></td>
                        <td><input type="text" name="price" value="" size="30" placeholder="Price" required></td>
                    </tr>
                    <tr>
                        <td><label>Type Coverage</label></td>
                        <td>
                            <select name="Type_Coverage">
                                <option value="1">Third Party</option>
                                <option value="2">Comprehensive</option>
                            </select>
                        </td>
                    </tr>

<tr>
                        <td><label>No claims discount (NCD)</label></td>
                        <td>
                            <select name="NCD">
                                <option value="0">10%</option>
                                <option value="1">25%</option>
                                <option value="2">35%</option>
                                <option value="3">55%</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><br><input type="submit" value="Submit"/> 
                            <input type="reset" value="Cancel"/>
                        </td>
                    </tr>
                </table> 
            </fieldset>
        </form>
        <br>
    </body>
    <footer>&copy;Nur Hidayatul Ain binti Haluwi </footer>
</html>

