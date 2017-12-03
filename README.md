# minsure
Motor Insurance web application

This is the webapplication created for motor insurance company. The application is intended for online customers to provide the personal and vehicle details and get the quote.

Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

Prerequisites

You need to install the following softwares to build and run the application

JDK1.8
Maven3.3
Tomcat7.0
Webbrowsers(Chrome, Firefox, IE, Safari)
Github Client

Built With

Java1.8 - Programming language
JSF1.2 - The web framework used
Maven - Dependency Management
Log4J - Logging framework
Junit - Unit tests framework
Eclipse - Integrated Development environment
Tomcat - Webserver
Chrome &
Internet Explorer - Web browsers

Instructions to build and deploy the application

Install Jdk1.8
Install Maven3.3
Install Tomcat7.0
Checkout the project from Github
The required jar files are available in the libs directory of the project

Please execute the following mvn install command from libs directory to install the jar files to the local maven repositoy. This is because the some of the required jar files are not in valid format in the maven repository

mvn install:install-file -Dfile=jstl-1.2.jar -DgroupId=jstl -DartifactId=jstl -Dversion=1.2 -Dpackaging=jar

mvn install:install-file -Dfile=jsf-impl-1.2_15.jar -DgroupId=javax.faces -DartifactId=jsf-impl -Dversion=1.2_15 -Dpackaging=jar

mvn install:install-file -Dfile=jsf-api-1.2_15.jar -DgroupId=javax.faces -DartifactId=jsf-api -Dversion=1.2_15 -Dpackaging=jar


Execute the following maven command to execute the unit test and build the war file.

mvn clean install

Copy the war (minsure.war) file created in the target directory to tomcat_installation_location/webapps directory
Start the tomcat server with the port number 8080
Open the browser and type the URL "http://localhost:8080/minsure/" to access the application
Provide the customer details and vehicle details to get the quote price

Running the tests

All the unit tests are created in src/test/java folder in the project. By default, the unit tests are executed with the maven build

Author
SasiRegha


