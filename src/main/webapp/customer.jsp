<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%-- 
	
	 View is used for Customer details page
	
	 @author SasiRegha
	 @version 1.0
	 @since 01-12-2017
	
--%>
<head>
<link rel="stylesheet" href="css/minsure.css" />
</head>
<body bgcolor="#404040">
	<f:view>
		<h:panelGrid columns="1" width="100%" cellspacing="0" cellpadding="0"
			styleClass="panelBorder">
			<%@include file="header.jsp"%>


			<h:panelGrid columns="1" bgcolor="#FFFFCC" width="100%"
				styleClass="panelBorder">
				<h:form>

					<h:panelGrid columns="1">
						<h:outputLabel value="#{msg.customerHeader}"
							styleClass="headerText" />
					</h:panelGrid>
					<hr />

					<h:panelGrid columns="3">
						<h:panelGroup>
							<h:outputText value="#{msg.title}" style="color:#48322d" />
						</h:panelGroup>
						<h:panelGroup>
							<h:selectOneMenu value="#{customer.title}" id="title"
								required="true" requiredMessage="#{msg.titleValidation}">
								<f:selectItem itemValue="" itemLabel="Select Title" />
								<f:selectItem itemValue="Mr" itemLabel="Mr" />
								<f:selectItem itemValue="Miss" itemLabel="Miss" />
								<f:selectItem itemValue="Mrs" itemLabel="Mrs" />
								<f:selectItem itemValue="Ms" itemLabel="Ms" />
								<f:selectItem itemValue="Dr" itemLabel="Dr" />
								<f:selectItem itemValue="Reverend" itemLabel="Reverend" />
								<f:selectItem itemValue="Sir" itemLabel="Sir" />
								<f:selectItem itemValue="Lady" itemLabel="Lady" />
								<f:selectItem itemValue="Dame" itemLabel="Dame" />
								<f:selectItem itemValue="Lord" itemLabel="Lord" />
								<f:selectItem itemValue="Rt." itemLabel="Rt." />
								<f:selectItem itemValue="Honourable" itemLabel="Honourable" />
								<f:selectItem itemValue="Profession" itemLabel="Profession" />
							</h:selectOneMenu>
						</h:panelGroup>

						<h:panelGroup>
							<h:message for="title" style="color:red" />
						</h:panelGroup>

						<h:panelGroup>
							<h:outputLabel for="firstName" value="#{msg.firstName}"
								style="color:#48322d" />
						</h:panelGroup>
						<h:panelGroup>
							<h:inputText id="firstName" value="#{customer.firstName}"
								required="true" requiredMessage="#{msg.firstnameValidation}"
								validatorMessage="#{msg.firstnameFormatValidation}">
								<f:validateLength minimum="3" maximum="20" />
							</h:inputText>
						</h:panelGroup>
						<h:panelGroup>
							<h:message for="firstName" style="color:red" />
						</h:panelGroup>

						<h:panelGroup>
							<h:outputLabel for="lastName" value="#{msg.lastName}"
								style="color:#48322d" />
						</h:panelGroup>
						<h:panelGroup>
							<h:inputText id="lastName" value="#{customer.lastName}"
								required="true" requiredMessage="#{msg.lastnameValidation}"
								validatorMessage="#{msg.lastnameFormatValidation }">
								<f:validateLength minimum="3" maximum="20" />
							</h:inputText>
						</h:panelGroup>
						<h:panelGroup>
							<h:message for="lastName" style="color:red" />
						</h:panelGroup>

						<h:panelGroup>
							<h:outputLabel for="dateOfBirth" value="#{msg.dateOfBirth}"
								style="color:#48322d" />
						</h:panelGroup>
						<h:panelGroup>
							<h:inputText id="dateOfBirth" value="#{customer.dateOfBirth}"
								required="true" requiredMessage="#{msg.dobValidation}"
								validatorMessage="#{msg.dobFormatValidation}">
								<f:validator validatorId="DateofbirthValidator" />
							</h:inputText>
						</h:panelGroup>
						<h:panelGroup>
							<h:message for="dateOfBirth" style="color:red" />
						</h:panelGroup>
					</h:panelGrid>

					<h:panelGrid columns="1">
						<h:commandButton action="next" value="Next" />
					</h:panelGrid>
				</h:form>

			</h:panelGrid>

			<%@include file="footer.jsp"%>

		</h:panelGrid>

	</f:view>
</body>