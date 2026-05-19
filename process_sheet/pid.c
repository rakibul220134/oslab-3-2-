#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    pid_t pid = fork();
    if (pid == 0) {
        for (int i = 0; i < 5; i++, sleep(1)) 
            printf("[Child] PID: %d, PPID: %d\n", getpid(), getppid());
    } else {
        printf("[Parent] PID: %d, Child: %d\n", getpid(), pid);
        sleep(2);
    }
    return 0;
}
