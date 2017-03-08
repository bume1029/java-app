FROM busybox:latest

ADD ROOT.war ROOT.war
#jdbc Driver
ADD mysql-connector-java-5.1.31.jar mysql-connector-java-5.1.31.jar
ADD dirc dirc 

#Tomcat Conf
ADD context.xml context.xml
ADD server.xml.tmp server.xml.tmp

ADD mv.sh mv.sh
CMD "sh" "mv.sh"
