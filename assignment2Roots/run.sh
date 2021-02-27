
#!/bin/bash

#Program: Quadratic
#Author: Johnson Tong

#Clear any previously compiled outputs
rm *.o
rm *.out

echo "Assemble quadratic.asm"
nasm -f elf64 -l quadratic.lis -o quadratic.o quadratic.asm

echo "compile second_degree.c using gcc compiler standard 2011"
gcc -c -Wall -m64 -no-pie -o second_degree.o second_degree.c -std=c11

echo "compile quad.cpp using the g++ compiler standard 2011"
g++ -c -Wall -no-pie -m64 -std=c++11 -o quad.o quad.cpp

echo "compile isFloat.cpp using the g++ compiler standard 2011"
g++ -c -Wall -no-pie -m64 -std=c++11 -o isFloat.o isFloat.cpp

echo "Link object files using the gcc Linker standard 2011"
g++ -m64 -no-pie -o finalQuadratic.out quadratic.o quad.o isFloat.o second_degree.o -std=c++11

echo "Run the Quadratic Program:"
./finalQuadratic.out

echo "Script file has terminated."
