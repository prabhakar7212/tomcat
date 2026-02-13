<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MS Pickles & Spices</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #1a1a1a;
            color: #fff;
        }

        header {
            background: #000;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            color: orange;
            margin: 0;
            font-size: 32px;
        }

        .contact-info {
            text-align: center;
            padding: 10px;
            background: #333;
            font-size: 15px;
        }

        .menu-section {
            padding: 30px;
        }

        .menu-section h2 {
            color: orange;
            border-bottom: 2px solid orange;
            padding-bottom: 5px;
        }

        table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            color: orange;
        }

        tr:nth-child(even) {
            background: #2a2a2a;
        }

        .contact-form {
            background: #fff;
            color: #000;
            padding: 30px;
            text-align: center;
        }

        .contact-form h2 {
            margin-bottom: 20px;
        }

        input {
            padding: 10px;
            width: 250px;
            margin: 8px;
        }

        button {
            padding: 10px 20px;
            background-color: orange;
            border: none;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color: darkorange;
        }

        footer {
            background: #000;
            text-align: center;
            padding: 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header>
    <h1>MS PICKLES & SPICES</h1>
</header>

<div class="contact-info">
    📞 Call Now: <b>9949531565</b> |
    📍 Kukatpally, Hyderabad |
    🚚 All Over India Parcel Service Available
</div>

<div class="menu-section">

    <h2>Non-Veg Pickles</h2>
    <table>
        <tr><th>Item</th><th>250g</th><th>500g</th><th>1KG</th></tr>
        <tr><td>Chicken Pickle (with Bone)</td><td>300</td><td>600</td><td>1100</td></tr>
        <tr><td>Boneless Chicken Pickle</td><td>400</td><td>750</td><td>1400</td></tr>
        <tr><td>Mutton Pickle (with Bone)</td><td>400</td><td>750</td><td>1400</td></tr>
        <tr><td>Boneless Mutton Pickle</td><td>500</td><td>950</td><td>1800</td></tr>
        <tr><td>Prawns Pickle</td><td>400</td><td>800</td><td>1500</td></tr>
        <tr><td>Fish Pickle</td><td>250</td><td>450</td><td>800</td></tr>
    </table>

    <h2 style="margin-top:30px;">Veg Pickles</h2>
    <table>
        <tr><th>Item</th><th>250g</th><th>500g</th><th>1KG</th></tr>
        <tr><td>Mango Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Tomato Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Lemon Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Usiri (Amla) Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Gongura Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Red Chilly Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Kakarakaya Pickle</td><td>130</td><td>250</td><td>480</td></tr>
        <tr><td>Chikkudukaya Pickle</td><td>130</td><td>250</td><td>480</td></tr>
    </table>

    <h2 style="margin-top:30px;">Powders / Podi</h2>
    <table>
        <tr><th>Item</th><th>100g</th><th>250g</th></tr>
        <tr><td>Kandi Podi</td><td>100</td><td>200</td></tr>
        <tr><td>Vellulli Karam</td><td>100</td><td>200</td></tr>
        <tr><td>Kobbari Karam</td><td>100</td><td>200</td></tr>
        <tr><td>Karivepaku Karam</td><td>100</td><td>200</td></tr>
        <tr><td>Nalla Karam</td><td>100</td><td>200</td></tr>
        <tr><td>Munagaku Karam</td><td>100</td><td>200</td></tr>
    </table>

    <h2 style="margin-top:30px;">Non-Veg Curries</h2>
    <table>
        <tr><th>Item</th><th>500g</th><th>1KG</th></tr>
        <tr><td>Chicken Curry</td><td>250</td><td>500</td></tr>
        <tr><td>Chicken Fry</td><td>300</td><td>550</td></tr>
        <tr><td>Mutton Curry</td><td>650</td><td>1200</td></tr>
        <tr><td>Prawns Curry</td><td>300</td><td>500</td></tr>
        <tr><td>Fish Curry</td><td>250</td><td>450</td></tr>
        <tr><td>Fish Fry</td><td>300</td><td>550</td></tr>
    </table>

</div>

<div class="contact-form">
    <h2>Share Below Details We Will Call You</h2>
    <form method="post" action="saveContact">
        <input type="text" name="name" placeholder="Enter Your Name" required><br>
        <input type="text" name="mobile" placeholder="Enter Mobile Number" required><br>
        <button type="submit">Submit</button>
    </form>
</div>

<footer>
    © 2026 MS Pickles & Spices | Hyderabad
</footer>

</body>
</html>

