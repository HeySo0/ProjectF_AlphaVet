<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- <script src="https://developers.kakao.com/sdk/js/kakao.js"></script> -->
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8ef871b43c6499df59562ff58256ac5a"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8ef871b43c6499df59562ff58256ac5a&libraries=services"></script>


<!-- Style CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/app/css/style.css">
<!-- Demo CSS (No Need to include it into your project) -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/app/css/demo.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style>
.mdi {
	zoom: 1.0;
}

.aa {
	/*background-image: url("data:image/svg+xml,%3csvg width='100%25' height='100%25' xmlns='http://www.w3.org/2000/svg'%3e%3crect width='100%25' height='100%25' fill='none' rx='10' ry='10' stroke='black' stroke-width='5' stroke-dasharray='6%2c 14' stroke-dashoffset='51' stroke-linecap='square'/%3e%3c/svg%3e");
   border-radius: 10px;*/
	
}

#myPetImg {
	width: 50px;
	height: 50px;
}

#coverImg {
	width: 500px;
	height: 200px;
}

#plusImg {
	width: 50px;
	height: 50px;
}

#coverDiv {
	background-image: url("../../resources/images/appImg/catpuppy.PNG");
	background-size: 100% auto;
	z-index: 30;
}

#contentDiv {
	position: relative;
	top: -45px;
	border-radius: 25px;
	z-index: 31;
}
#contentDiv2 {
	position: relative;
	top: -45px;
	border-radius: 25px;
}

#time {
	width: 50px;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: 'Cairo', sans-serif;
	margin: auto;
}

.date-time {
	width: 1px;
	padding: 10px;
	padding-right: 30px;
	padding-left: 30px;
	background-color: #e4efff8a;
	border-width: 10px;
	color: #445990;
	border-radius: 100px;
}

#time td[id=am], #time td[id=pm] {
	background-color: white;
	color: black;
}

.date-time.selected2 {
	background-color: #5796f28a;
    color: white;
}

.date-time.none {
	background-color: #f8f8f8;
	color: #ccc;
}

/* .offcanvas-bottom {
   height: 50vh;
} */
html, body {
	height: 100%;
	font-family: 'IBM Plex Sans KR', sans-serif;
}

.empStyle {
	font-size: 1.5em;
	font-weight: 500;
	padding-left: 20px;
}

.iconTd {
	width: 50px;
}

.appImg3{
	width: 80px;
}

.empImg2 {
	height: 5rem;
    width: 5rem;
}

#clnicChoice{
margin-bottom:-130px;
}
</style>

<%
	String userId = (String) session.getAttribute("userId");
%>

<body>

	<div class="tab-content text-muted">
		<!-- home?????? -->
		<div class="tab-pane active" id="homeTab2" role="tabpanel">
			<div id="homeDiv">
				<div class="card row" id="coverDiv">
					<div class="card-body" style="height: 300px"></div>
				</div>
				<div class="card row" id="contentDiv">
					<div class="card-body">
						<div style="margin-bottom: 3%;">
							<select class="form-select" aria-label="Default select example"
								id="selectPet2" style="display: inline; width: 30%;"></select> <input
								type="button"
								class="btn btn-info btn-lg waves-effect waves-light"
								style="margin-left: 47.5%;" value="????????????" id="appReceipt">
						</div>

						<div></div>



						<div id="accessList" class="row"></div>
						<table>
							<tr>
								<td><img
									style="width: 80px; margin: 20px; margin-right: 50px;"
									alt="weight"
									src="${pageContext.request.contextPath }/resources/images/appImg/patWeight2.png"></td>
								<td><div id="chartDiv">
										<canvas id="myChart2"></canvas>
									</div></td>
							</tr>
						</table>
					</div>
				</div>


				<div class="card row" id="contentDiv2">
					<div class="card-body">

						<div class="col-md-12" id="abandoned">
							<div class="">
								<h5>
									<b style="font-size: 1.2em;"><i class="ri-home-heart-line"></i> ????????? ?????????
									<a><i id="abandonPlus" class="ri-arrow-right-s-line"></i></a></b>
									<br/>
								</h5>
								<div class="col-12" style="box-sizing: border-box;">
									<div id="" class="col-xl-12 d-flex" style="overflow: auto"
										align='center'>
										<c:forEach items="${cont1 }" var="i">
											<div class="col-md-3">
												<a id="" href="${i.conHref }"> <img class="appImg2"
													src="${i.conImg}">
												</a> <br>
												<!-- 						<h5> -->
												<%-- 										${i.title} --%>
												<!-- 						</h5> -->
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!--          ???????????? -->

						<br> <br>

						<!--        ???????????? -->
						<div class="col-md-12" id="">
							<div class="">
								<h5>
									<b style="font-size: 1.2em;"><i class="ri-tv-line"></i> ????????????
									<a><i id="" class="ri-arrow-right-s-line"></i></a></b>
									<br/>
								</h5>
								<div class="col-12" style="box-sizing: border-box;">
									<div id="" class="col-xl-12 d-flex" style="overflow: auto"
										align='center'>
										<c:forEach items="${cont2 }" var="i">
											<div class="col-md-4">
												<a id="" href="${i.con2Href }"> <img class="appImg3"
													src="${i.con2Img}">
												</a> <br>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!--          ???????????? -->
						
<!-- 						?????? -->
<!-- 						<div> -->
<!-- 						<div id="map" style="width:100%;height:350px;"></div> -->
<!-- 						</div> -->
						<br>
					</div>
				</div>



				<div class="appHome">
					<%@ include file="appPhoto.jsp"%>
				</div>

				<!--             <div style="height: 150px;"></div> -->

			</div>
			<!-- ???????????? ?????? -->
			<%@ include file="clinicAccess.jsp"%>
		</div>
		<!-- ??????????????? -->
		<div class="tab-pane" id="careTab2" role="tabpanel">
			<%@ include file="dailyCareTab.jsp"%>
		</div>
		<!-- ????????? -->
		<div class="tab-pane" id="contentTab2" role="tabpanel">
			<%@ include file="contentTab.jsp"%>
		</div>
		<!-- ?????? -->
		<div class="tab-pane" id="reservationTab2" role="tabpanel">
			<%@ include file="appReservation.jsp"%>
		</div>
	</div>

