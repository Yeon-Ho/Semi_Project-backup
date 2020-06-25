<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<c:forEach var="" items="" varStatus="status">

   <c:if test="${!status.last }">
      <c:if test="${status.index % 4 eq 0 }">
         <div class="ver">
         <div class="hor" id="eval${status.index }"></div>
         <div class="h_blank"></div>
      </c:if>
      <c:if test="${status.index % 4 eq 1 }">
         <div class="hor" id="eval${status.index }"></div>
         <div class="h_blank" ></div>
      </c:if>
      <c:if test="${status.index % 4 eq 2 }">
         <div class="hor" id="eval${status.index }"></div>
         <div class="h_blank"></div>
      </c:if>
      <c:if test="${status.index % 4 eq 3 }">
         <div class="hor" id="eval${status.index }"></div>
         </div>
         <div class="v_blank"></div>
      </c:if>
   </c:if>
   
   <c:if test="${status.last }">
      <c:if test="${status.index % 4 eq 0 }">
         <div class="ver">
         <div class="hor" id="eval${status.index }"></div>
         </div>
      </c:if>
      <c:if test="${status.index % 4 eq 1 }">
         <div class="hor" id="eval${status.index }"></div>
         </div>
      </c:if>
      <c:if test="${status.index % 4 eq 2 }">
         <div class="hor" id="eval${status.index }"></div>
         </div>
      </c:if>
      <c:if test="${status.index % 4 eq 3 }">
         <div class="hor" id="eval${status.index }"></div>
         </div>
      </c:if>
   </c:if>

</c:forEach>


<script type="text/javascript">
$('.hor').on("click", function() {
	$('#mo_wrapper').removeClass("mo_hidden");
});
$(".hor").click(function() {
    $.ajax({
       type: "POST"
       , url: "/eval/detail"
       , data: {
          food: $(this).val()
       }
       , dataType: "html"
       , success: function(result) {
          console.log("AJAX 성공")
          console.log(result)
          $("#mo_wrapper").html(result);
       }
       , error: function() {
          console.log("AJAX 실패")
       }
    });
});
</script>