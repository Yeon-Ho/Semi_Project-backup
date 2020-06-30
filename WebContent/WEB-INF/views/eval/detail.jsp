<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height: 100%;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>

<script type="text/javascript">
$(document).ready(function() {
	//클릭된 별이 몇 번째 칸인지 알아내기
	var idx =  ${staravg } * 2 - 1;

	//모두 투명하게 만들기
	$(".star").removeClass("on")

	//클릭이 된 곳까지 채워진 별로 만들기
	for (var i = 0; i <= idx; i++) {
		$(".star").eq(i).addClass("on");
	}
})
</script>







<style type="text/css">
#mo_review div.userPic {
	display: inline-block;
	background-size: cover;
	background-position-x: center;
	width: 105px; height : 105px; border-radius : 50%;
	margin: 10%;
	height: 105px;
	border-radius: 50%;
}
</style>

<script type="text/javascript">
// $(".goodbtn").click(function() {
//     if($("#good_badcnt${status.index }").val() == 0) {
// 		$.ajax({
// 	       type: "get"
// 	       , url: "/eval/detail/goodbad"
// 	       , data: {
// 	    	   reviewno: $("#reviewno${status.index }").val(),
// 	    	   good: $("#good").val(),
// 	    	   bad: "no"
// 	       }
// 	       , dataType: "html"
// 	       , success: function(result) {
// 	          console.log("AJAX 성공")
// 	       }
// 	       , error: function() {
// 	          console.log("AJAX 실패")
// 	       }
// 	    });
		
//     } else if($("#good_badcnt${status.index }").val() == 1) {
//     	alert("이미 좋아요를 누르셨습니다");
    	
// 	} else if($("#good_badcnt${status.index }").val() == 2) {
//     	alert("이미 싫어요를 누르셨습니다");
    	
// 	}
// });
</script>
<script type="text/javascript">

// $(".badbtnn").click(function() {
// 	if( $("#good_badcnt${status.index }").val() == 0) {
// 	$.ajax({
// 	       type: "get"
// 	       , url: "/eval/detail/goodbad"
// 	       , data: {
// 		       reviewno: $("#reviewno${status.index }").val(),
// 	    	   good : "no",
// 	    	   bad : $("#bad").val()
// 	       }
// 	       , dataType: "html"
// 	       , success: function(result) {
// 	          console.log("AJAX 성공")
// 	          console.log(result)
// 	       }
// 	       , error: function() {
// 	          console.log("AJAX 실패")
// 	       }
// 	    });
// 	} else if ($("#good_badcnt${status.index }").val() == 2){
// 		alert("이미 싫어요 버튼을 누르셨습니다");	
// 	}
// 	 else if ($("#good_badcnt${status.index }").val() == 1){
// 		alert("이미 좋아요 버튼을 누르셨습니다");	
// 	}
// 	});

</script>





<script type="text/javascript">
$(document).ready(function() {

var goodbad = "";
$(".goodbtn").click(function() {
	goodbad = "good";
	console.log(goodbad);
	console.log();
	send_goodbad(this, goodbad);
});

$(".badbtnn").click(function() {
	goodbad = "bad";
	console.log(goodbad);
	
	send_goodbad(this, goodbad);
});

})


function send_goodbad(th, goodbad) {
	
	var state = $(th).parents("tr").attr("data-good_bad");
	
	if( state == 0 ) {
		
		$.ajax({
	       type: "get"
	       , url: "/eval/detail/goodbad"
	       , data: {
	    	   reviewno: $(th).parents("tr").attr("data-reviewno"),
	    	   goodbad: goodbad	
	       }
	       , dataType: "html"
	       , success: function(result) {
	          console.log("AJAX 성공")
	       }
	       , error: function() {
	          console.log("AJAX 실패")
	       }
	    });
 	      evalDetail(${menuno })

		
		
	} else if( state == 1 ) {
		alert("이미 좋아요를 누르셨습니다");
		
	} else if( state == 2 ) {
		alert("이미 싫어요를 누르셨습니다");
	}
}
</script>







