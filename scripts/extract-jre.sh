#!/bin/bash

cp -r j2sdk-fx/jre jre-pack

cd jre-pack/lib
`/usr/libexec/java_home -v 1.8`/bin/pack200 --no-gzip --strip-debug --effort=9 rt.pack rt.jar
rm rt.jar

cd ext
`/usr/libexec/java_home -v 1.8`/bin/pack200 --no-gzip --strip-debug --effort=9 jfxrt.pack jfxrt.jar
rm jfxrt.jar

cd ../../../
tar cvf jre-pack.tar jre-pack
bzip2 -z -9 jre-pack.tar

rm -rf jre-pack