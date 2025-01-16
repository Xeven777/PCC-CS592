#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int main()
{
    pid_t pid = fork(); // Create child process

    if (pid == 0)
    { // Child process
        printf("Child Process: PID = %d, PPID = %d\n", getpid(), getppid());
        exit(0);
    }
    else if (pid > 0)
    { // Parent process
        sleep(6);
        printf("Parent Process: PID = %d, PPID = %d\n", getpid(), getppid());
    }
    else
    {
        perror("Fork failed!");
    }

    return 0;
}
