FROM ianturton/geoserver-2.16-jdk-8-zoomstack:latest

# Reduce memory footprint for tomcat (UWS):
ENV CATALINA_OPTS="-Xms4g -Xmx4g"

#ADD marlin-0.9.5.0-EA-Unsafe.jar /usr/local/tomcat/
ADD marlin-0.9.4.5-Unsafe.jar /usr/local/tomcat/

#ADD marlin-0.9.5.0-EA-Unsafe-sun-java2d.jar /usr/local/tomcat/
ADD marlin-0.9.4.5-Unsafe-sun-java2d.jar /usr/local/tomcat/

ENV MARLIN_JAR_PREFIX="/usr/local/tomcat/marlin-0.9.4.5-Unsafe"

ENV JAVA_OPTS="-Xbootclasspath/p:$MARLIN_JAR_PREFIX.jar -Xbootclasspath/p:$MARLIN_JAR_PREFIX-sun-java2d.jar -Dsun.java2d.renderer=org.marlin.pisces.DMarlinRenderingEngine -Dsun.java2d.renderer.log=true"

