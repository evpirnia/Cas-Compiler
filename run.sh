export CLASSPATH=".:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH"
java -Xmx500M -cp "/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH" org.antlr.v4.Tool MyLanguageV1Code.g4
javac MyLanguageV1Code*.java
java org.antlr.v4.gui.TestRig MyLanguageV1Code program sourcecode.txt > q2.asm
cp q2.asm asm/
cd asm
make &> trash.txt
./q2
rm trash.txt
