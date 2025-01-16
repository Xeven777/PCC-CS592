#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int main()
{
    pid_t pid = fork(); // Create child process

    if (pid == 0)
    { // Child process
        sleep(4);
        printf("Child Process: PID = %d, PPID = %d\n", getpid(), getppid());
    }
    else if (pid > 0)
    { // Parent process
        printf("Parent Process: PID = %d, PPID = %d\n", getpid(), getppid());
        exit(0);
    }
    else
    {
        perror("Fork failed!");
    }

    return 0;
}
