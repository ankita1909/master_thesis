#include <stdint.h>

/// Designed to have the exact same shape as the Rust version
typedef struct magic_adder_t {
  uint32_t amount;
} magic_adder_t;

typedef struct AES_t
{
    unsigned char state_t[16]; // state_t :&'a mut [u8;16],
    unsigned char round_key[176]; // round_key:[u8;176],
    unsigned char key[16]; // key: &'a [u8;16]
} AES_t;

/// Wraps MagicAdder::new
extern AES_t aes_new(unsigned char *buffer, unsigned char *key);

/// Wraps MagicAdder::process_value
extern void aes_encrypt(AES_t *self);