<div class="mo_overlay" id="mo_overlay"></div>
<div class="mo_content">
	<div id="mo_left">
		<div class="mo_detail" id="mo_image" style="height: 74%;"></div>
		<div class="mo_detail mo_detail_blank"></div>
			<c:if test="${login }">
				<div class="mo_detail" id="mo_expl"
					style="background-color: tomato; height: 18%;">설명</div>
				<div class="mo_detail" style="background-color: red; height: 6%;">
					<input type="text" placeholder="지역명 입력" id="map_in" />
					<button id="map_btn">지점검색</button>
				</div>
			</c:if>
			<c:if test="${!login or empty login }">
				<div class="mo_detail" id="mo_expl"
					style="background-color: tomato; height: 24%;">설명</div>
			</c:if>
		<div></div>
	</div>
	<div id="mo_middle"></div>
	<div id="mo_right">
		<button class="mo_button" id="mo_close">X</button>
		<div class="mo_detail" id="mo_star" style="height: 21%;">
			<div class="star-box">
				<span class="star star_left"></span> <span class="star star_right"></span>
				<span class="star star_left"></span> <span class="star star_right"></span>
				<span class="star star_left"></span> <span class="star star_right"></span>
				<span class="star star_left"></span><span class="star star_right"></span>
				<span class="star star_left"></span> <span class="star star_right"></span>
			</div>
			<%-- 						<div class="star-value">${staravg }</div> --%>
			<c:if test="${login }">
				<button class="ajaxbutton" id="ajax_star_comment">별점&한줄평 등록</button>
			</c:if>
			<c:if test="${!login or empty login }">
				<div>로그인 하시면 평가 등록 등 추가기능을 사용하실 수 있습니다.</div>
			</c:if>



			<input type="hidden" value="${revcnt }" id="revcnt" />
		</div>

		<div class="mo_detail mo_detail_blank"></div>











		<div class="mo_detail" id="mo_review"
			style="background-color: tomato; height: 77.5%; overflow: scroll;">
			<table>
				<c:forEach var="item" items="${reviewList}" varStatus="status">
					<tr data-reviewno="${item.review.reviewNo }"
						data-good_bad="${item.reviewverif.good_bad }">
						<td><div class="userPic"
								style="background-image: url('/upload_picture/${item.picture.picServer }');"></div></td>
						<td width="100%" style="padding: 20px"><span>${item.review.reviewContent }</span></td>
						<td>
							<button class="goodbtn">
								<i class="xi-emoticon-smiley-o xi-4x"></i>
							</button> <span>${item.review.reviewGood }</span>
						</td>
						<td>
							<button class="badbtnn">
								<i class="xi-emoticon-devil xi-4x"></i>
							</button> <span>${item.review.reviewBad }</span>
						</td>
						<c:if test="${not empty login }">
							<td><button class="ajax_report"
									value="${item.review.reviewNo }"
									target="${item.review.userNo }"
									content="${item.review.reviewContent }">신고</button></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</div>











		<!-- 		<div class="mo_detail mo_detail_blank"></div> -->
		<!-- 		<div class="mo_detail" id="mo_pn" -->
		<!-- 			style="background-color: tomato; height: 5%;">페이지네이션</div> -->
		<!-- 	</div> -->
	</div>

	<script type="text/javascript">
	$('#mo_close').on("click", function() {
		$('#mo_wrapper').addClass("mo_hidden");
	});
	$('#mo_overlay').on("click", function() {
		$('#mo_wrapper').addClass("mo_hidden");
	});
</script>
	<script type="text/javascript">
	$("#mo_image").css({
		"backgroundImage" : "url(/upload/${image.imgServer })",
		"background-size" : "cover",
		"background-position-x" : "center"
	});

	$("#mo_expl").html("${menu.menuInfo}");
</script>
	<script type="text/javascript">
	       
 $(".ajaxbutton").click(function() {
 			if ( $(revcnt).val() == 1) {
	        	 alert("이미 한줄평을 쓰셨습니다 한줄평 수정은 마이페이지에서 가능합니다");
	         } else {
	        	 $("#mo_image").css({
	       	      "backgroundImage" : "url(/upload/${image.imgServer })",
	       	      "background-size" : "cover",
	       	      "background-position-x" : "center"
	       	   }); 
	       	         $.ajax({
	       	            type: "get"
	       	            , url: "/eval/detail/insert"
	       	            , data: {
	       	               menuno: ${menuno },
	       	               revcnt:${revcnt }
	       	            }
	       	            , dataType: "html"
	       	            , success: function(result) {
	       	               console.log("AJAX 성공")
	       	               console.log(result)
	       	               $("#mo_right").html(result);
	       	            }
	       	            , error: function() {
	       	               console.log("AJAX 실패")
	       	            }
	       	         });
	       	         
	       	         
	         }
 			
	   });

 
 $(".ajax_report").click(function(){
    $.ajax({
          type: "get"
          , url: "/eval/detail/report"
          , data: {
                menuno : ${menuno },
                reviewno : $(this).val(),
                targetno : $(this).attr("target"),
                content : $(this).attr("content")
          }
          , dataType: "html"
          , success: function(result) {
             console.log("AJAX 성공")
             console.log(result)
             $("#mo_right").html(result);
          }
          , error: function() {
             console.log("AJAX 실패")
          }
       });
 });
 
	</script>


	<style type="text/css">
.star-box {
	/* 별과 별 사이 공백 제거 */
	font-size: 0;
}

.star {
	/* width,height 적용가능하도록 변경 */
	display: inline-block;
	/* 별이 표현되는 영역 크기 */
	width: 37px;
	height: 80px;
	/* 투명한 별 표현 */
	background-image:
		url(https://image.flaticon.com/icons/svg/159/159772.svg);
	background-repeat: no-repeat;
	background-size: 200%;
}

.star_left {
	/* 왼쪽 별 */
	background-position: 0 0;
}

.star_right {
	/* 오른쪽 별 */
	background-position: 100% 0;
}

.on {
	/* 채워진 별로 이미지 변경 */
	background-image:
		url(https://image.flaticon.com/icons/svg/149/149763.svg);
}

.star-value {
	width: 50px;
	/* 	margin-left: 550px; */
	font-size: 20px;
}

#ajax_star_comment {
	background: steelblue;
	color: wheat;
	width: 128px;
	height: 30px;
	border-radius: 30px;
}

#goodbtn {
	all: unset;
	cursor: pointer;
}

#badbtnn {
	all: unset;
	cursor: pointer;
}
</style>

<script>
$("#map_btn").click(function() {
      $.ajax({
         type: "GET"
         , url: "/eval/map"
         , data: {
        	menuno: ${menuno },
            where: $('#map_in').val()
         }
         , dataType: "html"
         , success: function(result) {
            console.log("AJAX 성공")
            console.log(result)
            $(".mo_content").html(result);
            
         }
         , error: function() {
            console.log("AJAX 실패")
         }
      });
});
</script>