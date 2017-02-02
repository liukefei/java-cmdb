#!/bin/bash
#

# Compile and do UT
cd src
mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Pcoverage-per-test -Dmaven.test.failure.ignore=true

# org.onecmdb.applet.toolkit
echo " => Working on org.onecmdb.applet.toolkit ..."
cd org.onecmdb.applet.toolkit
mvn sonar:sonar

# org.onecmdb.core
echo " => Working on org.onecmdb.core ..."
cd ../org.onecmdb.core
mvn sonar:sonar

# org.onecmdb.nagios
echo " => Working on org.onecmdb.nagios ..."
cd ../org.onecmdb.nagios
mvn sonar:sonar

# org.onecmdb.rest.graph
echo " => Working on org.onecmdb.rest.graph ..."
cd ../org.onecmdb.rest.graph
mvn sonar:sonar

# org.onecmdb.ui.gwt.desktop
echo " => Working on org.onecmdb.ui.gwt.desktop ..."
cd ../org.onecmdb.ui.gwt.desktop
mvn sonar:sonar

# org.onecmdb.ui.gwt.itil
echo " => Working on org.onecmdb.ui.gwt.itil ..."
cd ../org.onecmdb.ui.gwt.itil
mvn sonar:sonar

# org.onecmdb.ui.gwt.modeller
echo " => Working on org.onecmdb.ui.gwt.modeller ..."
cd ../org.onecmdb.ui.gwt.modeller
mvn sonar:sonar

# org.onecmdb.ui.gwt.toolkit
echo " => Working on org.onecmdb.ui.gwt.toolkit ..."
cd ../org.onecmdb.ui.gwt.toolkit
mvn sonar:sonar

# org.onecmdb.utils
echo " => Working on org.onecmdb.utils ..."
cd ../org.onecmdb.utils
mvn sonar:sonar

echo "=== Analysis Completed Successfully ==="
