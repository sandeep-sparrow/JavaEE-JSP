<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>H+ Sports</title>
<style>
    body {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    .container {
        max-width: 100%;
        padding: 20px;
        margin: auto;
        box-sizing: border-box;
    }

    .header {
        font-size: 18px;
        text-align: center;
        background-color: #E4EBEB;
        padding: 10px;
    }
</style>
<link type="text/css" rel="stylesheet" href="resources/css/styles.css" />
</head>
<body>
	<div class="container">
		<div class="header">Entry Form | Catalog</div>
		<img src="resources/img/banner.jpeg" alt="Banner Image"/>
		
		<h3>Item count: ${items.size()}</h3>
		
		<!-- Make the table responsive -->
		<div class="responsive-table">
			<table>
				<thead>
                   <tr>
                        <th>Name</th>
                        <th>Manufacturer</th>
                        <th>SKU</th>
                    </tr>
				</thead>
				<tbody>
                    <c:forEach items="${items}" var="item">
                        <tr>
                            <td data-label="Name">${item.name}</td>
                            <td data-label="Manufacturer">${item.manufacturer}</td>
                            <td data-label="SKU">${item.sku}</td>
                        </tr>
                    </c:forEach>
                </tbody>
			</table>
		</div>
	    <!-- Bottom section (footer) -->
	    <div class="footer">
	        <span>© 2024 H+ Sports. All rights reserved.</span> 
	        <a href="#">Privacy Policy</a> | 
	        <a href="#">Terms of Service</a> | 
	        <a href="#">Contact Us</a>
	    </div>
	</div>
</body>

</html>