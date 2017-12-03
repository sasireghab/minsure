<%-- 
	
	 View is used for header section
	
	 @author SasiRegha
	 @version 1.0
	 @since 01-12-2017
	
--%>
<h:panelGrid columns="2" bgcolor="#FFFFCC" width="100%"
	columnClasses="alignmentLeft">

	<h:panelGroup>
		<h:graphicImage value="images/home_auto.png" />
	</h:panelGroup>

	<h:panelGroup>
		<h:outputLabel for="header" value="Car Insurance Company"
			style="font-size: 500%;color:#cd353a" />
		<br />
		<h:panelGroup>
			<h:outputLabel for="headerText"
				value="Quick and Easy  car insurance..."
				style="font-size: 100%;color:#48322d;" />
		</h:panelGroup>
	</h:panelGroup>

</h:panelGrid>