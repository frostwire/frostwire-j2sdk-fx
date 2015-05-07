#!/bin/bash

cp rt.jar rt-original.jar
cp resources.jar resources-original.jar
ant -f rt-carver.xml
ant -f resources-carver.xml
rm rt-*
rm resources-*
rm -rf temp