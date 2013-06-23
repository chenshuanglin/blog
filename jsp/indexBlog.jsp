<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% int i = 0 ;%>
 	<s:iterator value="allContent" status="st" id="content">
 		<div class="blogClass">
 			<div id="UserPhoto1" class="userPic">
 				<s:action name="getuser" executeResult="true">
 					<s:param name="userid"><s:property value="users.userId"/></s:param>
 				</s:action>
 			</div>
                    <div style="float:left; margin-left:10px; margin-top:20px;"><img src="resources/images/point.png" /></div>
                     <div id="UserBlog" class="blogMatter">
                    	<div class="matter">
                    		<b class="blogText">
 								<h3 style="text-align:left;"><s:property value="topic"/></h3><p></p>
 									<s:property value="matter"/>
 							</b>
                    	</div>
                        <div class="commentBar">
                        		<s:set value="blogContentId" scope="request" name="blogid"></s:set>
              					<a><div class="praise sdiv"><img src="resources/images/praise.png"/>(1)</div></a>
                                <a><div class="comment sdiv" onclick="deal_getInfo('blog<%=i%>','<s:property value="blogContentId"/>')"><img src="resources/images/comment.png" />(1)</div></a>
                                <a><div class="share sdiv" ><img src="resources/images/share.png" />分享</div></a>
                        </div>
                    </div>
                    <div class="commentDiv" id="blog<%=i++%>">
                    	
                    </div>
 			<div style="clear:both;"></div>
 		</div>
 	</s:iterator>
