extern "C" void init() {
  const char* str = "Hello World!";
  char* screen = (char*)0xB8000;

  while (*str != 0) {
    *screen++ = *str++;
    *screen++ = 15;
  }
}
