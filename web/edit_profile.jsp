<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="theUser" scope="session" class="business.User"/>
<!DOCTYPE HTML>
<html lang="en">
<jsp:include page="header.jsp"/>
<jsp:include page="user-navigation.jsp"/>
<jsp:include page="site-navigation.jsp"/>
<main id="mainContent">
    <section id="register">
        <h2>Profile: <c:out value="${theUser.username}"/></h2>
        <hr>
        <form action="user" method="post">
            <input type="hidden" name="action" value="editProfile">
            <table>
                <tr>
                    <td align="left">First Name: </td>
                    <td align="left">
                        <input required type="text" name="firstName" title="firstName" value="<c:out value='${theUser.firstName}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Last Name: </td>
                    <td align="left">
                        <input required type="text" name="lastName" title="lastName" value="<c:out value='${theUser.lastName}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Email Address: </td>
                    <td align="left">
                        <input required type="text" name="email" title="email" value="<c:out value='${theUser.emailAddress}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Address Line 1: </td>
                    <td align="left">
                        <input required type="text" name="address1" title="address1" value="<c:out value='${theUser.address1}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Address Line 2: </td>
                    <td align="left">
                        <input type="text" name="address2" title="address2" value="<c:out value='${theUser.address2}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">City: </td>
                    <td align="left">
                        <input required type="text" name="city" title="city" value="<c:out value='${theUser.city}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">State/Region: </td>
                    <td align="left">
                        <input required type="text" name="state" title="state" value="<c:out value='${theUser.stateRegion}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Postal Code: </td>
                    <td align="left">
                        <input required type="text" name="postalCode" title="postalCode" value="<c:out value='${theUser.postCode}'/>">
                    </td>
                </tr>
                <tr>
                    <td align="left">Country: </td>
                    <td align="left">
                        <input required type="text" name="country" title="country" value="<c:out value='${theUser.country}'/>">
                    </td>
                </tr>
            </table>
            <button type="submit">Submit Changes</button>
        </form> <br>
        <p><b>WARNING: This action is irreversible!</b></p>
        <form action="user" method="post">
            <input type="hidden" name="action" value="deleteUser">
            <button type="submit">Delete Account</button>
        </form>
    </section>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>