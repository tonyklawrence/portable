unzip jdk.zip
unzip bin.zip -d jdk-9.0.4_x86
unzip lib.zip -d jdk-9.0.4_x86
unzip modules.zip -d jdk-9.0.4_x64/lib
unzip jmods.zip -d jdk-9.0.4_x86/jmods

for file in `find . -name "*.pack"`
do
  jar=`echo $file | cut -d. -f1-2`.jar
  ./jdk-9.0.4_x64/bin/upack200.exe $file $jar
  rm $file
done
