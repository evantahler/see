# include <stdio.h>
# include "help.c"

void print_help_message () {
  printf("%s", doc_help_txt);
}

int main(int argc, char** argv) {
  if (argc == 1) {
    print_help_message();
  } else {
    for (int i = 1; i < argc; ++i) {
      printf("%s ", argv[i]);
    }
    printf("\r\n");
  }

  return 0;
}
