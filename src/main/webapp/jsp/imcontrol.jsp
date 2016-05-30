<%--
  Created by IntelliJ IDEA.
  User: biny
  Date: 16-5-20
  Time: 上午11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>高杆灯</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/jquery.range.css" rel="stylesheet" />
    <link href="../css/admin.css"  rel="stylesheet"/>
    <link href="../css/jquery-ui2.css" rel="stylesheet"  />
    <link href="../css/imcontrol.css" rel="stylesheet"  />
    <script src="../js/jquery/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <%--<script src="../js/right2_2.js"></script>--%>
    <script src="../js/imcontrol.js"></script>
    <script src="../js/jquery/jquery.artDialog.js?skin=idialog"></script>
    <script src="../js/jquery/jquery.range.js"></script>
    <script src="../js/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="../js/jquery.ui.datepicker-zh-CN.js"></script>
    <script src="../js/jquery-ui-timepicker-addon.js"></script>
    <script src="../js/jquery-ui-timepicker-zh-CN.js"></script>
</head>
<body style="text-align: center;width: 100%">
<div style="margin: 0 auto;width: 70%">
        <div class="chooselight">
                <h4 class="text-primary">灯的亮度</h4><br>
                <div class="div1311">
                    <input  type="hidden" class="single-slider" />
                </div>
        </div>
        <div class="div2_1">
            <h4 class="text-primary">灯的选择</h4><br>
            <div style="margin:0 auto;width: 50%;min-width: 200px;">
                <input id="notall" class="flo1" type="radio" name="suoyou"  value="0" checked="checked">
                <h4 class="flo1">非所有灯</h4>
                <input id="all" class="flo1" type="radio" name="suoyou" value="1" >
                <h4 class="flo1">所有的灯&nbsp;</h4>
            </div>
        </div>
        <div id="choose_light" class="div2_2">
            <div class="div2_2_1">
                <div style="width: 100%">
                    <input type="text" id="jizhongtxt" style="width: 50%;"/>
                    <button   id="jizhong" class=" btn-primary" >
                        <div style="display:none" id="selectjizhong"></div>
                        选择集中选择器
                    </button>
                </div>
            </div>
            <div class="div2_2_2">
                <div style="width: 100%">
                    <input type="text" id="zutxt" style="width: 50%;"/>
                    <button   id="zu" class=" btn-primary" >
                        <div style="display:none" id="selectzu"></div>
                        选择具体组号
                    </button>
                </div>
            </div>
            <div class="div2_2_2">
                <div style="width: 100%">
                    <input type="text" id="lighttxt" style="width: 50%;"/>
                    <button   id="light" class=" btn-primary" >
                        <div style="display:none" id="selectlight"></div>
                        选择具体灯号
                    </button>
                </div>
            </div>
        </div>
        <div class="div3" >
            <button id="sub"  class=" btn-primary" ><h4>提交</h4></button>
        </div>
</div>
</body>

</html>