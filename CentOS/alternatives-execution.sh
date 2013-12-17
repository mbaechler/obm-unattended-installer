#!/bin/bash

alternatives --install /usr/bin/java java /usr/java/latest/jre/bin/java 20000
alternatives --install /usr/bin/javaws javaws /usr/java/latest/jre/bin/javaws 20000
alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 20000
# Only works the second time, so is executed 3 times just to be sure
for i in {1..3};
  do alternatives --install /usr/lib/jvm/java java_sdk /usr/java/latest/ 20000;
done
# Only works the second time, so is executed 3 times 
for i in {1..3};
  do alternatives --install /usr/lib/jvm/jre jre /usr/java/latest/jre/ 20000;
done
