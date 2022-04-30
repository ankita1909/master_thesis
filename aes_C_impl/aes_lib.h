#include <string.h>
#include <stdint.h>

struct aes_data{
uint8_t* state;
uint8_t RoundKey[176]; //Array storing round key
uint8_t* Key;
} ;

void keyExpansion(struct aes_data *self);
/*
void addRoundKey(struct aes_data *self, uint8_t no_round);
void subBytes(struct aes_data *self);
void shiftRows(struct aes_data *self);
void gen_cipher(struct aes_data *self);
*/
void AES128_ECB_encrypt(struct aes_data *self);

