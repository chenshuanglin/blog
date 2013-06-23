<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
   <%int  i = 0; %>
	<div class="commentSubmitDiv">
    <textarea class="textarea" id="target"></textarea>
    <a><div class="submitbutton"><span>发 布</span></div></a>
    </div>
         <div class="commentTextDiv">
              <ul><s:iterator value="allcomments" id="comments">
             
                   <li>
                       <div class="everyComment">
                          	<div style="clear:both;"></div>

                            <span class="spantext">
                            
                            	<span>
                            			<s:action name="getuser" executeResult="true">
 											<s:param name="userid"><s:property value="users.userId"/></s:param>
 											<s:param name="test">test</s:param>
 										</s:action>
                                         <s:property value="matter"/>
                                </span>
                            	</span>
                                
                                <div style="clear:both;"></div>
                       </div>
                    </li>
                     </s:iterator>
                </ul>
          </div>
          <div class="upDiv"><img src="images/packup.png" style="cursor:pointer;"  onclick="openComment('blog1')" /></div>

