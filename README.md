Shell Scripting

This repository contains shell scripts which anyone can use and practice it as well.
Happy Learning 🎁🐱‍🏍!!

Scenario based Interview Question :

1. What is Zombie Process ?

- A zombie process, in the context of Unix-like operating systems, is a process that has completed its execution but still has an entry in the process table. It's a process that has not yet been fully cleaned up and removed from the system. Zombie processes typically occur during the process termination sequence.

Here's how the life cycle of a process typically works:

1. A new process is created.
2. The process executes its tasks.
3. Upon completion, the process exits, and its resources are deallocated.
4. The process's exit status and resource usage information are retained in the process table until the parent process collects this information using the `wait` system call.

A zombie process is created when the parent process hasn't yet collected the exit status and resource information of its terminated child process. This can happen for various reasons, such as:

- The parent process is too busy to handle its child's termination.
- The parent process does not properly wait for its child processes.
- The parent process has terminated without collecting its child's information.

Zombie processes are usually harmless on their own and don't consume system resources. However, if a large number of zombie processes accumulate, they can fill up the process table, potentially preventing the creation of new processes. It's generally a good practice to clean up zombie processes to ensure efficient system resource management.

To remove a zombie process, the parent process needs to collect the exit status and resource information of its child process using the `wait` system call or by allowing the child to terminate properly. If the parent process cannot be fixed or no longer exists, you may need to use tools like the `kill` command with the `SIGCHLD` signal to forcefully clean up the zombie processes, as mentioned in the previous response.