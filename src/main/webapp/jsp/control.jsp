<%--
  Created by IntelliJ IDEA.
  User: biny
  Date: 16-5-20
  Time: 上午11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>控制策略</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body style="text-align: center;width: 100%">
<div style="margin: 0 auto;width: 90%">
    <div style="margin-top: 10px;height: 40px;">
        <a href="timecontrol.jsp" class="btn btn-primary active" target="control">定时控制</a>
        <a href="imcontrol.jsp" class="btn btn-primary active" target="control">即时控制</a>
        <a href="sitecontrol.jsp" class="btn btn-primary active" target="control">经纬度控制</a>
        <a href="suncontrol.jsp" class="btn btn-primary active" target="control">光照控制</a>
    </div>
    <div style="width: 100%;height: 90%;">
        <iframe name="control" style="width: 98%;height: 100%;" src="timecontrol.jsp">
        </iframe>
    </div>
</div>
</body>
</html>
