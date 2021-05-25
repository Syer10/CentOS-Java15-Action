#!/bin/sh -l
set -x
# Step: 1 Install rpmbuild
yum install -y rpm-build


mkdir -p /usr/java/openjdk
pushd /usr/java/openjdk
curl "https://download.java.net/java/GA/jdk15.0.2/0d1cfde4252546c6931946de8db48ee2/7/GPL/openjdk-15.0.2_linux-x64_bin.tar.gz" --output openjdk-15.0.2_linux-x64_bin.tar.gz
tar -xzvf openjdk-15.0.2_linux-x64_bin.tar.gz
java -version
popd
pwd
$1
