<%@ page import="java.sql.*" %>
<pre>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://host.docker.internal:3306/epushserver", "root", "root");
    out.println("✅ DB Connected successfully!");
    conn.close();
} catch (Exception e) {
    out.println("❌ DB Connection Failed: " + e.getMessage());
}
%>
</pre>