</body>
<script>

   const userId = `${userId}`
   const resDivHtml = $("#resDiv").html()
   var map;
   
   // ????????? ?????? ?????? ??????
   $(function() {
      connect();
      

      
//       $.getScript('http://dapi.kakao.com/v2/maps/sdk.js?appkey=8ef871b43c6499df59562ff58256ac5a&autoload=false', function(){
//     	  daum.maps.load(function(){
//     	    console.log('daum maps load');
//     	    var mapContainer = document.getElementById('map');
//     	    var options = {
//     	      center: new daum.maps.LatLng(33.450701, 126.570667),
//     	      level: 3
//     	    };
//     	    map = new daum.maps.Map(mapContainer, options);
//     	  });
//     	});
      
      
      
   })
   let webSocket;
   
   

   function connect() {
      webSocket = new WebSocket("ws://" + window.location.host
            + "${pageContext.request.contextPath}/alarm"); // End Point
      webSocket.onopen = fOpen;
      webSocket.onmessage = fMessage;
   }
   function fOpen() {
      //    alert("?????????!");
   }
   function send(type, receiver, cont, etc) { // ?????? ????????? ????????? ??????
      console.log("send: " + type + "&" + receiver + "&" + cont + "&" + etc);
      if (type == "alarm") { // ????????? ???
    	  webSocket.send(
					type + "&" + 
					receiver + "&" + 
					cont + "&" + 
					etc + "&" + 					// ?????? Type
					"h001"
		  );
      } else if (type == "chat") { // ????????? ???

      } else if (type == "receipt") { // ?????? ?????? ?????????
      //       alert("?????? ???????????????.");
         webSocket.send(type + "&" + cont + "&" + etc)
      }
   }
   function fMessage() {
      let data = event.data;
      let dataArray = data.split("&");

      if (dataArray[0] == "alarm") {

      } else if (dataArray[0] == "chat") {

      } else if (dataArray[0] == "receipt") { // ?????? ?????? ??????

      }
   }
   function disconnect() {
      webSocket.close();
   }
   //????????? ?????? ?????? ???

   $(function() {
      var homeDiv = document.querySelector("#homeDiv")
      var clinicDiv = document.querySelector("#clinicDiv")
      var clinicAccessBtn = document.querySelector("#clinicAccessBtn")
      var clinicStr = "";
      var homeSelectStr = "";

      var accessList = document.querySelector("#accessList") //?????? ?????????

      var clinic = document.querySelectorAll(".clinic") //?????? ????????????
      var clinicInfo = document.querySelector("#clinicInfo") //?????? ?????????

      var showDiv = document.querySelector("#showDiv") //?????? ??????

      var nextBtn = document.querySelector("#nextBtn") //?????? ????????? ????????? ??????
      var memName = document.querySelector("#memName") //?????? ??????
      var memTel = document.querySelector("#memTel") //?????? ??????

      var careTab = document.querySelector("#careTeb") //????????? ?????? ???
      var allList = document.querySelector("#allList") //??????
      var medicList = document.querySelector("#medicList") //??????
      var vaccineList = document.querySelector("#vaccineList") //??????
      var stayList = document.querySelector("#stayList") //??????
      var careStr = "";

      accessPetList();

      $("#coverPlus").on("click", function() {
         alert("d")
      })
      
    
	//?????? ?????????
      $(document).on('click', '#clinicAccessBtn', function() {
         clinicList();
      })

	
	//?????? ?????????
      $(document).on('click', '.clinic', function() {

    	  
    	  $.ajax({
             url : "/selectClinic",
             type : "post",
             data : {
                cliCd : $(this).attr("id")
             },
             dataType : "json",
             success : function(clinicVO) {

                console.log(clinicVO)
                $(clinicDiv).css("display", "none")
                $(clinicInfo).css("display", "")
                
                
                clinicStr = "";
                clinicStr += "<div class='card-body' align='center'>"
                clinicStr += "<div class = 'card'><img src = ''></div>"
                clinicStr += "<div class = 'card'>"
                clinicStr +=`   <div class="table-responsive  hosInfo"><table class="table table-hover mb-0">
                            <tr>
                            <td colspan="2">
                            <button id = 'clnicChoice' type = 'button' class = 'btn btn-info btn-lg btn-rounded waves-effect waves-light'>???????????? ??????</button>
                               <img src='${pageContext.request.contextPath }/resources/images/appImg/hosImg.png' width='100px' style='margin-bottom:-15px; margin-left:70%;'>
                            </td>
                            
                            </tr>
                            </table>
                            <hr>
                            <div id="map" style="width:100%;height:350px;"></div> 
                            <table class="table table-hover mb-0">
                            <tr>
                            <td name = 'cliCd' id = '\${clinicVO.cliCd}' colspan="2"><h2><b>\${clinicVO.cliName}</b></h2></td>
                         	</tr>
                            </tr>
                            <tr>
                               <th style="font-weight: 500; font-size : 1.2em;" ><b>????????????</b></th>
                               <td><h4><b>\${clinicVO.cliTel}</b></h4></td>
                            </tr>
                            <tr>
                               <th style="font-weight: 500; font-size : 1.2em;"><b>?????? ??????</b></th>
                               <td><h4><b>\${clinicVO.cliAddr1}</b></h4></td>
                            </tr>
                            <tr>
                               <th style="font-weight: 500; font-size : 1.2em;"><b>????????? ??????</b></th>
                               <td><h4><b>\${clinicVO.cliAddr2}</b></h4></td>
                            </tr>
                            </table>
                            <br>
                            <br>
                            <div class="table-responsive"><table class="table table-hover mb-0">
                            </table>
                            
                            <div>
                         `
                         
                $(clinicInfo).html(clinicStr);
                         
                         
			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(clinicVO.lat, clinicVO.lng), // ????????? ????????????
			        level: 2 // ????????? ?????? ??????
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
			
			  // ????????? ?????? ?????? ????????? ??????????????? 
		    var moveLatLon = new kakao.maps.LatLng(clinicVO.lat, clinicVO.lng);
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    
		    var imageSrc = '${pageContext.request.contextPath }/resources/images/app/vetvet2.png', // ?????????????????? ???????????????    
		    imageSize = new kakao.maps.Size(64, 69), // ?????????????????? ???????????????
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // ?????????????????? ???????????????. ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????????.
		      
		// ????????? ?????????????????? ????????? ?????? ?????????????????? ???????????????
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new kakao.maps.LatLng(clinicVO.lat, clinicVO.lng); // ????????? ????????? ???????????????

		// ????????? ???????????????
		var marker = new kakao.maps.Marker({
		    position: markerPosition, 
		    image: markerImage // ??????????????? ?????? 
		});

		// ????????? ?????? ?????? ??????????????? ???????????????
		marker.setMap(map);  		    
		    
		    
			

             }//success
          })
      })
      
      
      //???????????? ??????
      $(document).on('click', '#clnicChoice', function() {
    	   Swal.fire({
    		   title: '?????? ????????? ?????? ???????????????????',
    		   
    		   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
    		   confirmButtonText: '??????', // confirm ?????? ????????? ??????
    		   cancelButtonText: '??????', // cancel ?????? ????????? ??????
    			}).then(result =>{
    			   if (result.isConfirmed) {    	  
            $(clinicInfo).css("display", "none")
            $(showDiv).css("display", "")

            $(".previous").trigger('click');
            $(showDiv).attr("name", $("td[name = 'cliCd']").attr("id"))
         }
         
      	})
         
      })

      //?????? ?????? !!!
      $(nextBtn).on("click",function() {
         $.ajax({
            url : "/isMember",
            type : "post",
            dataType : "json",
            data : {
               memName : $("#memName").val(),
               memTel : $("#memTel").val(),
               cliCd : $(showDiv).attr("name"),
               userId : `${userId}`
            },
            success : function(isMember) {
               clinicStr = ""
               if (isMember.length == 0) { //?????? ??????
                  clinicStr += '<i class="mdi mdi-alert-circle-outline text-warning display-4"></i>'
                  clinicStr += '<h4>?????? ?????? ?????? ??????</h4><br>'
                  clinicStr += '<h5>?????? ??????????????? ???????????? ???????????? ????????? ???????????? ?????? ????????????.</h5>'
                  clinicStr += '<h5><b>??????/?????? ??????</b>??? ????????? ??????,</h5>'
                  clinicStr += '<h5>??????????????? ???????????? ???????????? <b>???????????? ????????? ??????</b>????????????.</h5>'

                  $("#nextBtn").css("display",
                        "none")
                  $("#resBtn").css("display", "")
                  $("#resBtn").attr("class", "next")
                  $("#resBtn button").text("??????")
               } else { //?????? ??????
                  clinicStr += "<br><br><div class='mb-4'>";
                  clinicStr += "   <i class='mdi mdi-check-circle-outline text-success display-4'></i>";
                  clinicStr += "</div><br>";
                  clinicStr += "<div>";
                  clinicStr += "   <h3><b>??????</b>??? ?????????????????????";
                  clinicStr += "   </h3><br><br>";
                  clinicStr += "</div>";

                  $("#nextBtn").css("display",
                        "none")
                  $("#resBtn").css("display", "")
                  $("#resBtn").attr("class", "next")
                  $("#resBtn button").text("??????")
               }

               $("#resultDiv").html(clinicStr)
            }
         })
      })

      $("#resBtn button").on("click", function() {
         if ($("#resBtn button").text() == "??????") {
            $("#nextBtn").css("display", "")
            $("#resBtn").css("display", "none")

            $(showDiv).css("display", "none")
            $(homeDiv).css("display", "none")
            $(clinicDiv).css("display", "")
            clinicList();
         } else {
            $("#nextBtn").css("display", "")
            $("#resBtn").css("display", "none")

            $(showDiv).css("display", "none")
            $(homeDiv).css("display", "")
            accessPetList();
         }
      })

      var selectId; //??????Id
      var selectCd; //??????Cd
      var homeTab = document.querySelector("#homeTab")
      var selectPet = document.querySelector("#selectPet")
      var selectPet2 = document.querySelector("#selectPet2")

      $(homeTab).on("click", function() {
         $("#clinicDiv").css("display", "none");    	 
         $("#showDiv").css("display", "none");    	 
         $("#clinicInfo").css("display", "none");    	 
         $(homeDiv).css("display", "")
         
         selectId = $("#selectPet2 option:selected").attr("data-patId");
         hospitalSelect(selectId);
         
         $('#myChart2').remove(); // this is my <canvas> element
	  	 $('#chartDiv').append('<canvas id="myChart2"><canvas>');
         confirmWeight1(selectId);
      })

      $(selectPet2).on("change", function() {
         selectId = $("#selectPet2 option:selected").attr("data-patId");
         hospitalSelect(selectId);
         
         $('#myChart2').remove(); // this is my <canvas> element
	  	 $('#chartDiv').append('<canvas id="myChart2"><canvas>');
         confirmWeight1(selectId);
      })

      //????????? ?????? ??????
      $("#careTab").on("click", function() {
         $("#careMain").css("display", "");
         $("#stayDetailDiv").css("display", "none");
         $("#vaccineDetailDiv").css("display", "none");

         console.log($("#selectPet option:selected").attr("data-patId"));
         console.log($("#selectPet option:selected").attr("data-cliCd"));

         selectId = $("#selectPet option:selected").attr("data-patId")
         selectCd = $("#selectPet option:selected").attr("data-cliCd")

         carePraList(selectId, selectCd) //?????? ?????????
         careVaccineList(selectId, selectCd) //?????? ?????????
         careStayList(selectId, selectCd) //?????? ?????????
      })

      //????????? ?????? ?????? ??????
      $(selectPet).on("change", function() {
         selectId = $("option:selected", this).attr("data-patId");
         selectCd = $("option:selected", this).attr("data-cliCd");

         carePraList(selectId, selectCd) //?????? ?????????
         careVaccineList(selectId, selectCd) //?????? ?????????
         careStayList(selectId, selectCd) //?????? ?????????
      })

      //var vaccineDetailDiv = document.querySelector("#vaccineDetailDiv");
      var stayDetailDiv = document.querySelector("#stayDetailDiv");
      var detailStr = "";
      var detailStr2 = "";
      var detailPriceStr = "";

      var selectStCd = "";

      var selectPetId;
      var selectVdNm;
      var selectDate;

      //?????? ??????
      $(document).on('click', ".vaccineListDiv", function() {
         console.log("patId :: " + $(this).children("#patId").text())
         console.log("vdNm :: " + $(this).children("#vdNm").text())

         selectDate = $(this).find("#vaccineDate").text();
         selectPetId = $(this).find("#patId").text();
         selectVdNm = $(this).find("#vdNm").text();

         vaccineDetail(selectPetId, selectVdNm, selectDate)
      })

      var foodPriceTotal = 0;
      var stPriceTotal = 0;
      var stTotal = 0;

      //?????? ??????
      $(document).on('click', ".stayListDiv", function() {
         selectStCd = $(this).find("#stCd").text();
         stayDetail(selectStCd);
      })

      var boardStr = "";
      var careTab = document.querySelector("#careTab")
      var stayDetailBack = document.querySelector("#stayDetailBack")
      var vaccineDetailBack = document.querySelector("#vaccineDetailBack")
      
      //????????? Tab
      $(contentTab).on("click", function() {
         petContentList();
      })

      $(stayDetailBack).on("click", function() {
         $(careTab).trigger("click");
      })

      $(vaccineDetailBack).on("click", function() {
         $(careTab).trigger("click");
      })
      
      
     $(document).on('click', "#boardDetail", function() { 
      	//$("#boardDetail").on("click", function(){
		$("#petBoard").css("display", "none");
		$("#boardDetailDiv").css("display", "");
		
		var path = $(this).attr("data-path")
		
		careStr = "";
		
		careStr += '<iframe id="inlineFrameExample" title="Inline Frame Example"';
		careStr += '	width="100%" height="650px"                                ';
		careStr += '	src= "' + path + '">                             ';
		careStr += '</iframe>';
		
		$("#boardDetailDiv").html(careStr)
      })
      
     $("#boardDetailBack").on('click', function() {
    	 $("#petBoard").css("display", "");
 		 $("#boardDetailDiv *").remove();
     }) 	 
    	 
      var selAnimalCd = ""
      var empId = ""
      var resDate = ""
      
      var dateStr = ""
      var resStr = ""
      var dateTime = ""
      
      var selDate = ""
      var animalSelect = document.querySelector("#animalSelect")
      
      var reservationTab = document.querySelector("#reservationTab")
      
      $(reservationTab).on("click", function() {
         selectId = $("#selectPet3 option:selected").attr("data-patId");
         reservationMyList(selectId)
      })
      
      //?????????(animalCd) ??????
      $(animalSelect).on("change", function() {
         selAnimalCd = $("#animalSelect option:selected").val();
         empList(selAnimalCd);
      })
      
	//?????? ??????
      $(document).on('click', '#emp', function(){
         
      empId = $(this).children("#empId").text();
      var empName = $(this).children("#empName").text();
      var empJob = $(this).children("#empJob").text();

      //var td = tr.children();
      console.log("????????? Row??? ?????? ????????? : " + empId + empName + empJob);

         //empId = $(this).children("#empId").text()
         
         //var empName =   $(this).children("#emp").children("#empName").text()
        // var empJob = $(this).children("#emp").children("#empJob").text()
         
         console.log("????????????", empId);
         console.log("????????????", empName);
         console.log("????????????", empJob);
         
         dateStr = ""
         dateStr += empName + empJob
         $("#empSelect").html(dateStr)
         
         $("#accordion-emp").trigger("click");
         setTimeout(() => $("#accordion-date").trigger("click"), 500);
      })
      
      var dateSelect = document.querySelector("#dateSelect");
      
      
      //?????? ?????? ??????
      $(document).on('click', '.date-picker', function(){ 
          
    	  if($(this).attr("class") == "date-picker none"){
  			Swal.fire({
  				icon: 'error',  // ???????????? ????????? ????????? ?????? ?????????.                     
  				title: '?????? ????????? ????????? ????????????.',
  				text: '????????? ?????? ??????????????????.'
  			});            
              return false;
           }
    	  
    	  
      
         $(".selected").attr("class", "date-picker")
         $(this).attr("class", "date-picker selected")
         
         var dateYear = $(this).attr("data-year")
         var dateMonth = $(this).attr("data-month")
         var dateDate = $(this).attr("data-date")
                  
         dateStr = ""
         
         for(i = 1; i<10; i++){
            if(dateMonth == i+""){
               dateMonth = "0" + i
            }
            if(dateDate == i+""){
               dateDate = "0" + i
            }
         }
         
         dateStr += dateYear + "-" + dateMonth + "-" + dateDate
         
         $(dateSelect).html(dateStr)
                  
         selDate = $(dateSelect).text();
         reservationList(empId, selDate);
         
         $("#accordion-date").trigger("click");
         setTimeout(() => $("#accordion-clock").trigger("click"), 500);
                  
      })
      
      var timeSelect = document.querySelector("#timeSelect");
      var submitBtn = document.querySelector("#submitBtn");
      
      //????????????
      $(document).on('click', '.date-time', function(){
    	 if(empId == ""){
           	Swal.fire({
				title: '?????? ?????? ????????? ?????? ??????????????????.'
				});
            $("#accordion-clock").trigger("click")
            setTimeout(() => $("#accordion-emp").trigger("click"), 500);
            return false;
         }
			
          if(selDate == ""){
           	Swal.fire({
				title: '????????? ?????? ??????????????????.'
				});
            $("#accordion-clock").trigger("click")
            setTimeout(() => $("#accordion-date").trigger("click"), 500);
            return false;
         }
		 
         $(".selected2").attr("class", "date-time");
         
         
         if($(this).attr("class") == "date-time none"){
			Swal.fire({
				icon: 'error',  // ???????????? ????????? ????????? ?????? ?????????.                     
				title: '?????? ????????? ????????? ????????????.',
				text: '????????? ?????? ??????????????????.'
			});            
            return false;
         }
         
         if($(this).attr("class") == "date-time"){
	         $(this).attr("class", "date-time selected2")        	 
         }
         
         
         
         dateTime = $(this).text()
         
         dateStr = ""
         dateStr += dateTime
		 
         $(timeSelect).html(dateStr)
      })
      
      $(submitBtn).on("click", function(){
         if(empId == ""){
            Swal.fire({
    			title: '?????? ?????? ????????? ?????? ??????????????????.'
    		});
            $("#accordion-clock").trigger("click")
            setTimeout(() => $("#accordion-emp").trigger("click"), 500);
            return false;
         }
         
         selectId = $("#selectPet3 option:selected").attr("data-patId");
         selResStartDate = selDate + " " + dateTime + ":00";
         
         reservationInsert(empId, selectId, selResStartDate)
      })
      
      
      //    ????????????????????????????????????????????????????????????????????????????????????????????????????????????
      
      var appReceipt = document.querySelector("#appReceipt");
      
      $(appReceipt).on("click", function() {
         //       selectId : ????????? ????????? ????????? 
         $.ajax({ //appreceipt ???????????? ??????
            url : "/checkReceipt",
            type : "post",
            data : {
               patId : selectId
            },
            dateType : "text",
            success : function(data) {
               console.log("appReceipt", data)
               if (data == "0") {
                  Swal.fire({
                     title : "?????? ?????? ?????????????????????.",
                     icon : "warning",
                     confirmButtonColor : '#3085d6',
                     confirmButtonText : '??????',
                     backdrop : true,
                  })
               } else {
                  Swal.fire({
                     title : "?????? ????????? ?????????????????????.",
                     icon : "success",
                     confirmButtonColor : '#3085d6',
                     confirmButtonText : '??????',
                     backdrop : true,
                  })
                  sendMessageAlram()
               }

            },
            error : function(request, status, error) {
               console.log("paymentInsert:" + request.status
                     + "\n" + "message:" + request.responseText
                     + "\n" + "error:" + error);
            }
         })
      })

      

   })
   
   
   
   
   //????????? ??????
   	function confirmWeight1(selectId){
        $.ajax({
            url : "/patWeight",
            type : "post",
            data : {
               patId : selectId
            },
            dateType : "json",
            success : function(data) {
				console.log("?????????",data)
				confirmWeight = new Array();
				confirmDate = new Array();
				for(var i=0; i<data.length; i++){
					confirmWeight.push(data[i].praWeight);
					confirmDate.push(data[i].praDate);
					
				}
				
// 				$('#myChart2').remove(); // this is my <canvas> element
// 				$('#chartDiv').append('<canvas id="myChart2"><canvas>');
				const ctx2 = document.getElementById('myChart2').getContext('2d');
				myChart2 = new Chart(ctx2, {
				    type: 'line',
				    data: {
				        labels: confirmDate,
				        datasets: [{
//					            label: '????????? ?????? ??????',
				            data: confirmWeight,
				            borderColor: [
				                '#80d0ee'
				            ],
				            borderWidth: 1
				        }]
				    },
				    options: {
				        responsive: false,
				        scales:{
				            x: {
				                display: false
				            }
				        },
				        plugins: {
				        	legend: {
			                    display: false
			                },
				        	datalabels: {
			                    display: false
			                },
				          title: {
				            display: false,
//					            text: (ctx) => 'Point Style: ' + ctx.chart.data.datasets[0].pointStyle,
				          },
				          
				        },
				      }
				});
               
               
               
               
            },
            error : function(request, status, error) {
               console.log("patWeight:" + request.status
                     + "\n" + "message:" + request.responseText
                     + "\n" + "error:" + error);
            }
         })
      }
   
   
   
   
    //????????????
   function stayDetail(stCd) {
      $.ajax({
          url : "/stayDetail",
          type : "post",
          data : {
             stCd : stCd
          },
          dataType : "json",
          success : function(stayDetailList) {
             detailStr = "";
             detailPriceStr = "";

             stPriceTotal = 0;
             foodPriceTotal = 0;
             stTotal = 0;

             console.log("stayDetailList", stayDetailList)
             $("#careMain").css("display", "none");
             $("#stayDetailDiv").css("display", "");
             $("#carouselExampleInterval button").css("display","")
             
             if (stayDetailList.length == 1) {
                $("#carouselExampleInterval button").css("display","none")
             }

             //??????
             $.each(stayDetailList, function(i, v) {
               detailStr += "<div id = '" + (i + 1)+ "day' class='carousel-item' data-bs-interval='50000'>";
                detailStr += "   <div class='d-flex mt-4'>"
                detailStr += "      <div class='flex-grow-1'>"

                detailStr += 
                   `<table class="table table-bordered mb-1" id="enterNoteContent">
                
                         <tr>
                            <th colspan="3" style="text-align: center;"><h3><b>\${(i + 1)}??????(\${v.snDate})</b></h3></th>
                         </tr>
                         <tr>
                            <td style="text-align:center;">
                              <div><h4>??????</h4><h4><b>\${v.snTempState}</b></h4></div>
                            </td>
                            <td style="text-align:center;">
                              <div><h4>????????????</h4><h4><b>\${v.snHealthState}</b></h4></div>
                            </td>
                            <td style="text-align:center;">
                              <div><h4>????????????</h4><h4><b>\${v.snPooState}</b></h4></div>
                            </td>
                         </tr>
                         <tr>
                            <td style="text-align:center;"><h4>????????????</h4></td>
                              <td colspan = "2"><h4>\${v.snSpecal}</h4></td>
                         </tr>
                         <tr>
                            <td style="text-align:center;" colspan="3"><h4><b>?????? ??????</b></h4></td>
                         </tr>
                         <tr>
                            <td colspan = "3"><h4>\${v.snCon.replace('\n', '<br>')}</h4></td>
                         </tr>
                  </table>
                  <br>
                  <div class="form-label h5 row col-md-5" style="margin-bottom: 2%;"> 
                  <i class="col-md-2 fas fa-hand-holding-medical"></i> 
                  <h4 class = "col-md-8"><b style="margin-bottom: 10%;">?????? ??????</b></h4>
               </div>                
                   <table class="table table-bordered mb-1 table-sm">
	                  <tr>
	                     <th class="tableFoodName" style="text-align:center;"><h4>?????????</h4></th>
	                     <th class="tableFoodPrice" style="text-align:center;"><h4>??????</h4></th>
	                  </tr>`
                
                   
                 for(let j=0; j<v.foodList.length; j++){
              	   var foodPrice = (v.foodList[j].foodPrice).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
                	 
                    detailStr += `
	                  <tr>
	                  <td><h4>\${v.foodList[j].foodName}</h4></td>
	                  <td style="text-align:right;"><h4>\${foodPrice}???</h4></td>
	                  </tr>` 
                }
                
                detailStr += "         </table>";
                detailStr += "         <br>";
                detailStr += "      </div>";
                detailStr += "   </div>";
                detailStr += "</div>";

                stPriceTotal += v.stPrice
                foodPriceTotal = v.stFoodTotal
             })
				
             //??????
             
             stTotal = stPriceTotal + foodPriceTotal;
             stTotal2 = stTotal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			 stPriceTotal = stPriceTotal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             foodPriceTotal = foodPriceTotal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             
             detailPriceStr += "<div class = 'card row'>";
             detailPriceStr += "   <div class = 'card-body'>";
             detailPriceStr += "      <table style = 'width:100%; text-align: right;'>";
             detailPriceStr += "         <tr>";
             detailPriceStr += "            <td><h5><b>?????? ?????????</b></h5></td><td><h4>"+ stPriceTotal +"???</h4></td>";
             detailPriceStr += "         </tr>";
             detailPriceStr += "         <tr>";
             detailPriceStr += "            <td><h5><b>?????? ??????</b></h5></td><td><h4>"+ foodPriceTotal +"???</h4></td>";
             detailPriceStr += "         </tr>";
             detailPriceStr += "         <tr>";
             detailPriceStr += "            <td><h5><b>??? ???</b></h5></td><td><h4>"+ stTotal2 +"???</h4></td>";
             detailPriceStr += "         </tr>";
             detailPriceStr += "      </table>";
             detailPriceStr += "   </div>";
             detailPriceStr += "</div>";

             $("#stayOneDay").html(detailStr)
             $("#stayPrice").html(detailPriceStr)

             $("#1day").attr("class", "carousel-item active")
          }
       })
   }

   //??????
   function sendMessageAlram() {
      send("receipt", // ?????? ??????(??????/??????)
      "????????????", // ?????? ??????(?????? ?????? ??????)
      "????????????", // ?????? ??????(??????/?????? ???)
      "????????????" // ?????? ??????
      );
   }
 
   //?????? ?????????
   function clinicList() {
      $.ajax({
         url : "/clinicList",
         type : "post",
         success : function(clinicList) {
            $(homeDiv).css("display", "none")
            $(clinicDiv).css("display", "")
            console.log(clinicList)
            clinicStr = "";
            
            clinicStr += "<div class='accessTab'><div class='card-body' align='right'>"
            clinicStr += "<img src='${pageContext.request.contextPath }/resources/images/appImg/hosImg.png' width='100px' style='margin-bottom:-43px; z-index: 5; position: relative;' />"
            clinicStr += "</div></br>"
            clinicStr += "<div class='search-box chat-search-box pb-4'>"
            clinicStr += "<div class='position-relative'>"
            clinicStr += "<input type='text' class='form-control'id='searchClinic' placeholder='alphaPet ???????????? ?????? ????????? ????????????'/>"
            clinicStr += "<i class='mdi mdi-magnify search-icon'></i>"
            clinicStr += "</div></div>"
            clinicStr += "</div>"
            clinicStr += "<hr class = 'my-1'>"
            clinicStr += "<div class = 'card-body' style='height:800px;overflow:auto;'>"

            $.each(clinicList,function(i, v) {
               clinicStr += "<div class='card clinicDiv'>";
                 clinicStr += "<div class='card-body'>";
                 clinicStr += "<table>";
                 clinicStr += "<tbody>";
            clinicStr += "<tr id='" + v.cliCd + "' class='clinic clinicTr'>";
            clinicStr += "<td class='cliName' style=width:100%><h4>" + v.cliName + "</h4></td>";
            clinicStr += "<td rowspan='2'><h2><i class='dripicons-chevron-right'></i></h2></td>";
            clinicStr += "</tr>";
            clinicStr += "<tr>";
            clinicStr += "<td>";
            clinicStr += "<h5>" + v.cliAddr1 + "</h5>";
            clinicStr += "</td>";
            clinicStr += "</tr>";
            clinicStr += "</tbody>";
                 clinicStr += "</table>";
                 clinicStr += "</div>";
                 clinicStr += "</div>";
            })
            
            clinicStr += "</div>"

            $(clinicDiv).html(clinicStr);
         }
      })
   }
   //?????? ?????????
   function hospitalSelect(patId) {
      if (patId == null) {
         console.log("adasdsadsa")
         clinicStr = "";
         clinicStr += "<div class = 'card col-md-12'>"
         clinicStr += "   <div class = 'card-body'>"
         clinicStr += "   <div align='center' class = 'card-body' id = 'clinicAccessBtn'>"
         clinicStr += "  	 <a><img src='${pageContext.request.contextPath }/resources/images/app/dogFace.png' style='width: 60px;'></a>"
         clinicStr += "      <h4> <b>+</b> ???????????? ????????????</h4>";
         clinicStr += "      <p> ??????????????? ??????????????? <b>????????????</b>??? ????????? <br>?????? ????????? ????????? ???????????? ??? ?????????!</p>";
         clinicStr += "   </div>"
         clinicStr += "   </div>"
         clinicStr += "</div>"

         $("#accessList").html(clinicStr)
         return;
      }

      $.ajax({
         url : "/hospitalSelect",
         type : "post",
         data : {
            patId : patId
         },
         dataType : "json",
         success : function(clinicList) {
            console.log("dsadaa : ", clinicList)
            clinicStr = "";

            $.each(clinicList, function(i, v) {
               clinicStr += "<div class = 'card col-md-6'>"
               clinicStr += "<div class = 'card-body'>"
               clinicStr += "   <h4><a><img src='${pageContext.request.contextPath }/resources/images/app/vetvet.png' style='width: 20px;'></a>  " + v.cliName + "</h4>";
               clinicStr += "   <div style='padding-left: 20px;'>";
               clinicStr += "   <h5><b>[??????]</b>" + v.praCon + "</h5>";
               clinicStr += "   <h5 class = 'card-title-desc'>" + v.praDate + "</h5>";
               clinicStr += "</div></div>"
               clinicStr += "</div>"
            })

            clinicStr += "<div class = 'card col-md-6'>"
            clinicStr += "   <div align='center' class = 'card-body' id = 'clinicAccessBtn'>"
            clinicStr += "  	 <a><img src='${pageContext.request.contextPath }/resources/images/app/dogFace.png' style='width: 60px;'></a>"
            clinicStr += "      <h5> <b>+</b> ???????????? ????????????</h5>";
            clinicStr += "   </div>"
            clinicStr += "</div>"

            $("#accessList").html(clinicStr)
         }
      })
   }

   //????????? ??? ????????? ????????? ??????
   function accessPetList() {
      $.ajax({
         url : "/accessPetList",
         type : "post",
         dataType : "json",
         data : {
            userId : `${userId }`
         },
         success : function(accessList) {
            console.log(accessList)

            $(homeDiv).css("display", "")
            $("#menuBar").css("display", "")

            homeSelectStr = "";
            careStr = "";
            dateStr = "";
            resStr = "";
			
            console.log("accessList ????????", accessList)
            
            if (accessList.length == 0) {
               
               $("#resDiv").css("display", "none")	
               $("#resDiv2").css("display", "")	
            	
               homeSelectStr += "<option>????????????</option>"
               careStr += "<option>????????????</option>"
               dateStr += "<option>????????????</option>"

               resStr += "<h4 style = 'text-align: center;'>?????? ????????? ????????? ????????????.</h4>"
               resStr += "<h5 id = 'accessBtn' class = 'card-title-desc' style = 'text-align: center;' >?????? ????????????</h5>"
               
               
               $(selectPet).html(careStr)
               $(selectPet2).html(homeSelectStr)
               $(selectPet3).html(dateStr)
               $("#resDiv2").html(resStr)
               
               $(homeTab).trigger("click");
               return;
            }
            
            $("#resDiv").css("display", "")
            $("#resDiv2").css("display", "none")	
            
            $.each(accessList,function(i, v) {
               //mainHome ?????? accessList??? ?????????
               homeSelectStr += "<option id = 'patName' value='" + v.patName + "' data-patId = '"+ v.patId +"' data-cliCd = '"+ v.cliCd +"'>"
                     + v.patName + "</option>";

               //??????????????? ?????? ????????????
               careStr += "<option id = 'patName' value='" + v.patName + "' data-patId = '"+ v.patId +"' data-cliCd = '"+ v.cliCd +"'>"
                     + v.patName + "</option>";

               //?????? ?????? ????????????
               dateStr += "<option id = 'patName' value='" + v.patName + "' data-patId = '"+ v.patId +"' data-cliCd = '"+ v.cliCd +"'>"
                     + v.patName + "</option>";
            })

            $(selectPet).html(careStr)
            $(selectPet2).html(homeSelectStr)
            $("#selectPet3").html(dateStr)

            $(homeTab).trigger("click");
         }
      })
   }

   //?????? ??????
   function carePraList(patId, cliCd) {
      $.ajax({
         url : "/carePraList",
         type : "post",
         data : {
            patId : patId,
            cliCd : cliCd
         },
         dataType : "json",
         async : false,
         success : function(praList) {
        	 console.log("praList", praList)
         
            careStr = ""
            careListStr = ""

            if (praList.length != 0) {
               for (let i = 0; i < praList.length; i++) {
                  careStr += `<table>
	                  			<tr>
	                  				<td rowspan="2" class="iconTd"><h4><i class="fas fa-hospital-user"></i></h4></td>
				                  	<td style='margin-right: 15px;'>
				                  		<h5><b>\${praList[i].praCon}</b></h5>
				                  	</td>
				                  </tr>
				
				                  <tr>
				                  	<td>
				                  		<h6 class = 'card-title-desc'>\${praList[i].praDate2.substring(0, 10)}</h6>
				                  	</td>
				                  </tr>
			                 </table>`;
			                 
                  careListStr += `<table class="table table-hover">
            			<tr>
            				<td rowspan="2" style="width: 130px; text-align: center;"><img src="${pageContext.request.contextPath }/resources/images/appImg/mediImg2.png" style="width: 80px; height: 80px;"></td>
		                  	<td>
		                  		<h4><b>\${praList[i].praCon}</b></h4>
		                  	</td>
		                  </tr>
		
		                  <tr>
		                  	<td>
		                  		<h6 class = 'card-title-desc'>\${praList[i].praDate2.substring(0, 10)}</h6>
		                  	</td>
		                  </tr>
	                 </table>`;           
               }
               $("#medicList").html(careListStr);
               $("#allList").html(careStr);

            } else {
//                   careStr += "<h5>?????? ????????? ????????????.</h5>";
                    careStr += "   <div align='center' class = 'card-body''>"
                	careStr += "  	 <br><br><a><img src='${pageContext.request.contextPath }/resources/images/app/dogFace.png' style='width: 120px;'></a>"
                	careStr += "      <h3> ?????? ????????? ????????????.</h3><br><br>"
                	careStr += "   </div>"
            
               $("#allList").html(careStr);
               $("#medicList").html(careStr);
            }
         }
      })
   }

   //?????? ??????
   function careVaccineList(patId, cliCd) {
      $.ajax({
         url : "/careVaccineList",
         type : "post",
         data : {
            patId : patId,
            cliCd : cliCd
         },
         dataType : "json",
         async : false,
         success : function(vaccineList) {
            console.log(vaccineList)
            careStr = ""
            careListStr = ""

            if (vaccineList.length != 0) {
               for (let i = 0; i < vaccineList.length; i++) {
            	  careStr += `
            	  			<table class='vaccineListDiv'>
	            	  			<tr>
	            	  				<td rowspan="2" class="iconTd"><h4><i class="fas fa-syringe"></i></h4></td>
	            	  				<td><h5><b>\${vaccineList[i].vaccineName} \${vaccineList[i].vaccineCount}??????</b></h5></td>
	            	  			</tr>
	            	  			<tr>
	            	  				<td id = 'vaccineDate'><h6>
	            	  					\${vaccineList[i].vaccineDate.substring(0,10)}</h6>
	            	  				</td>
	            	  				<td style="display:none;">
	            	  					<p id = 'vdNm' style = 'display:none'>\${vaccineList[i].vdNm}</p>
	            	  					<p id = 'patId' style = 'display:none'>\${vaccineList[i].patId}</p>
	            	  				</td>
	            	  			</tr>
	            	  		</table>
	            	  		`;
	            	  careListStr += `		
	            			<div class="card vaccineListDiv vaccineDiv col-md-11">
	        				<div class="card-body">
	        					<table>
	        						<tr>
		            	  				<td rowspan="2"  style="width: 90px;">
		            	  				<h2><img src="${pageContext.request.contextPath }/resources/images/appImg/mediImg3.png" style="width: 70px; height: 70px;"></h2></td>
		            	  				<td><h4><b>\${vaccineList[i].vaccineName} \${vaccineList[i].vaccineCount}??????</b></h4></td>
	        						</tr>
	        						<tr>
	        						<td id = 'vaccineDate' style='width: 400px; text-align: right;'><h5>
            	  					<hr style='margin-top: -3px; margin-bottom: -0.5px;'>
            	  					\${vaccineList[i].vaccineDate.substring(0,10)}</h5>
            	  				</td>
            	  				<td style="display:none;">
            	  					<p id = 'vdNm' style = 'display:none'>\${vaccineList[i].vdNm}</p>

            	  					<p id = 'patId' style = 'display:none'>\${vaccineList[i].patId}</p>
            	  				</td>
	        						</tr>
	        					</table>
	        				</div>
	        			</div>
            	  `;
            	   
               }
               $("#vaccineList").html(careListStr)
               $("#allList").append(careStr)

            } else {
//                $("#vaccineList").html("<h5>?????? ????????? ????????????.</h5>")
               $("#vaccineList").html("<div align='center' class = 'card-body''><a><br><br><img src='${pageContext.request.contextPath }/resources/images/app/dogFace.png' style='width: 120px;'></a><h3>?????? ????????? ????????????.</h3><br><br></div>")
            }
         }
      })
   }

   //?????? ??????
   function vaccineDetail(selectPatId, selectVdNm, selectDate) {
      console.log("vaccineDetail", selectPatId, selectVdNm, selectDate)

      $("#careMain").css("display", "none");
      $("#vaccineDetailDiv").css("display", "");

      $.ajax({
         url : "/vaccineDetail",
         type : "post",
         data : {
            patId : selectPatId,
            vdNm : selectVdNm
         },
         dataType : "json",
         success : function(vaccineDetail) {
            console.log("vaccineDetailList!!!! ", vaccineDetail)
            
            detailStr = "";
            vdPrice = (vaccineDetail[1].vdPrice).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            detailStr += `
            	<div class = 'card-body table-responsive'>
	            	<table class="table mb-0">
	            		<tr>
	            			<td colspan='2'><h4><b>\${vaccineDetail[0].vdName}</b></h4></td>
	            		</tr>
	            		<tr>
	            			<td><h5><b>??????</b></h5></td>
	            			<td><h5>\${vaccineDetail[0].vdType} \${vaccineDetail[0].vdCnt} ???</h5></td>
	            		</tr>
	            		<tr>
	            			<td><h5><b>?????????</b></h5></td>
	            			<td><h5>\${selectDate}</h5></td>
	            		</tr>
	            		<tr>
	            			<td><h5><b>??????</b></h5></td>
	            			<td><h5>\${vaccineDetail[1].vdCon}</h5></td>
	            		</tr>
	            		<tr>
	            			<td><h5><b>??????</b></h5></td>
	            			<td><h5>\${vdPrice}???</h5></td>
	            		</tr>
	            		<tr>
	            			<td rowspan="2"><h5><b>?????? ??????</b></h5></td>
	            			<td><h5>\${vaccineDetail[1].vdName} \${vaccineDetail[1].vdCnt} ???</h5></td>
	            		</tr>
	            		<tr>
	            			<td><h5>\${vaccineDetail[1].nextDay}</h5></td>
	            		</tr>
	            	</table>
            	</div>
            `;

            $("#vaccineDetailDiv2").html(detailStr)

         }
      })

   }

   //?????? ??????
   function careStayList(patId, cliCd) {
      $.ajax({
         url : "/careStayList",
         type : "post",
         data : {
            patId : patId,
            cliCd : cliCd
         },
         dataType : "json",
         async : false,
         success : function(stayList) {
            console.log("check",stayList)
            careStr = ""
            careListStr = ""
            careListStr += "<div class='col-12'>"

			
            if (stayList.length != 0) {
               for (let i = 0; i < stayList.length; i++) {
                  if (stayList[i].stEndDate == null) {
                	  careStr += `<br><table class='stayListDiv'>
	                	  			<tr>
	                	  				<td rowspan="2" class="iconTd"><h4><i class='fas fa-bed'></i></h4></td>
	                	  				<td><h5><b>?????? ??????</b></h5></td>
	                	  			</tr>
	                	  			<tr>
										<td>
											<h6>\${stayList[i].stStartDate.substring(0, 10)}</h6>
											<div id = 'stCd' style='display:none'>\${stayList[i].stCd}</div>
										</td>
	                	  			</tr>
	                	  		</table>`;
	                	  		
	                  careListStr +=`
	                  
	                  <table class='stayListDiv'>
		      	  			<tr>
		      	  				<td rowspan="2" style="width: 120px;"><img src="${pageContext.request.contextPath }/resources/images/appImg/stayBed.png" style="width: 80px; height: 80px;"></td>
									<td>
									  <h3><b>  ?????????</b></h3>
									</td>
		      	  			</tr>
		      	  			<tr>
									<td>
									  <h4>\${stayList[i].stStartDate.substring(0, 10)}</h4>
										<div id = 'stCd' style='display:none'>\${stayList[i].stCd}</div>
									</td>
		      	  			</tr>
      	  				</table>
      	  				<hr>
	                  
	                  `;  		
                  } else {
                	  careStr += `<br><table class='stayListDiv'>
	                	  			<tr>
			          	  				<td rowspan="2" class="iconTd"><h4><i class='fas fa-bed'></i></h4></td>
			          	  				<td><h5><b>?????? ??????</h5><b></td>
			          	  			</tr>
			          	  			<tr>
										<td>
											<h6>\${stayList[i].stStartDate.substring(0, 10)} ~ \${stayList[i].stEndDate.substring(0, 10)}</h6>
											<div id = 'stCd' style = 'display:none'>\${stayList[i].stCd}</div>
										</td>
			          	  			</tr>
			          	  		</table>
		          	  			`;
		          	  			
		          	 careListStr +=`
			                  
			                  <table class='stayListDiv'>
			      	  			<tr>
			      	  				<td rowspan="2" style="width: 120px;"><img src="${pageContext.request.contextPath }/resources/images/appImg/stayBed2.png" style="width: 80px; height: 80px;"></td>
										<td>
										  <h3><b>?????? ??????</b></h3>
										</td>
			      	  			</tr>
			      	  			<tr>
										<td>
										  <h4>\${stayList[i].stStartDate.substring(0, 10)} ~ \${stayList[i].stEndDate.substring(0, 10)}</h4>
											<div id = 'stCd' style='display:none'>\${stayList[i].stCd}</div>
										</td>
			      	  			</tr>
	      	  				</table><hr>
			                  
			                  
			                  `;	
			                  
                  }
               }
               careListStr += "</div>"

               $("#allList").append(careStr)
               $("#stayList").html(careListStr)

            } else {
//                $("#stayList").html("<h5>?????? ????????? ????????????.</h5>")
               $("#stayList").html("<div align='center' class = 'card-body''><br><br><a><img src='${pageContext.request.contextPath }/resources/images/app/dogFace.png' style='width: 120px;'></a><h3>?????? ????????? ????????????.</h3><br><br></div>")
            }
         }
      })
   }

  
   
   
   
   
   
   
   //????????????
   function petContentList() {
      $.ajax({
         url : "/app/boardList",
         type : "post",
         dataType : "json",
         success : function(boardList) {
            console.log(boardList)
            boardStr = ""
            $.each(boardList, function(i, v) {
               boardStr += "<div class = 'col-md-4'><hr>";
               boardStr += "   <div align='center'><a id = 'boardDetail' data-path ='/contentRead?abNm="+ v.abNm +"'>";
               boardStr += "      <img class='appImg3' src='${pageContext.request.contextPath }/resources/images/petBoard/"+ v.abImg +"'>";
               boardStr += "   </a>";
               boardStr += "   <br>";
               boardStr += "   <div class='contDetail' align='left'><h7>?????????</h7>";
               boardStr += "   <h5><b>" + v.abTitle + "</b></h5></div></div>";
               boardStr += "</div>";
            });

            $("#boardList").html(boardStr)
         }
      })
   }
   
   function empList(selAnimalCd){
	      console.log(selAnimalCd)
	      $.ajax({
	         url : "/app/empList",
	         type : "post",
	         dataType : "json",
	         data : { 
	            animalCd : selAnimalCd
	         },
	         success : function(empList){
	            console.log("empList", empList)
	            dateStr = "";
	            dateStr += "<table class='table table-hover'>"
	            dateStr += "<thead><td colspan='3'><h5><b>?????? ????????? ??????</b></h5></td></thead>"
	            $.each(empList, function(i, v){
	               dateStr += "<tr id = 'emp' style='margin-bottom: 10px;'><td id = 'empId' style='display:none;'>"+ v.empId +"</td>";
	               dateStr += "<td style='width: 80px;'><img src='${pageContext.request.contextPath }"+v.empProfile + "' class='empImg2 img-thumbnail avatar-lg'/></td>";
	               dateStr += "<td style='width: 90px;' id = 'empJob'><h3 style='margin-top: 23px;'><b>"+ v.empJob + "</b></h3></td>";
	               dateStr += "<td style='width: 120px;' id = 'empName'><h3 style='margin-top: 23px;'><b>"+ v.empName + "</b></h3></td>";
	               dateStr += "</tr>";
	               
	            })
	               dateStr += "</table>"

	            
	            $("#empListDiv").html(dateStr);
	         }
	      })
	   }
   
   function reservationList(selEmpId, selDate){
      console.log(selEmpId)
      $.ajax({
         url : "/app/reservationList",
         type : "post",
         data : {empId : selEmpId},
         dataType : "json",
         success : function(reservationList){
            console.log("reservationList", reservationList)
            console.log("?????? ????????? ??????", selDate)
            var timeTd = document.querySelectorAll('.date-time');
            
            $.each(reservationList, function(i, v){
               console.log("?????? ??? ??????", selDate, v.resStartDate.substring(0, 10))               
               console.log(selDate == v.resStartDate.substring(0, 10))
               if(selDate == v.resStartDate.substring(0, 10)){
                  console.log("?????? ????????", selDate == v.resStartDate.substring(0, 10))
                  
                  for(i=0; i<=timeTd.length; i++){
                     if($(".date-time").eq(i).text() == v.resStartDate.substring(11, 16)){
                        console.log("?????? ????????", $(".date-time").eq(i).text() == v.resStartDate.substring(11, 16))
                        $(".date-time").eq(i).attr("class", "date-time none")                                          
                     }                     
                  }
               } 
            })
         }
      })
   }
   
   function reservationInsert(selEmpId, selPatId, selResDate){
      console.log("empId : ", selEmpId, "patId : ", selPatId, "resDate : ", selResDate)

      $.ajax({
         url : "/app/reservationInsert",
         type : "post",
         data : {
            empId : selEmpId,
            patId : selPatId,
            resStartDate : selResDate 
         },
         success : function(){
            $("#accordion-clock").trigger("click")
            Swal.fire({
               title : "????????? ?????????????????????",
               icon : "success",
               confirmButtonColor : '#3085d6',
               confirmButtonText : '??????',
               backdrop : true,
            })
            empSelHtml = $("#empSelect").html()
            dateSelHtml = $("#dateSelect").html()
            timeSelectHtml = $("#timeSelect").html()
            selectIdVal = $("#selectPet3 option:selected").val();
            console.log(selectIdVal)
            
            reservationMyList(selPatId);
            $("#resDiv * ").remove();
            //$("#resDiv").html(resDivHtml);
            $("#closeBtn").trigger("click")
            sendMessageAlram2(selEmpId);
            reservationSuccess(empSelHtml, dateSelHtml, timeSelectHtml, selectIdVal)

         }
      })
   }
   
   function reservationSuccess(empSelHtml, dateSelHtml, timeSelectHtml, selectIdVal){
	   resStr = "";
	   resStr += "<div class = 'card-body'>";
	   resStr += "   <br><i class='mdi mdi-check-circle-outline text-success display-4' style='margin-left: 46%;'></i>";
	   resStr += "<br><h2 style='text-align:center;'><b>????????? ?????????????????????.</b></h2><br>";
	   resStr += "<div><img src='${pageContext.request.contextPath }/resources/images/appImg/resDiv.jpg' style='width:475px; width:475px; position: relative; z-index: 1;'></div>";
// 	   resStr += "<h4>?????? ??????</h4>";
	   resStr += "<table class='table' style='position: relative; z-index: 1; margin-top: -180px; margin-left: 20px;'>";
	   resStr += "	<tr>";
	   resStr += "		<td><h4><b>?????????</b></h4></td>";
	   resStr += "		<td><h3><b>"+ selectIdVal +"</b></h3></td>";
	   resStr += "	</tr>";
	   resStr += "	<tr>";
	   resStr += "		<td><h4><b>????????????</b></h4></td>";
	   resStr += "		<td><h3><b>"+ dateSelHtml +" "+ timeSelectHtml + "</b></h3></td>";
	   resStr += "	</tr>";
	   resStr += "	<tr>";
	   resStr += "		<td><h4><b>?????? ??????</b></h4></td>";
	   resStr += "		<td><h3><b>"+ empSelHtml +"</b></h3></td>";
	   resStr += "	</tr>";
	   resStr += "</table>";
	   resStr += "</div><div style='margin-left: 20px; margin-top: -20px;'><h6><i class='fas fa-bullhorn'></i> ????????? ?????? ??? ????????? ?????? ?????? ?????? <b>10????????????</b> ??? ??????????????????.</h6><h6 style='style='margin-left: 18px;'><b style='color: #db5959;'>?????? ?????? ??? ??????</b>??? ?????? ?????? ??????????????????.</h6><br><br><br></div>";
	   
	   $("#resDiv").html(resStr)
   }
   
   
   function reservationMyList(selPatId){
      console.log(selPatId)
      $.ajax({
         url : "/reservationMyList",
         type : "post",
         data : {
            userId : userId,
            patId : selPatId
         },
         success : function(resList){
            console.log("resList", resList)
            dateStr = "";
            if (stayList.length != 0) {
               $.each(resList, function(i, v){
                  console.log(i, v.resStartDate.substring(6, 7))
                  
                  dateStr += "<div>";
                  dateStr += "<h5>"+ v.resStartDate +"</h5>";
                  dateStr += "</div>";               
               })
            }else{
               dateStr += "?????? ????????? ????????????"
            }
            $("#myReservation").html(dateStr)
         }
      })
   }
   
function sendMessageAlram2(selEmpId){
		console.log("?????? empId", selEmpId)	

		send(
				"alarm", 				// ?????? ??????(??????/??????)
				selEmpId, 	// ?????? ??????(?????? ?????? ??????)
			 	"??????",	// ?????? ??????(??????/?????? ???)
			 	"<a><i class='ri-calendar-check-fill'></i> ??????</a>" 	// ?????? ??????
			);	
	}
 













//???????????? ??????
$(document).on('keyup', '#searchClinic', function(){
   console.log(this.value);
   let clinicDivs = document.querySelectorAll('.clinicDiv');
   
   for(let i = 0; i<clinicDivs.length; i++){
      clinicDivs[i].style.display="none";
   }
   let searchData = this.value;
   
   for(let i = 0; i< clinicDivs.length; i++){
      let cliName = clinicDivs[i].getElementsByClassName('cliName')[0].innerText;
      if(cliName.indexOf(searchData) != -1){
         clinicDivs[i].style.display="";
      }
   }
})





</script>