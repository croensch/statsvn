cd \statsvn\demos\mule
svn update
svn log -v --xml http://svn.codehaus.org/mule > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 15 -xdoc -concurrency-threshold 2000 -tags "^mule-1.0|^mule-1.1|^mule-1.1.1|^mule-1.2|^mule-1.3|^mule-1.3-rc1|^mule-1.3-rc2|^mule-1.3-rc4|^mule-1.3-rc5|^mule-1.3.1|^mule-1.3.2|^mule-1.3.3|^muleide-1.2.1|^muleide-1.3.0|^muleide-1.3.0-beta1" -verbose -output-dir /statsvn/site/src/xdocs/mule -title Mule -viewvc http://svn.mule.codehaus.org/browse/mule/trunk ./svn.log .
svn cleanup
