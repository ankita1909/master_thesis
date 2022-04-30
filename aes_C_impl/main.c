/******************************************************************************
* File Name: main.c
*
* Description: This example demonstrates the UART transmit and receive
*              operation using HAL APIs
*
* Related Document: See Readme.md 
*
*******************************************************************************
* (c) 2019-2021, Cypress Semiconductor Corporation. All rights reserved.
*******************************************************************************
* This software, including source code, documentation and related materials
* ("Software"), is owned by Cypress Semiconductor Corporation or one of its
* subsidiaries ("Cypress") and is protected by and subject to worldwide patent
* protection (United States and foreign), United States copyright laws and
* international treaty provisions. Therefore, you may use this Software only
* as provided in the license agreement accompanying the software package from
* which you obtained this Software ("EULA").
*
* If no EULA applies, Cypress hereby grants you a personal, non-exclusive,
* non-transferable license to copy, modify, and compile the Software source
* code solely for use in connection with Cypress's integrated circuit products.
* Any reproduction, modification, translation, compilation, or representation
* of this Software except as specified above is prohibited without the express
* written permission of Cypress.
*
* Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress
* reserves the right to make changes to the Software without notice. Cypress
* does not assume any liability arising out of the application or use of the
* Software or any product or circuit described in the Software. Cypress does
* not authorize its products for use in any products where a malfunction or
* failure of the Cypress product may reasonably be expected to result in
* significant property damage, injury or death ("High Risk Product"). By
* including Cypress's product in a High Risk Product, the manufacturer of such
* system or application assumes all risk of such use and in doing so agrees to
* indemnify Cypress against all liability.
*******************************************************************************/

#include "cy_pdl.h"
#include "cyhal.h"
#include "cybsp.h"
#include "cy_retarget_io.h"
#include "cy_systick.h"
/*******************************************************************************
* Function Name: handle_error
********************************************************************************
* Summary:
* User defined error handling function.
*
* Parameters:
*  void
*
* Return:
*  void
*
*******************************************************************************/
void handle_error(void)
{
     /* Disable all interrupts. */
    __disable_irq();

    CY_ASSERT(0);
}



#include "aes_lib.h"


#ifndef MULTIPLY_AS_A_FUNCTION
  #define MULTIPLY_AS_A_FUNCTION 0
#endif

static void BlockCopy(uint8_t* output, uint8_t* input)
{
  uint8_t i;
  for (i=0;i<16;++i)
  {
    output[i] = input[i];
  }
}

void test_Aes()
{
	uint8_t key[] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c};
	uint8_t in[]  = {0xae,0x2d,0x8a,0x57,0x1e,0x03,0xac,0x9c,0x9e,0xb7,0x6f,0xac,0x45,0xaf,0x8e,0x51};
	uint8_t out[] = {0xf5, 0xd3, 0xd5, 0x85, 0x03, 0xb9, 0x69, 0x9d, 0xe7, 0x85, 0x89, 0x5a, 0x96, 0xfd, 0xba, 0xaf};
	uint8_t buffer[16];

	memcpy(buffer, in, 16);
	struct aes_data data1 = {.state = buffer,.RoundKey = {0}, .Key = key};
	uint32_t before = Cy_SysTick_GetValue();
	keyExpansion(&data1);
	uint32_t after = Cy_SysTick_GetValue();
	uint32_t diff = before - after;
	printf("%d", diff);
	//AES128_ECB_encrypt(in, key, buffer);
	//memset(0x080ff400,0xDE,1016);
	//uint32_t before = Cy_SysTick_GetValue();
	AES128_ECB_encrypt(&data1);
	//uint32_t after = Cy_SysTick_GetValue();
	//uint32_t diff = before - after;
	//printf("%d", diff);

	uint8_t key_2[] = {0x1b, 0xde, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c};
	uint8_t in_2[]  = {0x51, 0xae,0x2d,0x8a,0x57,0x1e,0x03,0xac,0x9c,0x9e,0xb7,0x6f,0xac,0x45,0xaf,0x8e};
	uint8_t out_2[] = {0xaf, 0xf5, 0xd3, 0xd5, 0x85, 0x03, 0xb9, 0x69, 0x9d, 0xe7, 0x85, 0x89, 0x5a, 0x96, 0xfd, 0xba};
	uint8_t buffer_2[16];

	memcpy(buffer_2, in_2, 16);
	struct aes_data data2 = {.state = buffer_2,.RoundKey = {0}, .Key = key_2};

	keyExpansion(&data2);

	uint32_t before_1 = Cy_SysTick_GetValue();
	AES128_ECB_encrypt(&data2);
	uint32_t after_1 = Cy_SysTick_GetValue();
	uint32_t diff_1 = before_1 - after_1;
	printf("%d", diff_1);

    printf("ECB encrypt: ");
}

inline void stack_init()
{

	memset(0x080ff400,0xDE,1016);


}

/*******************************************************************************
* Function Name: main
********************************************************************************
* Summary:
* This is the main function for CM4 CPU.
* Reads one byte from the serial terminal and echoes back the read byte.
*
* Parameters:
*  void
*
* Return:
*  int
*
*******************************************************************************/


int main(void)
{
    Cy_SysTick_Init(CY_SYSTICK_CLOCK_SOURCE_CLK_CPU,0xFFFFFFUL);
    Cy_SysTick_Enable();
    cybsp_init();
//	memset(0x080ff400,0xDE,1016);
    /*cy_retarget_io_init(CYBSP_DEBUG_UART_TX, CYBSP_DEBUG_UART_RX,
                                 CY_RETARGET_IO_BAUDRATE);*/
    test_Aes();

/*    uint32_t after = Cy_SysTick_GetValue();
    test_Aes();
    uint32_t var = Cy_SysTick_GetValue();
    uint32_t diff = after - var;
    printf("%d", diff);
   */

    printf("ECB encrypt: ");

}




