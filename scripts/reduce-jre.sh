#!/bin/bash

rm jre/bin/jjs
rm jre/bin/keytool
rm jre/bin/orbd
rm jre/bin/policytool
rm jre/bin/rmid
rm jre/bin/rmiregistry
rm jre/bin/servertool
rm jre/bin/tnameserv

rm jre/lib/charsets.jar
rm jre/lib/ext/cldrdata.jar
rm jre/lib/ext/localedata.jar
rm jre/lib/ext/nashorn.jar

strip -S -x jre/lib/*.dylib
strip -S -x jre/lib/server/*.dylib