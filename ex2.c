#include <unistd.h>
#include <sys/syscall.h>

int main(void) {
  syscall(4, 1, "Hello\n",6);
  return 0;
}
