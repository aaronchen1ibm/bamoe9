@echo off
REM Get the directory of the script
SET SCRIPT_DIR=%~dp0

REM Set the JBOSS_HOME environment variable using a relative path
SET JBOSS_HOME=%SCRIPT_DIR%jboss-eap-7.4

REM Set the JAVA_HOME environment variable using a relative path
SET JAVA_HOME=%SCRIPT_DIR%ibm-semeru-open-jdk_x64_windows_17.0.11_9_openj9-0.44.0\jdk-17.0.11+9

REM Navigate to the bin directory
CD /D "%JBOSS_HOME%\bin"

REM Start JBoss with the standalone-full-ha.xml configuration
standalone.bat --server-config=standalone.xml