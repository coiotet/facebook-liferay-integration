<%
/**
* Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
%>

<%@ include file="init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />

	<aui:fieldset>
		<aui:input label="use-fb-sdk" name="preferences--useFbSdk--" type="checkbox" value="<%= useFbSdk %>" />

		<aui:input label="page-url" name="preferences--href--" type="text" value="<%= href %>" />

		<aui:input name="preferences--maxRows--" type="text" value="<%= maxRows %>" />

		<aui:input name="preferences--width--" type="text" value="<%= width %>" />

		<aui:select name="preferences--size--">
			<aui:option label="small" selected='<%= size.equals("small") %>'/>
			<aui:option label="medium" selected='<%= size.equals("") %>'/>
			<aui:option label="large" selected='<%= size.equals("large") %>'/>
		</aui:select>

		<aui:select name="preferences--colorsScheme--">
			<aui:option label="light" selected='<%= colorsScheme.equals("") %>' value="" />
			<aui:option label="dark" selected='<%= colorsScheme.equals("dark") %>' />
		</aui:select>
	</aui:fieldset>

	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>