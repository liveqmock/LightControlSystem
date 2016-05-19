/**
 * Created by biny on 16-5-19.
 */
$(function(){
    getjson();
});

function createXmlHttpRequest(){
    if(window.ActiveXObject){ //如果是IE浏览器
        return new ActiveXObject("Microsoft.XMLHTTP");
    }else if(window.XMLHttpRequest){ //非IE浏览器
        return new XMLHttpRequest();
    }
}


function deletecmd(areaId){
    var xmlHttpRequest = createXmlHttpRequest();
    xmlHttpRequest.open("POST","/area/delete.do?areaId="+areaId,true);//需要改
    xmlHttpRequest.send(null);

}

function getjson(){
    $.ajax({
        url:'/area/queryareas.do',//需要添加
        type:"GET",
        dataType: 'json',
        timeout: 1000,
        cache: false,
        beforeSend: LoadFunction, //加载执行方法
        //error: erryFunction,  //错误执行方法
        success: succFunction //成功执行方法
    })
    function LoadFunction() {
        $("#list").html('加载中...');
    }
    function erryFunction() {
        alert("error");
    }
    function succFunction(data) {
        $("#arealist").html('');
        var jsonData = eval(data);
        var fatherObj = $("#arealist");
        $.each(jsonData, function (index,item) {
            //循环获取数据
            var areaId = item.areaId;
            var areaName = item.areaName;

            var divObj = $("<div style='float:left;border: 1px solid skyblue;width: 25%;height:300px;text-align: center'></div>")
            var divtopObj = $("<div style='width: 100%;text-align: center'></div>")
            var divbotObj = $("<div style='width: 100%;text-align: center'></div>")

            divtopObj.html("区域编号："+"<font color='red'>"+areaId+"</font>"+"  区域名称:"+"<font color='red'>"+areaName+"</font>"+"&nbsp;");

            var tableObj = $("<table style='width: 100%;text-align: center'></table>")
            var tableheadObj = $("<tr style='background-color: #0e90d2'><td>id</td><td>集中控制器</td><td>组号</td><td>灯号</td></tr>")
            tableheadObj.appendTo(tableObj);
            var deletebutton = $("<button>"+"删除区域"+"</button>")
            deletebutton.click(function(event){
                    deletecmd(areaId);
                    setTimeout(getjson(),500);
            })
            deletebutton.appendTo(divtopObj);
            for(var i=0;i<item.lights.length;i++){

                var id_only = item.lights[i].id;
                var deviceId = item.lights[i].deviceId;
                var groupId = item.lights[i].groupId;
                var inGroupId = item.lights[i].inGroupId;

                var lineObj = $("<tr></tr>")
                var idObj = $("<td></td>")
                idObj.html(id_only);
                var deviceIdObj = $("<td></td>")
                deviceIdObj.html(deviceId);
                var groupIdObj = $("<td></td>")
                groupIdObj.html(groupId);
                var inGroupIdObj = $("<td></td>")
                inGroupIdObj.html(inGroupId);

                idObj.appendTo(lineObj);
                deviceIdObj.appendTo(lineObj);
                groupIdObj.appendTo(lineObj);
                inGroupIdObj.appendTo(lineObj);

                lineObj.appendTo(tableObj);
            }





            tableObj.appendTo(divbotObj);
            divtopObj.appendTo(divObj);
            divbotObj.appendTo(divObj);
            divObj.appendTo(fatherObj);




        })


    }
}
