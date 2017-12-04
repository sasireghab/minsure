<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%-- 
	
	 View is used for Vehicle details page
	
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
						<h:outputLabel value="#{msg.vehicleHeader}"
							styleClass="headerText" />
					</h:panelGrid>
					<hr />

					<h:panelGrid columns="1">
						<h:panelGroup>
							<h:outputText value="All fields are mandatory"
								style="color:#48322d" />
						</h:panelGroup>
					</h:panelGrid>

					<h:panelGrid columns="3">

						<h:panelGroup>
							<h:outputLabel for="carColor" value="#{msg.carColor }"
								style="color:#48322d" />
						</h:panelGroup>

						<h:panelGroup>
							<h:inputText id="carColor" value="#{vehicle.carColor}"
								required="true" requiredMessage="#{msg.carcolorValidation}"
								validatorMessage="#{msg.carcolorFormatValidation }">
								<f:validateLength minimum="3" maximum="10" />
							</h:inputText>
						</h:panelGroup>

						<h:panelGroup>
							<h:message for="carColor" style="color:red" />
						</h:panelGroup>


						<h:panelGroup>
							<h:outputLabel for="carRegNumber" value="#{msg.carRegNumber }"
								style="color:#48322d" />
						</h:panelGroup>

						<h:panelGroup>
							<h:inputText id="carRegNumber" value="#{vehicle.regNumber}"
								required="true" requiredMessage="#{msg.carregnumberValidation}"
								validatorMessage="#{msg.carregnumberFormatValidation }">
								<f:validator validatorId="RegNumberValidator" />
							</h:inputText>
						</h:panelGroup>

						<h:panelGroup>
							<h:message for="carRegNumber" style="color:red" />
						</h:panelGroup>



						<h:panelGroup>
							<h:outputLabel for="numWheels" value="#{msg.numWheels }"
								style="color:#48322d" />
						</h:panelGroup>

						<h:panelGroup>
							<h:inputText id="numWheels" value="#{vehicle.numWheels}"
								required="true" requiredMessage="#{msg.numwheelsValidation}"
								validatorMessage="#{msg.numwheelsFormatValidation }"
								converterMessage="#{msg.numWheelsNumberValidation }">
								<f:validateLongRange minimum="2" maximum="10" />
							</h:inputText>

						</h:panelGroup>

						<h:panelGroup>
							<h:message for="numWheels" style="color:red" />
						</h:panelGroup>
					</h:panelGrid>

					<h:panelGrid columns="2">
						<h:commandButton action="back" value="Back" />
						<h:commandButton action="next" value="Next" />
					</h:panelGrid>

				</h:form>
			</h:panelGrid>




			<%@include file="footer.jsp"%>
		</h:panelGrid>
	</f:view>
</body>