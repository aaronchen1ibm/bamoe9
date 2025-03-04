

To use set your java and jboss_home path in startODM_9.0.0.1.bat
You can find the JDK here


Summary

This repository contains a simple jboss-eap-7.4.7 server that you can install in your own linux or windows environment with a simple script.
Prerequisites

The Jboss and JDK already included and every path is set as relative path unpon downloading this as zip and unzip.


Steps
1. Run the Script

Navigate to the directory where you want to install the Tomcat server and run the script install_tomcat_odm.sh.

./startODM9.0.0.1.sh or click on startODM9.0.0.1.bat


3. (Optional) Configure the Databases

The server is configured to use the sample h2 database with the sample projects available. The database uses the JRULES v9 schema and must be used with ODM v9.

If you wish to configure a different database you can find example configurations in the standalone.xml.

jboss-eap-7.4.7-9.0.0.1-odm\jboss-eap-7.4\standalone\configuration\standalone.xml



6. Access ODM with the Links Below

http://<hostname>:8080/decisioncenter

http://<hostname>:8080/res

DC ADMIN
username: rtsAdmin
password: rtsAdmin+0
RES ADMIN 
username: resAdmin
password: resAdmin+0

Super ADMIN:
username: odmAdmin
password: odmAdmin1!

C:\Users\AaronChen\Documents\jboss-eap-7.4.7-9.0.0.1-odm\jboss-eap-7.4\bin>java -jar "C:\Users\AaronChen\Documents\jboss-eap-7.4.7-9.0.0.1-odm\jboss-eap-7.4\jboss-modules.jar" -mp "C:\Users\AaronChen\Documents\jboss-eap-7.4.7-9.0.0.1-odm\jboss-eap-7.4\modules" org.jboss.as.domain-add-user
In the <JBOSS_HOME>/bin directory, open a command prompt and run the following add-user command:
./add-user[.sh|.bat] -a -u rtsAdmin -p rtsAdmin+0 -ro "rtsAdministrator"


The command line options are as follows:
-a : Add to the application realm.
-u : Username.
-p : Password. In JBoss, passwords must have at least one digit and one non-alphanumeric symbol.
-ro : Roles.
