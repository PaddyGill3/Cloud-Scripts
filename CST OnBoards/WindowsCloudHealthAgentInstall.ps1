#Create Temp Directory
New-Item -ItemType Directory -Path C:\Temp

#Download CloudHealth Agent
Invoke-WebRequest -OutFile C:\Temp\CloudHealthAgent.exe https://s3.amazonaws.com/remote-collector/agent/windows/18/CloudHealthAgent.exe

#Install CloudHealth Agent
C:\Temp\CloudHealthAgent.exe /S /v"/l* install.log /qn CLOUDNAME=azure CHTAPIKEY=<API_Key>"