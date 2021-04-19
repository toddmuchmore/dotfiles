# read the alias file
source ~/.bash.aliases

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export MAVEN_HOME=/opt/maven

export PATH=~/bin:$MAVEN_HOME/bin:$JAVA_HOME/bin:$PATH

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

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
