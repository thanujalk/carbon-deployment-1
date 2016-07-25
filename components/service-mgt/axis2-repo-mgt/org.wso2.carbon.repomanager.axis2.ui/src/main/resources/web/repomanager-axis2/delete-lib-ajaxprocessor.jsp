<%--
~ Copyright (c) 2005-2010, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
~
~ WSO2 Inc. licenses this file to you under the Apache License,
~ Version 2.0 (the "License"); you may not use this file except
~ in compliance with the License.
~ You may obtain a copy of the License at
~
~    http://www.apache.org/licenses/LICENSE-2.0
~
~ Unless required by applicable law or agreed to in writing,
~ software distributed under the License is distributed on an
~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
~ KIND, either express or implied.  See the License for the
~ specific language governing permissions and limitations
~ under the License.
--%>

<%@ page import="org.wso2.carbon.repomanager.axis2.ui.Axis2RepoManagerClient" %>
<%@ page import="org.wso2.carbon.repomanager.axis2.ui.Axis2RepoManagerUIConstants" %>

<%
    String httpMethod = request.getMethod().toLowerCase();
    if (!"post".equals(httpMethod)) {
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
        return;
    }

    if (request.getParameter(Axis2RepoManagerUIConstants.DELETE_LIB_PATH) != null) {
        String cookie = (String)session.getAttribute(org.wso2.carbon.utils.ServerConstants.ADMIN_SERVICE_COOKIE);
        Axis2RepoManagerClient client = new Axis2RepoManagerClient(cookie, config, session);
        boolean deletionStatus = client.deleteLibs(request.getParameter(Axis2RepoManagerUIConstants.DELETE_LIB_PATH));
        if(deletionStatus) {
            out.println("true");
        } else {
            out.println("false");
        }
    }
%>