long syscall(long number, ...);

void _start() {
  int input_size = 512;
  char buffer[512];
  input_size = syscall(0, 0, buffer, input_size);
  while (input_size > 0) {
    syscall(1, 1, buffer, input_size);
    input_size = syscall(0, 0, buffer, input_size);
  }
  syscall(60, 0);
}