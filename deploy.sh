mvn clean -U install -DskipTests=true
f1=/opt/tomcat/webapps/ri*
for f in $f1; do
echo $f
if [[ -e $f ]]; then
rm -R $f
fi
done

f2=/home/adlaware/code/ride_tracker/target/ride_tracker.war
f3=/opt/tomcat/webapps/ride_tracker.war
if [[ -e $f2 ]]; then
echo $f2
mv $f2 $f3
fi