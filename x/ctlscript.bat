@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\ingres\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\ingres\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\mysql\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\mysql\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\postgresql\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\apache\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\apache\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\openoffice\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\resin\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\resin\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\jetty\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\jetty\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\subversion\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\lucene\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\lucene\scripts\ctl.bat START)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\third_application\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\third_application\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\third_application\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\lucene\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\subversion\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\subversion\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\jetty\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\jetty\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\resin\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\resin\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\zeust\OneDrive\Desktop\webodev\x\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\apache\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\apache\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\ingres\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\ingres\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\mysql\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\mysql\scripts\ctl.bat STOP)
if exist C:\Users\zeust\OneDrive\Desktop\webodev\x\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\zeust\OneDrive\Desktop\webodev\x\postgresql\scripts\ctl.bat STOP)

:end

