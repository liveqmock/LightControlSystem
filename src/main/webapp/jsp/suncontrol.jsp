<%--
  Created by IntelliJ IDEA.
  User: biny
  Date: 16-5-20
  Time: 上午11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>光照控制</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <script src="../js/jquery/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/suncontrol.js"></script>
</head>
<body style="text-align: center;width: 100%">
    <div style="margin: 10% auto;width: 70%;">
        <div>
            开灯阈值
            <input type="text" id="openlimit"/>lx
        </div><br>
        <div>
            关灯阈值
            <input type="text" id="closelimit"/>lx
        </div><br>
        <div>
            控制天数
            <input type="text" id="controldays" placeholder="默认永久(0)"/>&nbsp;&nbsp;&nbsp;
        </div><br>
        <div>
            <input type="button" class="btn btn-primary active" id="sunControl" onclick="suncontrol()" value="控制"/>
        </div>
    </div>
</body>
</html>
