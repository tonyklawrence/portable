unzip jdk.zip
unzip jre.zip -d jdk-8u162-x64
unzip lib.zip -d jdk-8u162-x64

for file in `find . -name "*.pack"`
do
  jar=`echo $file | cut -d. -f1-2`.jar
  ./jdk-8u162-x64/bin/unpack200.exe $file $jar
  rm $file
done
