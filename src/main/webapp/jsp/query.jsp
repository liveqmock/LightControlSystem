<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html charset=utf-8" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>操作查询</title>
    <script src="../js/jquery/jquery-1.9.1.min.js"></script>
    <link href="../css/admin.css"  rel="stylesheet"/>
    <link href="../css/jquery-ui2.css" rel="stylesheet"  />
    <link href="../css/query.css" rel="stylesheet"  />
    <script src="../js/bootstrap.js"></script>

    <script src="../js/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="../js/jquery.ui.datepicker-zh-CN.js"></script>
    <script src="../js/jquery-ui-timepicker-addon.js"></script>
    <script src="../js/jquery-ui-timepicker-zh-CN.js"></script>
    <script src="../js/query.js"></script>
</head>
<body style="text-align: center">
<div style="margin: 0 auto;width: 70%;min-width: 700px;">
    <div style="position: relative;">
        <div style="margin-top: 10px;">
            <font style="color: #1a8cff;text-align: center;font-size: x-large;">操作查询</font>
        </div>
        <div class="div1_2">
            <input  name="cha_start_time" id="cha_start_time" type="text" class="mys" value="" placeholder="起始时间"  style="cursor:pointer;height: 20px;width:20%;"/>
            <input  name="cha_stop_time" id="cha_stop_time" type="text" class="mys" value="" placeholder="结束时间"  style="cursor:pointer;height: 20px;width:20%;"/>
        </div>
        <div style="margin-top: 5px;">
        <input type="button" value="点击查询" style="font-size: large;color: #1a8cff" onclick="findData(document.getElementById('cha_start_time').value,document.getElementById('cha_stop_time').value)"/>
        </div>

    </div>
    <div>
        <table class="table1">
            <thead>
            <tr>
                <td rowspan="2" class="td1">#</td>
                <td rowspan="2" class="td1">操作时间</td>
                <td rowspan="2" class="td1">操作员</td>
                <td rowspan="2" class="td1">开灯时间</td>
                <td rowspan="2" class="td1">关灯时间</td>
                <td rowspan="2" class="td1">亮度</td>
                <td colspan="3" class="td1">灯</td>
            </tr>
            <tr>
                <td class="td1">集中控制器</td>
                <td class="td1">组号</td>
                <td class="td1">灯号</td>
            </tr>

            </thead>
            <tbody id="list" >
            </tbody>
        </table>
    </div>
</div>
</body>
</html>