#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct AES {
  uint8_t (*state_t)[16];
  uint8_t round_key[176];
  const uint8_t (*key)[16];
} AES;

struct AES aes_new(uint8_t *buffer, const uint8_t *key);

void aes_encrypt(struct AES *ptr);
