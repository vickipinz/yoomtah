
my_mango_is_to_blow_up: m y  m a n g o  i

m: main.c
	gcc main.c -o m && ./m
y: main.rs
	rustc main.rs -o y && ./y
a: main.java
	java main.java
n: main.js
	node main.js
g: main.php
	php main.php
o: main.go
	go build -o o main.go && ./o
i: main.mew
	mewl main.mew
	
clean:
	rm -f y o m

.PHONY: clean  m y  m a n g o  i
