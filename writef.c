#include <unistd.h>
#include <sys/syscall.h>

int writef(char phrase[], int qt_chars){

  syscall(4, 1, phrase, qt_chars);
  return 0;

}
