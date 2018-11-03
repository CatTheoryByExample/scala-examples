SOURCES=$(wildcard src/*/scala/*/*.scala)

all: $(SOURCES)
	sbt compile

clean:
	sbt clean
	find . \( -name "*.log" -o -name "*~" -o -name "*.ind" -o -name "*.ilg" \) -exec rm -rf {} \;
	rm -rf src/scala/target
	rm -rf src/scala/.ensime*
	find src/scala -name target -type d -exec rm -rf {} \;
