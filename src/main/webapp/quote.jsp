<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%-- 
	
	 View is used for Quote details page
	
	 @author SasiRegha
	 @version 1.0
	 @since 01-12-2017
	
--%>
<head>
<link rel="stylesheet" href="css/minsure.css" />


<script language="javascript" type="text/javascript">
	// Closing the current window when the close button is clicked
	function windowClose() {
		if (confirm("This will close the application. Do you really want to close the application.")) {
			window.opener = self;
			window.close();
		}
	}
</script>
</head>
<body bgcolor="#404040">
	<f:view>


		<h:panelGrid columns="1" width="100%" cellspacing="0" cellpadding="0">
			<%@include file="header.jsp"%>
			<h:panelGrid columns="1" bgcolor="#FFFFCC" width="100%"
				styleClass="panelBorder">
				<h:form>

					<h:panelGrid columns="1">
						<h:outputLabel value="#{msg.quoteHeader}" styleClass="headerText" />
					</h:panelGrid>
					<hr />

					<h:panelGrid columns="2">

						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputLabel value="Title" style="color:#48322d" />
							</h:panelGrid>
						</h:panelGroup>
						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputText value="#{customer.title}" style="color:#b75103" />
							</h:panelGrid>
						</h:panelGroup>

						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputLabel value="FirstName" style="color:#48322d" />
							</h:panelGrid>
						</h:panelGroup>
						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputText value="#{customer.firstName}"
									style="color:#b75103" />
							</h:panelGrid>
						</h:panelGroup>

						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputLabel value="LastName" style="color:#48322d" />
							</h:panelGrid>
						</h:panelGroup>
						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputText value="#{customer.lastName}" style="color:#b75103" />
							</h:panelGrid>
						</h:panelGroup>

						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputLabel value="DateofBirth" style="color:#48322d" />
							</h:panelGrid>
						</h:panelGroup>
						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">

								<h:outputText value="#{customer.dateOfBirth}"
									style="color:#b75103" />
							</h:panelGrid>
						</h:panelGroup>

						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputLabel value="Quote Price" style="color:#48322d" />
							</h:panelGrid>
						</h:panelGroup>
						<h:panelGroup>
							<h:panelGrid columns="1" columnClasses="panelBorder" width="100%">
								<h:outputText value="#{quote.price } " style="color:#b75103" />
							</h:panelGrid>
						</h:panelGroup>

					</h:panelGrid>

					<h:panelGrid columns="1">
						<h:commandButton value="Close" onclick="windowClose();" />
					</h:panelGrid>

				</h:form>
			</h:panelGrid>


			<%@include file="footer.jsp"%>
		</h:panelGrid>
</body>
</f:view>