#!/bin/bash
#

# Compile and do UT
cd src
mvn clean install

rm -rf /shared_dir/*

mkdir -p /shared_dir/ROOT
mkdir -p /shared_dir/onecmdb-modeller
mkdir -p /shared_dir/itil
mkdir -p /shared_dir/onecmdb-desktop

echo " => Copying war files to shared directory ..."

mv ROOT/target/ROOT.war /shared_dir/ROOT/
mv org.onecmdb.ui.gwt.modeller/target/onecmdb-modeller.war /shared_dir/onecmdb-modeller/
mv org.onecmdb.ui.gwt.itil/target/itil.war /shared_dir/itil/
mv org.onecmdb.ui.gwt.desktop/target/onecmdb-desktop.war /shared_dir/onecmdb-desktop/

echo "=== CMDB Project Compiled successfully ==="

cd /shared_dir/
rm -rf *.war

cd /shared_dir/ROOT
jar xf ROOT.war

cd /shared_dir/onecmdb-modeller
jar xf onecmdb-modeller.war

cd /shared_dir/itil
jar xf itil.war

cd /shared_dir/onecmdb-desktop
jar xf onecmdb-desktop.war

cd /shared_dir
ls

echo "=== CMDB Project uncompress successfully ==="
