#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
int counter = 0;
int main() {
for(int i = 0; i < 3; i++) {
pid_t pid = fork();
if(pid == 0) {
for(int j = 0; j < 5; j++) {
counter++;
printf("Child %d counter = %d\n", getpid(), counter);
sleep(1);
}
exit(0);
}
}
for(int i = 0; i < 3; i++) {
wait(NULL);
}
printf("Parent final counter = %d\n", counter);
return 0;
}
6…..
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
int main() {
int a = 10, b = 5;
pid_t pid;
pid = fork();
if(pid == 0) {
printf("Addition = %d\n", a + b);
exit(0);
} else {
wait(NULL);
}
pid = fork();
if(pid == 0) {
printf("Subtraction = %d\n", a - b);
exit(0);
} else {
wait(NULL);
}
pid = fork();
if(pid == 0) {
printf("Multiplication = %d\n", a * b);
exit(0);
} else {
wait(NULL);
}
return 0;
}
