#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set JBOSS_HOME relative to the script directory
export JBOSS_HOME="$SCRIPT_DIR/jboss-eap-7.4"

# Set JAVA_HOME relative to the script directory
export JAVA_HOME="$SCRIPT_DIR/ibm-semeru-open-jdk_x64_windows_17.0.11_9_openj9-0.44.0/jdk-17.0.11+9"

# Navigate to the bin directory
cd "$JBOSS_HOME/bin" || exit

# Start JBoss with the standalone-full-ha.xml configuration
./standalone.sh --server-config=standalone.xml