
my_mango_is_to_blow_up: m a n g o
	rustc main.rs -o y && ./y

m: main.c
	gcc main.c -o m && ./m
a: main.java
	java main.java
n: main.js
	node main.js
g: main.php
	php main.php
o: main.go
	go build -o o main.go && ./o

	
clean:
	rm -f y o m

.PHONY: clean m a n g o
