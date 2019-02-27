JAVA_HOME=/opt/java/latest /opt/java/latest/bin/jps | awk '/jboss-modules.jar/{print $1}' | xargs /opt/java/latest/bin/jstack -l  | less
