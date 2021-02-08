# read the alias file
source ~/.bash.aliases

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export MAVEN_HOME=/opt/maven

export PATH=~/bin:$MAVEN_HOME/bin:$JAVA_HOME/bin:$PATH

# set prompt
PS1="\[\e]2;\u@\H\w\a[\t \u@\h:\w] \n\# % "

# Set host name if not already set
if [ -z "$HOST" ] ; then
        export HOST=${HOSTNAME}
fi

# Save the carpel tunnels
psgrep()
{
        ps -aux | grep $1 | grep -v grep
}
