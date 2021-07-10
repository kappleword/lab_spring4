<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript">
      function bookSearch() {
        let word = $("#b_title");
        let param = "b_title=" + word.val();
        alert(param);
        $.ajax({
          type: "GET",
          url: urlApi,
          dataType: "json",
          success: function (result) {
            $("#d_result").css("border", "#000000 1px solid");
            $("#d_result").css("backgroundcolor", "#FFFFFF");
            $("#d_result").css("top", $("#b_title").offset().top + $("#b_title").offset.height + "px");
            $("#d_result").css("left", $("#b_title").offset().left + "px");
            $("#d_result").html(result);
          }
    </script>
  </head>

  <body>
    <script type="text/javascript">
      let urlApi = "http://book.interpark.com/api/search.api?key=369ED9B46B276E78CC944C903204D72E1BD62D0CB598E1AB4983734F0CB5E541&query=원피스&output=json"
      $.ajax({
        type: "GET",
        url: urlApi,
        dataType: "json",
        success: function (result) {
          let imsi = JSON.stringify(result);
          //let jsonDoc = JSON.parse(imsi);
          let jsonDoc = JSON.parse(imsi).item;
          let htmlTag = '<table border="1" width="850px">';
          for (let i = 0; i < jsonDoc.length; i++) {
            htmlTag += '<tr>'
            htmlTag += '<td rowspan="2" bgcolor="pink" width="130px" height="150px" align="center">'
            htmlTag += '<img id="imgViewArea" src="' + jsonDoc[i].coverLargeUrl + '" style="width:120px; height:140px;" onerror="imgAreaError" />'
            htmlTag += '</td>'
            htmlTag += '<td>' + jsonDoc[i].title + '</td>'
            htmlTag += '</tr>'
            htmlTag += '<tr width="520px" height="150px"><td bgcolor="yellow">' + jsonDoc[i].description + '</td></tr>'
          }///enf of for
          htmlTag += "</TABLE>";
          $("#d_result").html(htmlTag);
          //alert(jsonDoc);
          //console.log("result:"+imsi);
          //$("#d_result").text(imsi);
        },
        error: function (xhrObject) {
          $("#d_result").text(xhrObject.responseText);
        }
      });
          function imgAreaError() {
          $("#imgViewArea").css({ 'display': 'none' });
        }
    </script>
    <input type="text" id="b_title" name="b_title" size="25" onkeyup="bookSearch()" />
    <div id="d_result"></div>
  </body>

  </html>