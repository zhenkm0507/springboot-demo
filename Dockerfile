FROM centos

MAINTAINER zhaoyang
  
ADD jdk1.8.0_201  jdk1.8.0_201
ADD target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENV JAVA_HOME=/jdk1.8.0_144
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar 
EXPOSE 8080 
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]
