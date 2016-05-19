<%--
  Created by IntelliJ IDEA.
  User: biny
  Date: 16-5-18
  Time: 下午1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">

        html{height:100%}

        body{height:100%;margin:0px;padding:0px}

        #container{height:100%}

    </style>
    <link href="../css/bootstrap.css" rel="stylesheet" />

    <script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
</head>
<body style="width: 100%;text-align: center">

<input type="text" id="cityName" value="上海金山"/>

<input type="button" onclick="setCity()" value="查找" />

<div id="container" style="width:100%;height: 600px;"></div>





<script type="text/javascript">

var map = new BMap.Map("container");        //在container容器中创建一个地图,参数container为div的id属性;



var point = new BMap.Point(120.2,30.25);    //创建点坐标

map.centerAndZoom(point, 14);                //初始化地图，设置中心点坐标和地图级别

map.enableScrollWheelZoom();                //激活滚轮调整大小功能

map.addControl(new BMap.NavigationControl());    //添加控件：缩放地图的控件，默认在左上角；

map.addControl(new BMap.MapTypeControl());        //添加控件：地图类型控件，默认在右上方；

map.addControl(new BMap.ScaleControl());        //添加控件：地图显示比例的控件，默认在左下方；

map.addControl(new BMap.OverviewMapControl());  //添加控件：地图的缩略图的控件，默认在右下方； TrafficControl



var search = new BMap.LocalSearch("中国", {

onSearchComplete: function(result){

if (search.getStatus() == BMAP_STATUS_SUCCESS){

var res = result.getPoi(0);

var point = res.point;

map.centerAndZoom(point, 11);

}

},renderOptions: {  //结果呈现设置，

map: map,

autoViewport: true,

selectFirstResult: true

} ,onInfoHtmlSet:function(poi,html){//标注气泡内容创建后的回调函数，有了这个，可以简单的改一下返回的html内容了。

// alert(html.innerHTML)

}//这一段可以不要，只不过是为学习更深层次应用而加入的。

});



function setCity(){

search.search(document.getElementById("cityName").value);

}



search.search(document.getElementById("cityName").value);


</script>

</body>
</html>