# Define paths to SonarQube and Jenkins
$sonarqubePath = "C:\sonarqube\bin\windows-x86-64\StartSonar.bat"
#$jenkinsPath = "D:\Softwares\jenkins.war"

# Start SonarQube
Start-Process -FilePath $sonarqubePath -NoNewWindow

# Start Jenkins
#Start-Process -FilePath "java" -ArgumentList "-jar", $jenkinsPath
