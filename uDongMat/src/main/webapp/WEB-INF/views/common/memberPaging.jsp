<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style type="text/css">

#paging nav{
   text-align: center;
   
}
#paging nav > ul {
   list-style-type: none;
   padding: 0px;
   overflow: hidden;
/*     background-color: #333333;  */
   display: table;
   margin-left: auto;
   margin-right: auto;
}

#paging nav > ul > li{
   float: left;
   font-size: 15px;
}

#paging nav > ul > li > a{
/*     display: block;  */
    color: black; 
   text-align: center;
   padding: 10px;
   text-decoration: none;
}

#paging nav > ul > li > a:hover{
   color: black;
/*    background-color: #5D5D5D; */
   font-weight: bold;
}

#paging .active{
   color: #FFD9EC;
/*     background-color: #5D5D5D;  */
   font-weight: bold;
}

</style>



<script type="text/javascript">

   function goPage(pageNumber){
//       var curPage = document.getElementById('curPage');
      var curPage = $("#curPage");

//       curPage.value = dsfsdf;
      curPage.val(pageNumber);

      $("#pagingForm").submit();
   }
   
   $(document).ready(function(){
      
      var curPageDoc = $('#curPage');
      var id = '#pageButton' + curPageDoc.val();
      
      $(id).addClass('active');
   });
   

</script>
<div id="paging"> 
   <nav>
      <ul>
      <!--ㄷ 한자 적용  -->
         <li>
            <a href="#" 
            onclick="goPage(${pagingMap.memberPaging.prevPage});">
            <span>이전</span>
            </a>
         </li>
         
         <c:forEach var="num" begin="${pagingMap.memberPaging.blockBegin}"
            end="${pagingMap.memberPaging.blockEnd}">
            
            <li id="pageButton${num}">
               <a href="#" onclick="goPage(${num});">
                  <c:out value="${num}"/>
               </a>
            </li>
            
         </c:forEach>

         <li><a href="#" 
            onclick="goPage(${pagingMap.memberPaging.nextPage});">
            <span>다음</span></a>
         </li>
      </ul>
   </nav>
</div>   
   <form action="./list.do" id="pagingForm" method="post">
      <input type="hidden" id="curPage" name="curPage" 
         value="${pagingMap.memberPaging.curPage}">
   </form>