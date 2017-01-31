   1              		.syntax unified
   2              		.cpu cortex-m3
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.file	"main.c"
  15              		.text
  16              	.Ltext0:
  17              		.cfi_sections	.debug_frame
  18              		.section	.text.NVIC_SetPriority,"ax",%progbits
  19              		.align	2
  20              		.thumb
  21              		.thumb_func
  23              	NVIC_SetPriority:
  24              	.LFB20:
  25              		.file 1 "F:\\EE2024\\Lib_CMSISv1p30_LPC17xx\\inc/core_cm3.h"
   1:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**************************************************************************//**
   2:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @file     core_cm3.h
   3:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief    CMSIS Cortex-M3 Core Peripheral Access Layer Header File
   4:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @version  V1.30
   5:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @date     30. October 2009
   6:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
   7:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @note
   8:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Copyright (C) 2009 ARM Limited. All rights reserved.
   9:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
  10:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @par
  11:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
  12:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * processor based microcontrollers.  This file can be freely distributed 
  13:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * within development tools that are supporting such ARM based processors. 
  14:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
  15:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @par
  16:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  17:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  18:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  19:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
  20:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  21:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
  22:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  ******************************************************************************/
  23:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  24:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #ifndef __CM3_CORE_H__
  25:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CM3_CORE_H__
  26:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  27:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_core_LintCinfiguration CMSIS CM3 Core Lint Configuration
  28:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
  29:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * List of Lint messages which will be suppressed and not shown:
  30:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 10: \n
  31:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     register uint32_t __regBasePri         __asm("basepri"); \n
  32:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Error 10: Expecting ';'
  33:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  34:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 530: \n
  35:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     return(__regBasePri); \n
  36:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Warning 530: Symbol '__regBasePri' (line 264) not initialized
  37:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * . 
  38:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 550: \n
  39:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     __regBasePri = (basePri & 0x1ff); \n
  40:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Warning 550: Symbol '__regBasePri' (line 271) not accessed
  41:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  42:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 754: \n
  43:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     uint32_t RESERVED0[24]; \n
  44:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Info 754: local structure member '<some, not used in the HAL>' (line 109, file ./cm3_core.h)
  45:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  46:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 750: \n
  47:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     #define __CM3_CORE_H__ \n
  48:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Info 750: local macro '__CM3_CORE_H__' (line 43, file./cm3_core.h) not referenced
  49:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  50:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 528: \n
  51:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     static __INLINE void NVIC_DisableIRQ(uint32_t IRQn) \n
  52:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Warning 528: Symbol 'NVIC_DisableIRQ(unsigned int)' (line 419, file ./cm3_core.h) not refere
  53:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  54:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *   - Error 751: \n
  55:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     } InterruptType_Type; \n
  56:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *     Info 751: local typedef 'InterruptType_Type' (line 170, file ./cm3_core.h) not referenced
  57:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * .
  58:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Note:  To re-enable a Message, insert a space before 'lint' *
  59:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
  60:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
  61:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  62:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -save */
  63:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e10  */
  64:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e530 */
  65:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e550 */
  66:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e754 */
  67:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e750 */
  68:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e528 */
  69:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*lint -e751 */
  70:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  71:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  72:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_core_definitions CM3 Core Definitions
  73:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   This file defines all structures and symbols for CMSIS core:
  74:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     - CMSIS version number
  75:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     - Cortex-M core registers and bitfields
  76:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     - Cortex-M core peripheral base address
  77:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
  78:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
  79:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  80:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #ifdef __cplusplus
  81:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  extern "C" {
  82:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif 
  83:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  84:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CM3_CMSIS_VERSION_MAIN  (0x01)                                                       /*!<
  85:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CM3_CMSIS_VERSION_SUB   (0x30)                                                       /*!<
  86:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CM3_CMSIS_VERSION       ((__CM3_CMSIS_VERSION_MAIN << 16) | __CM3_CMSIS_VERSION_SUB) /*!<
  87:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  88:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CORTEX_M                (0x03)                                                       /*!<
  89:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  90:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #include <stdint.h>                           /* Include standard types */
  91:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  92:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if defined (__ICCARM__)
  93:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #include <intrinsics.h>                     /* IAR Intrinsics   */
  94:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
  95:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  96:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
  97:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #ifndef __NVIC_PRIO_BITS
  98:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __NVIC_PRIO_BITS    4               /*!< standard definition for NVIC Priority Bits */
  99:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 100:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 101:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 102:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 103:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 104:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 105:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * IO definitions
 106:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 107:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * define access restrictions to peripheral registers
 108:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 109:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 110:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #ifdef __cplusplus
 111:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define     __I     volatile                /*!< defines 'read only' permissions      */
 112:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #else
 113:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define     __I     volatile const          /*!< defines 'read only' permissions      */
 114:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 115:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define     __O     volatile                  /*!< defines 'write only' permissions     */
 116:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define     __IO    volatile                  /*!< defines 'read / write' permissions   */
 117:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 118:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 119:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 120:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*******************************************************************************
 121:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *                 Register Abstraction
 122:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  ******************************************************************************/
 123:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_core_register CMSIS CM3 Core Register
 124:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  @{
 125:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** */
 126:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 127:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 128:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_NVIC CMSIS CM3 NVIC
 129:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for Nested Vectored Interrupt Controller (NVIC)
 130:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 131:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 132:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 133:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 134:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ISER[8];                      /*!< Offset: 0x000  Interrupt Set Enable Register    
 135:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED0[24];                                   
 136:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ICER[8];                      /*!< Offset: 0x080  Interrupt Clear Enable Register  
 137:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RSERVED1[24];                                    
 138:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ISPR[8];                      /*!< Offset: 0x100  Interrupt Set Pending Register   
 139:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED2[24];                                   
 140:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ICPR[8];                      /*!< Offset: 0x180  Interrupt Clear Pending Register 
 141:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED3[24];                                   
 142:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t IABR[8];                      /*!< Offset: 0x200  Interrupt Active bit Register    
 143:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED4[56];                                   
 144:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint8_t  IP[240];                      /*!< Offset: 0x300  Interrupt Priority Register (8Bit
 145:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED5[644];                                  
 146:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __O  uint32_t STIR;                         /*!< Offset: 0xE00  Software Trigger Interrupt Regist
 147:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }  NVIC_Type;                                               
 148:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_NVIC */
 149:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 150:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 151:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_SCB CMSIS CM3 SCB
 152:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for System Control Block (SCB)
 153:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 154:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 155:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 156:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 157:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CPUID;                        /*!< Offset: 0x00  CPU ID Base Register              
 158:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ICSR;                         /*!< Offset: 0x04  Interrupt Control State Register  
 159:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t VTOR;                         /*!< Offset: 0x08  Vector Table Offset Register      
 160:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t AIRCR;                        /*!< Offset: 0x0C  Application Interrupt / Reset Cont
 161:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t SCR;                          /*!< Offset: 0x10  System Control Register           
 162:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t CCR;                          /*!< Offset: 0x14  Configuration Control Register    
 163:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint8_t  SHP[12];                      /*!< Offset: 0x18  System Handlers Priority Registers
 164:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t SHCSR;                        /*!< Offset: 0x24  System Handler Control and State R
 165:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t CFSR;                         /*!< Offset: 0x28  Configurable Fault Status Register
 166:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t HFSR;                         /*!< Offset: 0x2C  Hard Fault Status Register        
 167:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t DFSR;                         /*!< Offset: 0x30  Debug Fault Status Register       
 168:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t MMFAR;                        /*!< Offset: 0x34  Mem Manage Address Register       
 169:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t BFAR;                         /*!< Offset: 0x38  Bus Fault Address Register        
 170:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t AFSR;                         /*!< Offset: 0x3C  Auxiliary Fault Status Register   
 171:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PFR[2];                       /*!< Offset: 0x40  Processor Feature Register        
 172:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t DFR;                          /*!< Offset: 0x48  Debug Feature Register            
 173:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t ADR;                          /*!< Offset: 0x4C  Auxiliary Feature Register        
 174:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t MMFR[4];                      /*!< Offset: 0x50  Memory Model Feature Register     
 175:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t ISAR[5];                      /*!< Offset: 0x60  ISA Feature Register              
 176:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } SCB_Type;                                                
 177:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 178:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB CPUID Register Definitions */
 179:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 180:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFul << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 181:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 182:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 183:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_VARIANT_Msk              (0xFul << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 184:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 185:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 186:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFul << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 187:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 188:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 189:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CPUID_REVISION_Msk             (0xFul << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 190:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 191:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Interrupt Control State Register Definitions */
 192:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 193:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1ul << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 194:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 195:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 196:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSVSET_Msk             (1ul << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 197:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 198:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 199:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1ul << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 200:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 201:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 202:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSTSET_Msk             (1ul << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 203:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 204:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 205:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1ul << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 206:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 207:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 208:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1ul << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 209:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 210:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 211:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_ISRPENDING_Msk            (1ul << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 212:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 213:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 214:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFul << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 215:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 216:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_RETTOBASE_Pos             11                                             /*!< SCB 
 217:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_RETTOBASE_Msk             (1ul << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 218:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 219:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 220:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFul << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 221:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 222:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Interrupt Control State Register Definitions */
 223:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_VTOR_TBLBASE_Pos               29                                             /*!< SCB 
 224:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_VTOR_TBLBASE_Msk               (0x1FFul << SCB_VTOR_TBLBASE_Pos)              /*!< SCB 
 225:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 226:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_VTOR_TBLOFF_Pos                 7                                             /*!< SCB 
 227:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_VTOR_TBLOFF_Msk                (0x3FFFFFul << SCB_VTOR_TBLOFF_Pos)            /*!< SCB 
 228:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 229:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 230:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 231:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFul << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 232:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 233:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 234:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFul << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 235:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 236:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 237:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1ul << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 238:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 239:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_PRIGROUP_Pos              8                                             /*!< SCB 
 240:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7ul << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 241:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 242:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 243:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1ul << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 244:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 245:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 246:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1ul << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 247:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 248:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTRESET_Pos             0                                             /*!< SCB 
 249:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_AIRCR_VECTRESET_Msk            (1ul << SCB_AIRCR_VECTRESET_Pos)               /*!< SCB 
 250:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 251:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB System Control Register Definitions */
 252:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 253:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SEVONPEND_Msk              (1ul << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 254:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 255:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 256:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1ul << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 257:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 258:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 259:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1ul << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 260:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 261:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Configuration Control Register Definitions */
 262:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 263:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_STKALIGN_Msk               (1ul << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 264:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 265:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_BFHFNMIGN_Pos               8                                             /*!< SCB 
 266:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1ul << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 267:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 268:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_DIV_0_TRP_Pos               4                                             /*!< SCB 
 269:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1ul << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 270:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 271:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 272:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1ul << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 273:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 274:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_USERSETMPEND_Pos            1                                             /*!< SCB 
 275:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_USERSETMPEND_Msk           (1ul << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 276:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 277:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0                                             /*!< SCB 
 278:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1ul << SCB_CCR_NONBASETHRDENA_Pos)            /*!< SCB 
 279:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 280:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB System Handler Control and State Register Definitions */
 281:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18                                             /*!< SCB 
 282:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1ul << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 283:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 284:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17                                             /*!< SCB 
 285:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1ul << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 286:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 287:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16                                             /*!< SCB 
 288:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1ul << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 289:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 290:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 291:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1ul << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 292:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 293:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14                                             /*!< SCB 
 294:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1ul << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 295:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 296:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13                                             /*!< SCB 
 297:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1ul << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 298:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 299:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12                                             /*!< SCB 
 300:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1ul << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 301:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 302:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11                                             /*!< SCB 
 303:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1ul << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 304:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 305:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_PENDSVACT_Pos            10                                             /*!< SCB 
 306:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1ul << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 307:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 308:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MONITORACT_Pos            8                                             /*!< SCB 
 309:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MONITORACT_Msk           (1ul << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 310:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 311:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SVCALLACT_Pos             7                                             /*!< SCB 
 312:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1ul << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 313:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                                      
 314:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3                                             /*!< SCB 
 315:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1ul << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 316:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 317:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1                                             /*!< SCB 
 318:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1ul << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 319:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 320:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0                                             /*!< SCB 
 321:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1ul << SCB_SHCSR_MEMFAULTACT_Pos)             /*!< SCB 
 322:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 323:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Configurable Fault Status Registers Definitions */
 324:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_USGFAULTSR_Pos            16                                             /*!< SCB 
 325:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFul << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 326:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 327:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8                                             /*!< SCB 
 328:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFul << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 329:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 330:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0                                             /*!< SCB 
 331:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFul << SCB_CFSR_MEMFAULTSR_Pos)            /*!< SCB 
 332:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 333:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Hard Fault Status Registers Definitions */
 334:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_DEBUGEVT_Pos              31                                             /*!< SCB 
 335:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1ul << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 336:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 337:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_FORCED_Pos                30                                             /*!< SCB 
 338:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_FORCED_Msk                (1ul << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 339:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 340:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_VECTTBL_Pos                1                                             /*!< SCB 
 341:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_HFSR_VECTTBL_Msk               (1ul << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 342:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 343:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SCB Debug Fault Status Register Definitions */
 344:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 345:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_EXTERNAL_Msk              (1ul << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 346:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 347:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 348:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_VCATCH_Msk                (1ul << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 349:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 350:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 351:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_DWTTRAP_Msk               (1ul << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 352:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 353:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 354:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_BKPT_Msk                  (1ul << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 355:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 356:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 357:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_DFSR_HALTED_Msk                (1ul << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 358:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_SCB */
 359:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 360:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 361:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_SysTick CMSIS CM3 SysTick
 362:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for SysTick
 363:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 364:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 365:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 366:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 367:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t CTRL;                         /*!< Offset: 0x00  SysTick Control and Status Registe
 368:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t LOAD;                         /*!< Offset: 0x04  SysTick Reload Value Register     
 369:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t VAL;                          /*!< Offset: 0x08  SysTick Current Value Register    
 370:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CALIB;                        /*!< Offset: 0x0C  SysTick Calibration Register      
 371:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } SysTick_Type;
 372:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 373:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SysTick Control / Status Register Definitions */
 374:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 375:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1ul << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 376:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 377:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 378:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1ul << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 379:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 380:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 381:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_TICKINT_Msk           (1ul << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 382:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 383:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 384:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CTRL_ENABLE_Msk            (1ul << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 385:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 386:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SysTick Reload Register Definitions */
 387:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 388:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFul << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 389:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 390:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SysTick Current Register Definitions */
 391:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 392:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 393:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 394:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* SysTick Calibration Register Definitions */
 395:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 396:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_NOREF_Msk            (1ul << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 397:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 398:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 399:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_SKEW_Msk             (1ul << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 400:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 401:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 402:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFul << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 403:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_SysTick */
 404:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 405:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 406:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_ITM CMSIS CM3 ITM
 407:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for Instrumentation Trace Macrocell (ITM)
 408:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 409:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 410:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 411:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 412:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __O  union  
 413:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   {
 414:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     __O  uint8_t    u8;                       /*!< Offset:       ITM Stimulus Port 8-bit           
 415:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     __O  uint16_t   u16;                      /*!< Offset:       ITM Stimulus Port 16-bit          
 416:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     __O  uint32_t   u32;                      /*!< Offset:       ITM Stimulus Port 32-bit          
 417:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   }  PORT [32];                               /*!< Offset: 0x00  ITM Stimulus Port Registers       
 418:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED0[864];                                 
 419:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t TER;                          /*!< Offset:       ITM Trace Enable Register         
 420:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED1[15];                                  
 421:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t TPR;                          /*!< Offset:       ITM Trace Privilege Register      
 422:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED2[15];                                  
 423:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t TCR;                          /*!< Offset:       ITM Trace Control Register        
 424:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED3[29];                                  
 425:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t IWR;                          /*!< Offset:       ITM Integration Write Register    
 426:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t IRR;                          /*!< Offset:       ITM Integration Read Register     
 427:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t IMCR;                         /*!< Offset:       ITM Integration Mode Control Regis
 428:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED4[43];                                  
 429:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t LAR;                          /*!< Offset:       ITM Lock Access Register          
 430:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t LSR;                          /*!< Offset:       ITM Lock Status Register          
 431:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED5[6];                                   
 432:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID4;                         /*!< Offset:       ITM Peripheral Identification Regi
 433:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID5;                         /*!< Offset:       ITM Peripheral Identification Regi
 434:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID6;                         /*!< Offset:       ITM Peripheral Identification Regi
 435:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID7;                         /*!< Offset:       ITM Peripheral Identification Regi
 436:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID0;                         /*!< Offset:       ITM Peripheral Identification Regi
 437:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID1;                         /*!< Offset:       ITM Peripheral Identification Regi
 438:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID2;                         /*!< Offset:       ITM Peripheral Identification Regi
 439:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t PID3;                         /*!< Offset:       ITM Peripheral Identification Regi
 440:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CID0;                         /*!< Offset:       ITM Component  Identification Regi
 441:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CID1;                         /*!< Offset:       ITM Component  Identification Regi
 442:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CID2;                         /*!< Offset:       ITM Component  Identification Regi
 443:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t CID3;                         /*!< Offset:       ITM Component  Identification Regi
 444:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } ITM_Type;                                                
 445:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 446:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Trace Privilege Register Definitions */
 447:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TPR_PRIVMASK_Pos                0                                             /*!< ITM 
 448:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFul << ITM_TPR_PRIVMASK_Pos)                /*!< ITM 
 449:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 450:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Trace Control Register Definitions */
 451:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_BUSY_Pos                   23                                             /*!< ITM 
 452:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_BUSY_Msk                   (1ul << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 453:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 454:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_ATBID_Pos                  16                                             /*!< ITM 
 455:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_ATBID_Msk                  (0x7Ful << ITM_TCR_ATBID_Pos)                  /*!< ITM 
 456:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 457:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_TSPrescale_Pos              8                                             /*!< ITM 
 458:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_TSPrescale_Msk             (3ul << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 459:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 460:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_SWOENA_Pos                  4                                             /*!< ITM 
 461:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_SWOENA_Msk                 (1ul << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 462:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 463:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_DWTENA_Pos                  3                                             /*!< ITM 
 464:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_DWTENA_Msk                 (1ul << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 465:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 466:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_SYNCENA_Pos                 2                                             /*!< ITM 
 467:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_SYNCENA_Msk                (1ul << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 468:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 469:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_TSENA_Pos                   1                                             /*!< ITM 
 470:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_TSENA_Msk                  (1ul << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 471:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 472:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_ITMENA_Pos                  0                                             /*!< ITM 
 473:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_TCR_ITMENA_Msk                 (1ul << ITM_TCR_ITMENA_Pos)                    /*!< ITM 
 474:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 475:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Integration Write Register Definitions */
 476:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IWR_ATVALIDM_Pos                0                                             /*!< ITM 
 477:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IWR_ATVALIDM_Msk               (1ul << ITM_IWR_ATVALIDM_Pos)                  /*!< ITM 
 478:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 479:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Integration Read Register Definitions */
 480:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IRR_ATREADYM_Pos                0                                             /*!< ITM 
 481:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IRR_ATREADYM_Msk               (1ul << ITM_IRR_ATREADYM_Pos)                  /*!< ITM 
 482:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 483:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Integration Mode Control Register Definitions */
 484:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IMCR_INTEGRATION_Pos            0                                             /*!< ITM 
 485:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_IMCR_INTEGRATION_Msk           (1ul << ITM_IMCR_INTEGRATION_Pos)              /*!< ITM 
 486:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 487:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ITM Lock Status Register Definitions */
 488:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_ByteAcc_Pos                 2                                             /*!< ITM 
 489:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_ByteAcc_Msk                (1ul << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 490:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 491:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_Access_Pos                  1                                             /*!< ITM 
 492:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_Access_Msk                 (1ul << ITM_LSR_Access_Pos)                    /*!< ITM 
 493:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 494:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_Present_Pos                 0                                             /*!< ITM 
 495:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_LSR_Present_Msk                (1ul << ITM_LSR_Present_Pos)                   /*!< ITM 
 496:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_ITM */
 497:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 498:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 499:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_InterruptType CMSIS CM3 Interrupt Type
 500:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for Interrupt Type
 501:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 502:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 503:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 504:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 505:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED0;
 506:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t ICTR;                         /*!< Offset: 0x04  Interrupt Control Type Register */
 507:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if ((defined __CM3_REV) && (__CM3_REV >= 0x200))
 508:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t ACTLR;                        /*!< Offset: 0x08  Auxiliary Control Register      */
 509:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #else
 510:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****        uint32_t RESERVED1;
 511:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 512:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } InterruptType_Type;
 513:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 514:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Interrupt Controller Type Register Definitions */
 515:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ICTR_INTLINESNUM_Pos  0                                             /*!< Inte
 516:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ICTR_INTLINESNUM_Msk (0x1Ful << InterruptType_ICTR_INTLINESNUM_Pos) /*!< Inte
 517:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 518:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Auxiliary Control Register Definitions */
 519:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISFOLD_Pos     2                                             /*!< Inte
 520:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISFOLD_Msk    (1ul << InterruptType_ACTLR_DISFOLD_Pos)       /*!< Inte
 521:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 522:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISDEFWBUF_Pos  1                                             /*!< Inte
 523:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISDEFWBUF_Msk (1ul << InterruptType_ACTLR_DISDEFWBUF_Pos)    /*!< Inte
 524:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 525:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISMCYCINT_Pos  0                                             /*!< Inte
 526:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType_ACTLR_DISMCYCINT_Msk (1ul << InterruptType_ACTLR_DISMCYCINT_Pos)    /*!< Inte
 527:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_InterruptType */
 528:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 529:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 530:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1)
 531:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_MPU CMSIS CM3 MPU
 532:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for Memory Protection Unit (MPU)
 533:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 534:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 535:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 536:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 537:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __I  uint32_t TYPE;                         /*!< Offset: 0x00  MPU Type Register                 
 538:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t CTRL;                         /*!< Offset: 0x04  MPU Control Register              
 539:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RNR;                          /*!< Offset: 0x08  MPU Region RNRber Register        
 540:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RBAR;                         /*!< Offset: 0x0C  MPU Region Base Address Register  
 541:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RASR;                         /*!< Offset: 0x10  MPU Region Attribute and Size Regi
 542:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RBAR_A1;                      /*!< Offset: 0x14  MPU Alias 1 Region Base Address Re
 543:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RASR_A1;                      /*!< Offset: 0x18  MPU Alias 1 Region Attribute and S
 544:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RBAR_A2;                      /*!< Offset: 0x1C  MPU Alias 2 Region Base Address Re
 545:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RASR_A2;                      /*!< Offset: 0x20  MPU Alias 2 Region Attribute and S
 546:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RBAR_A3;                      /*!< Offset: 0x24  MPU Alias 3 Region Base Address Re
 547:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t RASR_A3;                      /*!< Offset: 0x28  MPU Alias 3 Region Attribute and S
 548:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } MPU_Type;                                                
 549:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 550:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* MPU Type Register */
 551:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_IREGION_Pos               16                                             /*!< MPU 
 552:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_IREGION_Msk               (0xFFul << MPU_TYPE_IREGION_Pos)               /*!< MPU 
 553:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 554:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_DREGION_Pos                8                                             /*!< MPU 
 555:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_DREGION_Msk               (0xFFul << MPU_TYPE_DREGION_Pos)               /*!< MPU 
 556:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 557:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_SEPARATE_Pos               0                                             /*!< MPU 
 558:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_TYPE_SEPARATE_Msk              (1ul << MPU_TYPE_SEPARATE_Pos)                 /*!< MPU 
 559:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 560:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* MPU Control Register */
 561:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2                                             /*!< MPU 
 562:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1ul << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
 563:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 564:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_HFNMIENA_Pos               1                                             /*!< MPU 
 565:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_HFNMIENA_Msk              (1ul << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
 566:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 567:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_ENABLE_Pos                 0                                             /*!< MPU 
 568:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_CTRL_ENABLE_Msk                (1ul << MPU_CTRL_ENABLE_Pos)                   /*!< MPU 
 569:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 570:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* MPU Region Number Register */
 571:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RNR_REGION_Pos                  0                                             /*!< MPU 
 572:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RNR_REGION_Msk                 (0xFFul << MPU_RNR_REGION_Pos)                 /*!< MPU 
 573:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 574:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* MPU Region Base Address Register */
 575:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_ADDR_Pos                   5                                             /*!< MPU 
 576:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFul << MPU_RBAR_ADDR_Pos)             /*!< MPU 
 577:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 578:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_VALID_Pos                  4                                             /*!< MPU 
 579:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_VALID_Msk                 (1ul << MPU_RBAR_VALID_Pos)                    /*!< MPU 
 580:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 581:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_REGION_Pos                 0                                             /*!< MPU 
 582:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RBAR_REGION_Msk                (0xFul << MPU_RBAR_REGION_Pos)                 /*!< MPU 
 583:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 584:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* MPU Region Attribute and Size Register */
 585:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_XN_Pos                    28                                             /*!< MPU 
 586:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_XN_Msk                    (1ul << MPU_RASR_XN_Pos)                       /*!< MPU 
 587:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 588:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_AP_Pos                    24                                             /*!< MPU 
 589:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_AP_Msk                    (7ul << MPU_RASR_AP_Pos)                       /*!< MPU 
 590:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 591:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_TEX_Pos                   19                                             /*!< MPU 
 592:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_TEX_Msk                   (7ul << MPU_RASR_TEX_Pos)                      /*!< MPU 
 593:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 594:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_S_Pos                     18                                             /*!< MPU 
 595:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_S_Msk                     (1ul << MPU_RASR_S_Pos)                        /*!< MPU 
 596:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 597:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_C_Pos                     17                                             /*!< MPU 
 598:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_C_Msk                     (1ul << MPU_RASR_C_Pos)                        /*!< MPU 
 599:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 600:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_B_Pos                     16                                             /*!< MPU 
 601:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_B_Msk                     (1ul << MPU_RASR_B_Pos)                        /*!< MPU 
 602:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 603:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_SRD_Pos                    8                                             /*!< MPU 
 604:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_SRD_Msk                   (0xFFul << MPU_RASR_SRD_Pos)                   /*!< MPU 
 605:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 606:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_SIZE_Pos                   1                                             /*!< MPU 
 607:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_SIZE_Msk                  (0x1Ful << MPU_RASR_SIZE_Pos)                  /*!< MPU 
 608:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 609:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_ENA_Pos                     0                                            /*!< MPU 
 610:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define MPU_RASR_ENA_Msk                    (0x1Ful << MPU_RASR_ENA_Pos)                  /*!< MPU 
 611:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 612:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_MPU */
 613:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 614:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 615:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 616:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_CoreDebug CMSIS CM3 Core Debug
 617:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   memory mapped structure for Core Debug Register
 618:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   @{
 619:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 620:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** typedef struct
 621:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 622:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t DHCSR;                        /*!< Offset: 0x00  Debug Halting Control and Status R
 623:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __O  uint32_t DCRSR;                        /*!< Offset: 0x04  Debug Core Register Selector Regis
 624:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t DCRDR;                        /*!< Offset: 0x08  Debug Core Register Data Register 
 625:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __IO uint32_t DEMCR;                        /*!< Offset: 0x0C  Debug Exception and Monitor Contro
 626:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** } CoreDebug_Type;
 627:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 628:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Debug Halting Control and Status Register */
 629:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
 630:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFul << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
 631:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 632:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
 633:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1ul << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
 634:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 635:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
 636:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1ul << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
 637:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 638:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
 639:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1ul << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
 640:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 641:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
 642:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1ul << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
 643:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 644:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
 645:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1ul << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
 646:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 647:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
 648:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1ul << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
 649:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 650:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5                                             /*!< Core
 651:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1ul << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
 652:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 653:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
 654:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1ul << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
 655:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 656:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
 657:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1ul << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
 658:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 659:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
 660:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1ul << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
 661:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 662:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
 663:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1ul << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
 664:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 665:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Debug Core Register Selector Register */
 666:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
 667:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1ul << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
 668:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 669:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
 670:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1Ful << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
 671:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 672:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Debug Exception and Monitor Control Register */
 673:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24                                             /*!< Core
 674:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1ul << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
 675:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 676:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19                                             /*!< Core
 677:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1ul << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
 678:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 679:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18                                             /*!< Core
 680:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1ul << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
 681:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 682:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17                                             /*!< Core
 683:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1ul << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
 684:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 685:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16                                             /*!< Core
 686:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1ul << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
 687:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 688:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
 689:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1ul << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
 690:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 691:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9                                             /*!< Core
 692:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1ul << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
 693:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 694:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8                                             /*!< Core
 695:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1ul << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
 696:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 697:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7                                             /*!< Core
 698:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1ul << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
 699:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 700:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6                                             /*!< Core
 701:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1ul << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
 702:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 703:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5                                             /*!< Core
 704:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1ul << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
 705:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 706:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4                                             /*!< Core
 707:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1ul << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
 708:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 709:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
 710:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1ul << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
 711:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_CoreDebug */
 712:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 713:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 714:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* Memory mapping of Cortex-M3 Hardware */
 715:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCS_BASE            (0xE000E000)                              /*!< System Control Space Bas
 716:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM_BASE            (0xE0000000)                              /*!< ITM Base Address        
 717:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug_BASE      (0xE000EDF0)                              /*!< Core Debug Base Address 
 718:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick_BASE        (SCS_BASE +  0x0010)                      /*!< SysTick Base Address    
 719:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define NVIC_BASE           (SCS_BASE +  0x0100)                      /*!< NVIC Base Address       
 720:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB_BASE            (SCS_BASE +  0x0D00)                      /*!< System Control Block Bas
 721:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 722:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define InterruptType       ((InterruptType_Type *) SCS_BASE)         /*!< Interrupt Type Register 
 723:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SCB                 ((SCB_Type *)           SCB_BASE)         /*!< SCB configuration struct
 724:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define SysTick             ((SysTick_Type *)       SysTick_BASE)     /*!< SysTick configuration st
 725:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define NVIC                ((NVIC_Type *)          NVIC_BASE)        /*!< NVIC configuration struc
 726:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define ITM                 ((ITM_Type *)           ITM_BASE)         /*!< ITM configuration struct
 727:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
 728:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 729:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1)
 730:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90)                      /*!< Memory Protection Unit  
 731:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define MPU               ((MPU_Type*)            MPU_BASE)         /*!< Memory Protection Unit  
 732:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 733:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 734:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@}*/ /* end of group CMSIS_CM3_core_register */
 735:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 736:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 737:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*******************************************************************************
 738:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *                Hardware Abstraction Layer
 739:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  ******************************************************************************/
 740:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 741:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if defined ( __CC_ARM   )
 742:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
 743:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
 744:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 745:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif defined ( __ICCARM__ )
 746:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __ASM           __asm                                       /*!< asm keyword for IAR Comp
 747:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __INLINE        inline                                      /*!< inline keyword for IAR C
 748:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 749:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif defined   (  __GNUC__  )
 750:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
 751:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
 752:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 753:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif defined   (  __TASKING__  )
 754:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 755:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 756:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 757:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
 758:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 759:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 760:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ###################  Compiler specific Intrinsics  ########################### */
 761:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 762:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if defined ( __CC_ARM   ) /*------------------RealView Compiler -----------------*/
 763:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ARM armcc specific functions */
 764:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 765:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __enable_fault_irq                __enable_fiq
 766:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __disable_fault_irq               __disable_fiq
 767:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 768:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __NOP                             __nop
 769:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __WFI                             __wfi
 770:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __WFE                             __wfe
 771:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __SEV                             __sev
 772:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __ISB()                           __isb(0)
 773:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __DSB()                           __dsb(0)
 774:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __DMB()                           __dmb(0)
 775:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __REV                             __rev
 776:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __RBIT                            __rbit
 777:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __LDREXB(ptr)                     ((unsigned char ) __ldrex(ptr))
 778:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __LDREXH(ptr)                     ((unsigned short) __ldrex(ptr))
 779:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __LDREXW(ptr)                     ((unsigned int  ) __ldrex(ptr))
 780:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __STREXB(value, ptr)              __strex(value, ptr)
 781:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 782:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 783:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 784:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 785:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic unsigned long long __ldrexd(volatile void *ptr) */
 786:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic int __strexd(unsigned long long val, volatile void *ptr) */
 787:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __enable_irq();     */
 788:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __disable_irq();    */
 789:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 790:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 791:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 792:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Process Stack Pointer
 793:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 794:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return ProcessStackPointer
 795:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 796:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the actual process stack pointer
 797:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 798:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_PSP(void);
 799:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 800:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 801:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Process Stack Pointer
 802:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 803:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfProcStack  Process Stack Pointer
 804:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 805:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value ProcessStackPointer to the MSP 
 806:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (process stack pointer) Cortex processor register
 807:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 808:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_PSP(uint32_t topOfProcStack);
 809:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 810:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 811:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Main Stack Pointer
 812:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 813:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return Main Stack Pointer
 814:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 815:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the current value of the MSP (main stack pointer)
 816:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Cortex processor register
 817:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 818:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_MSP(void);
 819:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 820:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 821:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Main Stack Pointer
 822:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 823:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfMainStack  Main Stack Pointer
 824:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 825:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value mainStackPointer to the MSP 
 826:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (main stack pointer) Cortex processor register
 827:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 828:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_MSP(uint32_t topOfMainStack);
 829:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 830:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 831:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in unsigned short value
 832:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 833:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param   value  value to reverse
 834:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return         reversed value
 835:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 836:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in unsigned short value
 837:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 838:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __REV16(uint16_t value);
 839:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 840:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 841:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in signed short value with sign extension to integer
 842:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 843:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param   value  value to reverse
 844:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return         reversed value
 845:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 846:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in signed short value with sign extension to integer
 847:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 848:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern int32_t __REVSH(int16_t value);
 849:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 850:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 851:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if (__ARMCC_VERSION < 400000)
 852:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 853:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 854:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Remove the exclusive lock created by ldrex
 855:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 856:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Removes the exclusive lock which is created by ldrex.
 857:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 858:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __CLREX(void);
 859:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 860:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 861:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Base Priority value
 862:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 863:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return BasePriority
 864:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 865:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the base priority register
 866:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 867:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_BASEPRI(void);
 868:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 869:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 870:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Base Priority value
 871:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 872:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  basePri  BasePriority
 873:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 874:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the base priority register
 875:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 876:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_BASEPRI(uint32_t basePri);
 877:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 878:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 879:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Priority Mask value
 880:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 881:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return PriMask
 882:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 883:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return state of the priority mask bit from the priority mask register
 884:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 885:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_PRIMASK(void);
 886:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 887:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 888:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Priority Mask value
 889:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 890:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param   priMask  PriMask
 891:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 892:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the priority mask bit in the priority mask register
 893:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 894:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_PRIMASK(uint32_t priMask);
 895:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 896:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 897:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Fault Mask value
 898:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 899:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return FaultMask
 900:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 901:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the fault mask register
 902:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 903:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_FAULTMASK(void);
 904:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 905:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 906:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Fault Mask value
 907:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 908:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  faultMask faultMask value
 909:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 910:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the fault mask register
 911:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 912:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_FAULTMASK(uint32_t faultMask);
 913:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 914:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 915:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Control Register value
 916:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
 917:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return Control value
 918:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 919:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the control register
 920:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 921:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_CONTROL(void);
 922:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 923:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 924:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Control Register value
 925:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 926:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  control  Control value
 927:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 928:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the control register
 929:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 930:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_CONTROL(uint32_t control);
 931:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 932:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #else  /* (__ARMCC_VERSION >= 400000)  */
 933:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 934:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 935:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Remove the exclusive lock created by ldrex
 936:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 937:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Removes the exclusive lock which is created by ldrex.
 938:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 939:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __CLREX                           __clrex
 940:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 941:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 942:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Base Priority value
 943:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 944:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return BasePriority
 945:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 946:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the base priority register
 947:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 948:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t  __get_BASEPRI(void)
 949:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 950:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regBasePri         __ASM("basepri");
 951:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return(__regBasePri);
 952:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
 953:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 954:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 955:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Base Priority value
 956:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 957:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  basePri  BasePriority
 958:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 959:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the base priority register
 960:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 961:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __set_BASEPRI(uint32_t basePri)
 962:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 963:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regBasePri         __ASM("basepri");
 964:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __regBasePri = (basePri & 0xff);
 965:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
 966:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 967:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 968:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Priority Mask value
 969:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 970:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return PriMask
 971:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 972:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return state of the priority mask bit from the priority mask register
 973:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 974:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t __get_PRIMASK(void)
 975:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 976:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regPriMask         __ASM("primask");
 977:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return(__regPriMask);
 978:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
 979:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 980:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 981:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Priority Mask value
 982:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 983:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  priMask  PriMask
 984:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 985:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the priority mask bit in the priority mask register
 986:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
 987:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __set_PRIMASK(uint32_t priMask)
 988:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
 989:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regPriMask         __ASM("primask");
 990:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __regPriMask = (priMask);
 991:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
 992:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
 993:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
 994:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Fault Mask value
 995:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 996:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return FaultMask
 997:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
 998:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the fault mask register
 999:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1000:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t __get_FAULTMASK(void)
1001:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1002:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
1003:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return(__regFaultMask);
1004:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1005:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1006:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1007:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Fault Mask value
1008:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1009:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  faultMask  faultMask value
1010:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1011:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the fault mask register
1012:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1013:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __set_FAULTMASK(uint32_t faultMask)
1014:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1015:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
1016:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __regFaultMask = (faultMask & 1);
1017:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1018:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1019:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1020:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Control Register value
1021:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
1022:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return Control value
1023:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1024:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the control register
1025:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1026:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t __get_CONTROL(void)
1027:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1028:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regControl         __ASM("control");
1029:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return(__regControl);
1030:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1031:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1032:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1033:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Control Register value
1034:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1035:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  control  Control value
1036:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1037:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the control register
1038:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1039:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __set_CONTROL(uint32_t control)
1040:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1041:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   register uint32_t __regControl         __ASM("control");
1042:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   __regControl = control;
1043:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1044:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1045:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif /* __ARMCC_VERSION  */ 
1046:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1047:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1048:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1049:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif (defined (__ICCARM__)) /*------------------ ICC Compiler -------------------*/
1050:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* IAR iccarm specific functions */
1051:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1052:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __enable_irq                              __enable_interrupt        /*!< global Interrupt e
1053:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __disable_irq                             __disable_interrupt       /*!< global Interrupt d
1054:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1055:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __enable_fault_irq()         { __ASM ("cpsie f"); }
1056:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __disable_fault_irq()        { __ASM ("cpsid f"); }
1057:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1058:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #define __NOP                                     __no_operation            /*!< no operation intri
1059:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE  void __WFI()                     { __ASM ("wfi"); }
1060:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE  void __WFE()                     { __ASM ("wfe"); }
1061:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE  void __SEV()                     { __ASM ("sev"); }
1062:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE  void __CLREX()                   { __ASM ("clrex"); }
1063:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1064:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __ISB(void)                                     */
1065:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __DSB(void)                                     */
1066:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __DMB(void)                                     */
1067:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __set_PRIMASK();                                */
1068:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __get_PRIMASK();                                */
1069:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __set_FAULTMASK();                              */
1070:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic void __get_FAULTMASK();                              */
1071:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic uint32_t __REV(uint32_t value);                      */
1072:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic uint32_t __REVSH(uint32_t value);                    */
1073:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic unsigned long __STREX(unsigned long, unsigned long); */
1074:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* intrinsic unsigned long __LDREX(unsigned long *);              */
1075:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1076:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1077:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1078:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Process Stack Pointer
1079:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1080:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return ProcessStackPointer
1081:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1082:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the actual process stack pointer
1083:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1084:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_PSP(void);
1085:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1086:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1087:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Process Stack Pointer
1088:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1089:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfProcStack  Process Stack Pointer
1090:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1091:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value ProcessStackPointer to the MSP 
1092:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (process stack pointer) Cortex processor register
1093:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1094:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_PSP(uint32_t topOfProcStack);
1095:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1096:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1097:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Main Stack Pointer
1098:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1099:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return Main Stack Pointer
1100:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1101:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the current value of the MSP (main stack pointer)
1102:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Cortex processor register
1103:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1104:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_MSP(void);
1105:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1106:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1107:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Main Stack Pointer
1108:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1109:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfMainStack  Main Stack Pointer
1110:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1111:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value mainStackPointer to the MSP 
1112:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (main stack pointer) Cortex processor register
1113:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1114:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_MSP(uint32_t topOfMainStack);
1115:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1116:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1117:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in unsigned short value
1118:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1119:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1120:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1121:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1122:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in unsigned short value
1123:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1124:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __REV16(uint16_t value);
1125:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1126:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1127:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse bit order of value
1128:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1129:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1130:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1131:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1132:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse bit order of value
1133:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1134:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __RBIT(uint32_t value);
1135:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1136:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1137:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (8 bit)
1138:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1139:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1140:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1141:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1142:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 8 bit values)
1143:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1144:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint8_t __LDREXB(uint8_t *addr);
1145:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1146:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1147:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (16 bit)
1148:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1149:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1150:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1151:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1152:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 16 bit values
1153:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1154:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint16_t __LDREXH(uint16_t *addr);
1155:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1156:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1157:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (32 bit)
1158:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1159:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1160:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1161:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1162:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 32 bit values
1163:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1164:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __LDREXW(uint32_t *addr);
1165:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1166:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1167:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (8 bit)
1168:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1169:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1170:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1171:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1172:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1173:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 8 bit values
1174:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1175:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXB(uint8_t value, uint8_t *addr);
1176:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1177:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1178:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (16 bit)
1179:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1180:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1181:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1182:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1183:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1184:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 16 bit values
1185:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1186:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXH(uint16_t value, uint16_t *addr);
1187:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1188:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1189:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (32 bit)
1190:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1191:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1192:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1193:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1194:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1195:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 32 bit values
1196:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1197:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXW(uint32_t value, uint32_t *addr);
1198:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1199:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1200:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1201:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif (defined (__GNUC__)) /*------------------ GNU Compiler ---------------------*/
1202:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* GNU gcc specific functions */
1203:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1204:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __enable_irq()               { __ASM volatile ("cpsie i"); }
1205:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __disable_irq()              { __ASM volatile ("cpsid i"); }
1206:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1207:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __enable_fault_irq()         { __ASM volatile ("cpsie f"); }
1208:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __disable_fault_irq()        { __ASM volatile ("cpsid f"); }
1209:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1210:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __NOP()                      { __ASM volatile ("nop"); }
1211:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __WFI()                      { __ASM volatile ("wfi"); }
1212:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __WFE()                      { __ASM volatile ("wfe"); }
1213:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __SEV()                      { __ASM volatile ("sev"); }
1214:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __ISB()                      { __ASM volatile ("isb"); }
1215:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __DSB()                      { __ASM volatile ("dsb"); }
1216:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __DMB()                      { __ASM volatile ("dmb"); }
1217:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void __CLREX()                    { __ASM volatile ("clrex"); }
1218:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1219:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1220:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1221:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Process Stack Pointer
1222:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1223:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return ProcessStackPointer
1224:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1225:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the actual process stack pointer
1226:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1227:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_PSP(void);
1228:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1229:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1230:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Process Stack Pointer
1231:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1232:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfProcStack  Process Stack Pointer
1233:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1234:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value ProcessStackPointer to the MSP 
1235:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (process stack pointer) Cortex processor register
1236:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1237:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_PSP(uint32_t topOfProcStack);
1238:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1239:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1240:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Main Stack Pointer
1241:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1242:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return Main Stack Pointer
1243:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1244:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the current value of the MSP (main stack pointer)
1245:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Cortex processor register
1246:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1247:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_MSP(void);
1248:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1249:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1250:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Main Stack Pointer
1251:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1252:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  topOfMainStack  Main Stack Pointer
1253:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1254:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Assign the value mainStackPointer to the MSP 
1255:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * (main stack pointer) Cortex processor register
1256:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1257:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_MSP(uint32_t topOfMainStack);
1258:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1259:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1260:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Base Priority value
1261:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1262:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return BasePriority
1263:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1264:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the base priority register
1265:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1266:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_BASEPRI(void);
1267:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1268:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1269:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Base Priority value
1270:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1271:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  basePri  BasePriority
1272:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1273:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the base priority register
1274:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1275:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_BASEPRI(uint32_t basePri);
1276:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1277:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1278:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Priority Mask value
1279:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1280:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return PriMask
1281:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1282:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return state of the priority mask bit from the priority mask register
1283:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1284:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t  __get_PRIMASK(void);
1285:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1286:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1287:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Priority Mask value
1288:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1289:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  priMask  PriMask
1290:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1291:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the priority mask bit in the priority mask register
1292:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1293:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_PRIMASK(uint32_t priMask);
1294:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1295:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1296:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Fault Mask value
1297:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1298:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return FaultMask
1299:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1300:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the fault mask register
1301:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1302:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_FAULTMASK(void);
1303:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1304:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1305:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Fault Mask value
1306:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1307:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  faultMask  faultMask value
1308:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1309:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the fault mask register
1310:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1311:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_FAULTMASK(uint32_t faultMask);
1312:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1313:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1314:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Return the Control Register value
1315:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** * 
1316:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** *  @return Control value
1317:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1318:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Return the content of the control register
1319:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1320:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __get_CONTROL(void);
1321:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1322:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1323:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Control Register value
1324:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1325:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  control  Control value
1326:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1327:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the control register
1328:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1329:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern void __set_CONTROL(uint32_t control);
1330:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1331:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1332:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in integer value
1333:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1334:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1335:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1336:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1337:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in integer value
1338:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1339:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __REV(uint32_t value);
1340:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1341:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1342:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in unsigned short value
1343:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1344:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1345:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1346:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1347:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in unsigned short value
1348:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1349:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __REV16(uint16_t value);
1350:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1351:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1352:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse byte order in signed short value with sign extension to integer
1353:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1354:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1355:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1356:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1357:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse byte order in signed short value with sign extension to integer
1358:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1359:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern int32_t __REVSH(int16_t value);
1360:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1361:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1362:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Reverse bit order of value
1363:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1364:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to reverse
1365:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        reversed value
1366:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1367:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Reverse bit order of value
1368:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1369:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __RBIT(uint32_t value);
1370:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1371:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1372:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (8 bit)
1373:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1374:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1375:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1376:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1377:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 8 bit value
1378:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1379:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint8_t __LDREXB(uint8_t *addr);
1380:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1381:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1382:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (16 bit)
1383:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1384:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1385:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1386:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1387:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 16 bit values
1388:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1389:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint16_t __LDREXH(uint16_t *addr);
1390:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1391:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1392:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  LDR Exclusive (32 bit)
1393:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1394:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1395:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        value of (*address)
1396:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1397:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive LDR command for 32 bit values
1398:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1399:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __LDREXW(uint32_t *addr);
1400:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1401:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1402:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (8 bit)
1403:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1404:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1405:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1406:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1407:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1408:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 8 bit values
1409:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1410:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXB(uint8_t value, uint8_t *addr);
1411:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1412:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1413:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (16 bit)
1414:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1415:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1416:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1417:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1418:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1419:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 16 bit values
1420:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1421:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXH(uint16_t value, uint16_t *addr);
1422:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1423:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1424:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  STR Exclusive (32 bit)
1425:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1426:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  value  value to store
1427:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  *addr  address pointer
1428:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return        successful / failed
1429:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1430:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Exclusive STR command for 32 bit values
1431:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1432:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** extern uint32_t __STREXW(uint32_t value, uint32_t *addr);
1433:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1434:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1435:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #elif (defined (__TASKING__)) /*------------------ TASKING Compiler ---------------------*/
1436:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* TASKING carm specific functions */
1437:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1438:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*
1439:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The CMSIS functions have been implemented as intrinsics in the compiler.
1440:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Please use "carm -?i" to get an up to date list of all instrinsics,
1441:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Including the CMSIS ones.
1442:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1443:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1444:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #endif
1445:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1446:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1447:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /** @addtogroup CMSIS_CM3_Core_FunctionInterface CMSIS CM3 Core Function Interface
1448:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   Core  Function Interface containing:
1449:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   - Core NVIC Functions
1450:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   - Core SysTick Functions
1451:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   - Core Reset Functions
1452:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** */
1453:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /*@{*/
1454:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1455:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ##########################   NVIC functions  #################################### */
1456:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1457:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1458:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the Priority Grouping in NVIC Interrupt Controller
1459:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1460:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  PriorityGroup is priority grouping field
1461:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1462:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the priority grouping field using the required unlock sequence.
1463:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The parameter priority_grouping is assigned to the field 
1464:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * SCB->AIRCR [10:8] PRIGROUP field. Only values from 0..7 are used.
1465:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * In case of a conflict between priority grouping and available
1466:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
1467:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1468:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1469:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1470:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t reg_value;
1471:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);                         /* only values 0..7 a
1472:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   
1473:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
1474:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to chan
1475:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   reg_value  =  (reg_value                       |
1476:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                 (0x5FA << SCB_AIRCR_VECTKEY_Pos) | 
1477:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                 (PriorityGroupTmp << 8));                                     /* Insert write key a
1478:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SCB->AIRCR =  reg_value;
1479:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1480:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1481:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1482:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Get the Priority Grouping from NVIC Interrupt Controller
1483:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1484:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return priority grouping field 
1485:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1486:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Get the priority grouping from NVIC Interrupt Controller.
1487:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * priority grouping is SCB->AIRCR [10:8] PRIGROUP field.
1488:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1489:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t NVIC_GetPriorityGrouping(void)
1490:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1491:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return ((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos);   /* read priority grou
1492:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1493:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1494:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1495:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Enable Interrupt in NVIC Interrupt Controller
1496:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1497:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn   The positive number of the external interrupt to enable
1498:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1499:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Enable a device specific interupt in the NVIC interrupt controller.
1500:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The interrupt number cannot be a negative value.
1501:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1502:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1503:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1504:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
1505:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1506:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1507:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1508:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Disable the interrupt line for external interrupt specified
1509:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
1510:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn   The positive number of the external interrupt to disable
1511:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
1512:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Disable a device specific interupt in the NVIC interrupt controller.
1513:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The interrupt number cannot be a negative value.
1514:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1515:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1516:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1517:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   NVIC->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
1518:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1519:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1520:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1521:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Read the interrupt pending bit for a device specific interrupt source
1522:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
1523:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn    The number of the device specifc interrupt
1524:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return         1 = interrupt pending, 0 = interrupt not pending
1525:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1526:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Read the pending register in NVIC and return 1 if its status is pending, 
1527:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * otherwise it returns 0
1528:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1529:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1530:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1531:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return((uint32_t) ((NVIC->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); 
1532:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1533:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1534:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1535:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the pending bit for an external interrupt
1536:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * 
1537:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn    The number of the interrupt for set pending
1538:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1539:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the pending bit for the specified interrupt.
1540:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The interrupt number cannot be a negative value.
1541:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1542:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1543:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1544:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   NVIC->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending 
1545:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1546:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1547:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1548:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Clear the pending bit for an external interrupt
1549:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1550:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn    The number of the interrupt for clear pending
1551:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1552:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Clear the pending bit for the specified interrupt. 
1553:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The interrupt number cannot be a negative value.
1554:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1555:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1556:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1557:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrup
1558:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1559:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1560:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1561:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Read the active bit for an external interrupt
1562:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1563:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn    The number of the interrupt for read active bit
1564:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return         1 = interrupt active, 0 = interrupt not active
1565:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1566:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Read the active register in NVIC and returns 1 if its status is active, 
1567:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * otherwise it returns 0.
1568:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1569:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1570:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1571:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return((uint32_t)((NVIC->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /
1572:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1573:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1574:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1575:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Set the priority for an interrupt
1576:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1577:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn      The number of the interrupt for set priority
1578:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  priority  The priority to set
1579:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1580:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Set the priority for the specified interrupt. The interrupt 
1581:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * number can be positive to specify an external (device specific) 
1582:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * interrupt, or negative to specify an internal (core) interrupt.
1583:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1584:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Note: The priority cannot be set for every core interrupt.
1585:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1586:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1587:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
  26              		.loc 1 1587 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 1, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31 0000 80B4     		push	{r7}
  32              	.LCFI0:
  33              		.cfi_def_cfa_offset 4
  34              		.cfi_offset 7, -4
  35 0002 83B0     		sub	sp, sp, #12
  36              	.LCFI1:
  37              		.cfi_def_cfa_offset 16
  38 0004 00AF     		add	r7, sp, #0
  39              	.LCFI2:
  40              		.cfi_def_cfa_register 7
  41 0006 0346     		mov	r3, r0
  42 0008 3960     		str	r1, [r7, #0]
  43 000a FB71     		strb	r3, [r7, #7]
1588:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   if(IRQn < 0) {
  44              		.loc 1 1588 0
  45 000c 97F90730 		ldrsb	r3, [r7, #7]
  46 0010 002B     		cmp	r3, #0
  47 0012 10DA     		bge	.L2
1589:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set 
  48              		.loc 1 1589 0
  49 0014 4FF46D43 		mov	r3, #60672
  50 0018 CEF20003 		movt	r3, 57344
  51 001c FA79     		ldrb	r2, [r7, #7]	@ zero_extendqisi2
  52 001e 02F00F02 		and	r2, r2, #15
  53 0022 A2F10401 		sub	r1, r2, #4
  54 0026 3A68     		ldr	r2, [r7, #0]
  55 0028 D2B2     		uxtb	r2, r2
  56 002a 4FEAC202 		lsl	r2, r2, #3
  57 002e D2B2     		uxtb	r2, r2
  58 0030 5B18     		adds	r3, r3, r1
  59 0032 1A76     		strb	r2, [r3, #24]
  60 0034 0DE0     		b	.L1
  61              	.L2:
1590:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   else {
1591:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     NVIC->IP[(uint32_t)(IRQn)] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff);    }        /* set 
  62              		.loc 1 1591 0
  63 0036 4FF46143 		mov	r3, #57600
  64 003a CEF20003 		movt	r3, 57344
  65 003e 97F90710 		ldrsb	r1, [r7, #7]
  66 0042 3A68     		ldr	r2, [r7, #0]
  67 0044 D2B2     		uxtb	r2, r2
  68 0046 4FEAC202 		lsl	r2, r2, #3
  69 004a D2B2     		uxtb	r2, r2
  70 004c 5B18     		adds	r3, r3, r1
  71 004e 83F80023 		strb	r2, [r3, #768]
  72              	.L1:
1592:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
  73              		.loc 1 1592 0
  74 0052 07F10C07 		add	r7, r7, #12
  75 0056 BD46     		mov	sp, r7
  76 0058 80BC     		pop	{r7}
  77 005a 7047     		bx	lr
  78              		.cfi_endproc
  79              	.LFE20:
  81              		.section	.text.SysTick_Config,"ax",%progbits
  82              		.align	2
  83              		.thumb
  84              		.thumb_func
  86              	SysTick_Config:
  87              	.LFB24:
1593:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1594:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1595:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Read the priority for an interrupt
1596:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1597:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  IRQn      The number of the interrupt for get priority
1598:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return           The priority for the interrupt
1599:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1600:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Read the priority for the specified interrupt. The interrupt 
1601:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * number can be positive to specify an external (device specific) 
1602:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * interrupt, or negative to specify an internal (core) interrupt.
1603:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1604:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The returned priority value is automatically aligned to the implemented
1605:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * priority bits of the microcontroller.
1606:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1607:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Note: The priority cannot be set for every core interrupt.
1608:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1609:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t NVIC_GetPriority(IRQn_Type IRQn)
1610:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1611:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1612:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   if(IRQn < 0) {
1613:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     return((uint32_t)(SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - __NVIC_PRIO_BITS)));  } /* get p
1614:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   else {
1615:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****     return((uint32_t)(NVIC->IP[(uint32_t)(IRQn)]           >> (8 - __NVIC_PRIO_BITS)));  } /* get p
1616:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1617:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1618:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1619:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1620:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Encode the priority for an interrupt
1621:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1622:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  PriorityGroup    The used priority group
1623:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  PreemptPriority  The preemptive priority value (starting from 0)
1624:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  SubPriority      The sub priority value (starting from 0)
1625:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return                  The encoded priority for the interrupt
1626:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1627:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Encode the priority for an interrupt with the given priority group,
1628:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * preemptive priority value and sub priority value.
1629:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * In case of a conflict between priority grouping and available
1630:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * priority bits (__NVIC_PRIO_BITS) the samllest possible priority group is set.
1631:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1632:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The returned priority value can be used for NVIC_SetPriority(...) function
1633:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1634:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uin
1635:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1636:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used        
1637:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t PreemptPriorityBits;
1638:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t SubPriorityBits;
1639:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1640:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   PreemptPriorityBits = ((7 - PriorityGroupTmp) > __NVIC_PRIO_BITS) ? __NVIC_PRIO_BITS : 7 - Priori
1641:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SubPriorityBits     = ((PriorityGroupTmp + __NVIC_PRIO_BITS) < 7) ? 0 : PriorityGroupTmp - 7 + __
1642:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  
1643:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return (
1644:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****            ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
1645:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****            ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
1646:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****          );
1647:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1648:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1649:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1650:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1651:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Decode the priority of an interrupt
1652:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1653:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  Priority           The priority for the interrupt
1654:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  PriorityGroup      The used priority group
1655:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  pPreemptPriority   The preemptive priority value (starting from 0)
1656:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param  pSubPriority       The sub priority value (starting from 0)
1657:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1658:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Decode an interrupt priority value with the given priority group to 
1659:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * preemptive priority value and sub priority value.
1660:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * In case of a conflict between priority grouping and available
1661:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * priority bits (__NVIC_PRIO_BITS) the samllest possible priority group is set.
1662:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1663:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * The priority value can be retrieved with NVIC_GetPriority(...) function
1664:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1665:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPre
1666:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** {
1667:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used        
1668:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t PreemptPriorityBits;
1669:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   uint32_t SubPriorityBits;
1670:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1671:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   PreemptPriorityBits = ((7 - PriorityGroupTmp) > __NVIC_PRIO_BITS) ? __NVIC_PRIO_BITS : 7 - Priori
1672:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SubPriorityBits     = ((PriorityGroupTmp + __NVIC_PRIO_BITS) < 7) ? 0 : PriorityGroupTmp - 7 + __
1673:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   
1674:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
1675:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
1676:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
1677:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1678:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1679:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1680:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /* ##################################    SysTick function  ########################################
1681:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1682:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** #if (!defined (__Vendor_SysTickConfig)) || (__Vendor_SysTickConfig == 0)
1683:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** 
1684:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** /**
1685:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @brief  Initialize and start the SysTick counter and its interrupt.
1686:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1687:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @param   ticks   number of ticks between two interrupts
1688:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * @return  1 = failed, 0 = successful
1689:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  *
1690:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * Initialise the system tick timer and its interrupt and start the
1691:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * system tick timer / counter in free running mode to generate 
1692:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  * periodical interrupts.
1693:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****  */
1694:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** static __INLINE uint32_t SysTick_Config(uint32_t ticks)
1695:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** { 
  88              		.loc 1 1695 0
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 8
  91              		@ frame_needed = 1, uses_anonymous_args = 0
  92 0000 80B5     		push	{r7, lr}
  93              	.LCFI3:
  94              		.cfi_def_cfa_offset 8
  95              		.cfi_offset 14, -4
  96              		.cfi_offset 7, -8
  97 0002 82B0     		sub	sp, sp, #8
  98              	.LCFI4:
  99              		.cfi_def_cfa_offset 16
 100 0004 00AF     		add	r7, sp, #0
 101              	.LCFI5:
 102              		.cfi_def_cfa_register 7
 103 0006 7860     		str	r0, [r7, #4]
1696:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   if (ticks > SysTick_LOAD_RELOAD_Msk)  return (1);            /* Reload value impossible */
 104              		.loc 1 1696 0
 105 0008 7A68     		ldr	r2, [r7, #4]
 106 000a 6FF07F43 		mvn	r3, #-16777216
 107 000e 9A42     		cmp	r2, r3
 108 0010 02D9     		bls	.L5
 109              		.loc 1 1696 0 is_stmt 0 discriminator 1
 110 0012 4FF00103 		mov	r3, #1
 111 0016 1FE0     		b	.L6
 112              	.L5:
1697:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                                                                
1698:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SysTick->LOAD  = (ticks & SysTick_LOAD_RELOAD_Msk) - 1;      /* set reload register */
 113              		.loc 1 1698 0 is_stmt 1
 114 0018 4EF21003 		movw	r3, #57360
 115 001c CEF20003 		movt	r3, 57344
 116 0020 7A68     		ldr	r2, [r7, #4]
 117 0022 22F07F42 		bic	r2, r2, #-16777216
 118 0026 02F1FF32 		add	r2, r2, #-1
 119 002a 5A60     		str	r2, [r3, #4]
1699:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Cortex-M0 System
 120              		.loc 1 1699 0
 121 002c 4FF0FF30 		mov	r0, #-1
 122 0030 4FF01F01 		mov	r1, #31
 123 0034 FFF7FEFF 		bl	NVIC_SetPriority
1700:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
 124              		.loc 1 1700 0
 125 0038 4EF21003 		movw	r3, #57360
 126 003c CEF20003 		movt	r3, 57344
 127 0040 4FF00002 		mov	r2, #0
 128 0044 9A60     		str	r2, [r3, #8]
1701:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | 
 129              		.loc 1 1701 0
 130 0046 4EF21003 		movw	r3, #57360
 131 004a CEF20003 		movt	r3, 57344
 132 004e 4FF00702 		mov	r2, #7
 133 0052 1A60     		str	r2, [r3, #0]
1702:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                    SysTick_CTRL_TICKINT_Msk   | 
1703:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****                    SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTick Ti
1704:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h ****   return (0);                                                  /* Function successful */
 134              		.loc 1 1704 0
 135 0054 4FF00003 		mov	r3, #0
 136              	.L6:
1705:F:\EE2024\Lib_CMSISv1p30_LPC17xx\inc\core_cm3.h **** }
 137              		.loc 1 1705 0
 138 0058 1846     		mov	r0, r3
 139 005a 07F10807 		add	r7, r7, #8
 140 005e BD46     		mov	sp, r7
 141 0060 80BD     		pop	{r7, pc}
 142              		.cfi_endproc
 143              	.LFE24:
 145              		.global	usTicks
 146 0062 00BF     		.bss
 147              		.align	2
 150              	usTicks:
 151 0000 00000000 		.space	4
 152              		.section	.text.SysTick_Handler,"ax",%progbits
 153              		.align	2
 154              		.global	SysTick_Handler
 155              		.thumb
 156              		.thumb_func
 158              	SysTick_Handler:
 159              	.LFB29:
 160              		.file 2 "../src/main.c"
   1:../src/main.c **** #include "LPC17xx.h"
   2:../src/main.c **** #include "stdio.h"
   3:../src/main.c **** 
   4:../src/main.c **** // EE2024 Assignment 1 skeleton
   5:../src/main.c **** // (C) CK Tham, ECE, NUS, 2017
   6:../src/main.c **** 
   7:../src/main.c **** // PID controller written in assembly language
   8:../src/main.c **** extern int pid_ctrl(int en, int st);
   9:../src/main.c **** 
  10:../src/main.c **** uint32_t usTicks=0;
  11:../src/main.c **** 
  12:../src/main.c **** // This function is called every 1us
  13:../src/main.c **** void SysTick_Handler(void)
  14:../src/main.c **** {
 161              		.loc 2 14 0
 162              		.cfi_startproc
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 1, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 80B4     		push	{r7}
 167              	.LCFI6:
 168              		.cfi_def_cfa_offset 4
 169              		.cfi_offset 7, -4
 170 0002 00AF     		add	r7, sp, #0
 171              	.LCFI7:
 172              		.cfi_def_cfa_register 7
  15:../src/main.c ****     usTicks++;
 173              		.loc 2 15 0
 174 0004 40F20003 		movw	r3, #:lower16:usTicks
 175 0008 C0F20003 		movt	r3, #:upper16:usTicks
 176 000c 1B68     		ldr	r3, [r3, #0]
 177 000e 03F10102 		add	r2, r3, #1
 178 0012 40F20003 		movw	r3, #:lower16:usTicks
 179 0016 C0F20003 		movt	r3, #:upper16:usTicks
 180 001a 1A60     		str	r2, [r3, #0]
  16:../src/main.c **** }
 181              		.loc 2 16 0
 182 001c BD46     		mov	sp, r7
 183 001e 80BC     		pop	{r7}
 184 0020 7047     		bx	lr
 185              		.cfi_endproc
 186              	.LFE29:
 188              		.global	__aeabi_dsub
 189              		.global	__aeabi_dmul
 190              		.global	__aeabi_dadd
 191 0022 00BF     		.section	.text.plant,"ax",%progbits
 192              		.align	2
 193              		.global	plant
 194              		.thumb
 195              		.thumb_func
 197              	plant:
 198              	.LFB30:
  17:../src/main.c **** 
  18:../src/main.c **** // Plant or System under control
  19:../src/main.c **** // a and b are parameters of the plant
  20:../src/main.c **** double plant(double u, unsigned start, double a, double b)
  21:../src/main.c **** {
 199              		.loc 2 21 0
 200              		.cfi_startproc
 201              		@ args = 16, pretend = 0, frame = 16
 202              		@ frame_needed = 1, uses_anonymous_args = 0
 203 0000 80B5     		push	{r7, lr}
 204              	.LCFI8:
 205              		.cfi_def_cfa_offset 8
 206              		.cfi_offset 14, -4
 207              		.cfi_offset 7, -8
 208 0002 84B0     		sub	sp, sp, #16
 209              	.LCFI9:
 210              		.cfi_def_cfa_offset 24
 211 0004 00AF     		add	r7, sp, #0
 212              	.LCFI10:
 213              		.cfi_def_cfa_register 7
 214 0006 C7E90201 		strd	r0, [r7, #8]
 215 000a 7A60     		str	r2, [r7, #4]
  22:../src/main.c ****     static double x1, x2, x3, x4, y;
  23:../src/main.c **** 
  24:../src/main.c ****     if (start)
 216              		.loc 2 24 0
 217 000c 7B68     		ldr	r3, [r7, #4]
 218 000e 002B     		cmp	r3, #0
 219 0010 2DD0     		beq	.L9
  25:../src/main.c **** 	{
  26:../src/main.c ****         x1 = x2 = x3 = x4 = 0.0;
 220              		.loc 2 26 0
 221 0012 40F20003 		movw	r3, #:lower16:x4.4849
 222 0016 C0F20003 		movt	r3, #:upper16:x4.4849
 223 001a 4FF00000 		mov	r0, #0
 224 001e 4FF00001 		mov	r1, #0
 225 0022 C3E90001 		strd	r0, [r3]
 226 0026 40F20003 		movw	r3, #:lower16:x4.4849
 227 002a C0F20003 		movt	r3, #:upper16:x4.4849
 228 002e D3E90001 		ldrd	r0, [r3]
 229 0032 40F20003 		movw	r3, #:lower16:x3.4848
 230 0036 C0F20003 		movt	r3, #:upper16:x3.4848
 231 003a C3E90001 		strd	r0, [r3]
 232 003e 40F20003 		movw	r3, #:lower16:x3.4848
 233 0042 C0F20003 		movt	r3, #:upper16:x3.4848
 234 0046 D3E90001 		ldrd	r0, [r3]
 235 004a 40F20003 		movw	r3, #:lower16:x2.4847
 236 004e C0F20003 		movt	r3, #:upper16:x2.4847
 237 0052 C3E90001 		strd	r0, [r3]
 238 0056 40F20003 		movw	r3, #:lower16:x2.4847
 239 005a C0F20003 		movt	r3, #:upper16:x2.4847
 240 005e D3E90001 		ldrd	r0, [r3]
 241 0062 40F20003 		movw	r3, #:lower16:x1.4846
 242 0066 C0F20003 		movt	r3, #:upper16:x1.4846
 243 006a C3E90001 		strd	r0, [r3]
 244              	.L9:
  27:../src/main.c ****     }
  28:../src/main.c **** 
  29:../src/main.c ****     x4 = x4 + b*(u-x4);
 245              		.loc 2 29 0
 246 006e 40F20003 		movw	r3, #:lower16:x4.4849
 247 0072 C0F20003 		movt	r3, #:upper16:x4.4849
 248 0076 D3E90023 		ldrd	r2, [r3]
 249 007a D7E90201 		ldrd	r0, [r7, #8]
 250 007e FFF7FEFF 		bl	__aeabi_dsub
 251 0082 0246     		mov	r2, r0
 252 0084 0B46     		mov	r3, r1
 253 0086 1046     		mov	r0, r2
 254 0088 1946     		mov	r1, r3
 255 008a D7E90823 		ldrd	r2, [r7, #32]
 256 008e FFF7FEFF 		bl	__aeabi_dmul
 257 0092 0246     		mov	r2, r0
 258 0094 0B46     		mov	r3, r1
 259 0096 1046     		mov	r0, r2
 260 0098 1946     		mov	r1, r3
 261 009a 40F20003 		movw	r3, #:lower16:x4.4849
 262 009e C0F20003 		movt	r3, #:upper16:x4.4849
 263 00a2 D3E90023 		ldrd	r2, [r3]
 264 00a6 FFF7FEFF 		bl	__aeabi_dadd
 265 00aa 0246     		mov	r2, r0
 266 00ac 0B46     		mov	r3, r1
 267 00ae 1046     		mov	r0, r2
 268 00b0 1946     		mov	r1, r3
 269 00b2 40F20003 		movw	r3, #:lower16:x4.4849
 270 00b6 C0F20003 		movt	r3, #:upper16:x4.4849
 271 00ba C3E90001 		strd	r0, [r3]
  30:../src/main.c ****     x3 = x3 + b*(x4-x3);
 272              		.loc 2 30 0
 273 00be 40F20003 		movw	r3, #:lower16:x4.4849
 274 00c2 C0F20003 		movt	r3, #:upper16:x4.4849
 275 00c6 D3E90001 		ldrd	r0, [r3]
 276 00ca 40F20003 		movw	r3, #:lower16:x3.4848
 277 00ce C0F20003 		movt	r3, #:upper16:x3.4848
 278 00d2 D3E90023 		ldrd	r2, [r3]
 279 00d6 FFF7FEFF 		bl	__aeabi_dsub
 280 00da 0246     		mov	r2, r0
 281 00dc 0B46     		mov	r3, r1
 282 00de 1046     		mov	r0, r2
 283 00e0 1946     		mov	r1, r3
 284 00e2 D7E90823 		ldrd	r2, [r7, #32]
 285 00e6 FFF7FEFF 		bl	__aeabi_dmul
 286 00ea 0246     		mov	r2, r0
 287 00ec 0B46     		mov	r3, r1
 288 00ee 1046     		mov	r0, r2
 289 00f0 1946     		mov	r1, r3
 290 00f2 40F20003 		movw	r3, #:lower16:x3.4848
 291 00f6 C0F20003 		movt	r3, #:upper16:x3.4848
 292 00fa D3E90023 		ldrd	r2, [r3]
 293 00fe FFF7FEFF 		bl	__aeabi_dadd
 294 0102 0246     		mov	r2, r0
 295 0104 0B46     		mov	r3, r1
 296 0106 1046     		mov	r0, r2
 297 0108 1946     		mov	r1, r3
 298 010a 40F20003 		movw	r3, #:lower16:x3.4848
 299 010e C0F20003 		movt	r3, #:upper16:x3.4848
 300 0112 C3E90001 		strd	r0, [r3]
  31:../src/main.c ****     x2 = x2 + b*(x3-x2);
 301              		.loc 2 31 0
 302 0116 40F20003 		movw	r3, #:lower16:x3.4848
 303 011a C0F20003 		movt	r3, #:upper16:x3.4848
 304 011e D3E90001 		ldrd	r0, [r3]
 305 0122 40F20003 		movw	r3, #:lower16:x2.4847
 306 0126 C0F20003 		movt	r3, #:upper16:x2.4847
 307 012a D3E90023 		ldrd	r2, [r3]
 308 012e FFF7FEFF 		bl	__aeabi_dsub
 309 0132 0246     		mov	r2, r0
 310 0134 0B46     		mov	r3, r1
 311 0136 1046     		mov	r0, r2
 312 0138 1946     		mov	r1, r3
 313 013a D7E90823 		ldrd	r2, [r7, #32]
 314 013e FFF7FEFF 		bl	__aeabi_dmul
 315 0142 0246     		mov	r2, r0
 316 0144 0B46     		mov	r3, r1
 317 0146 1046     		mov	r0, r2
 318 0148 1946     		mov	r1, r3
 319 014a 40F20003 		movw	r3, #:lower16:x2.4847
 320 014e C0F20003 		movt	r3, #:upper16:x2.4847
 321 0152 D3E90023 		ldrd	r2, [r3]
 322 0156 FFF7FEFF 		bl	__aeabi_dadd
 323 015a 0246     		mov	r2, r0
 324 015c 0B46     		mov	r3, r1
 325 015e 1046     		mov	r0, r2
 326 0160 1946     		mov	r1, r3
 327 0162 40F20003 		movw	r3, #:lower16:x2.4847
 328 0166 C0F20003 		movt	r3, #:upper16:x2.4847
 329 016a C3E90001 		strd	r0, [r3]
  32:../src/main.c ****     x1 = x1 + b*(x2-x1);
 330              		.loc 2 32 0
 331 016e 40F20003 		movw	r3, #:lower16:x2.4847
 332 0172 C0F20003 		movt	r3, #:upper16:x2.4847
 333 0176 D3E90001 		ldrd	r0, [r3]
 334 017a 40F20003 		movw	r3, #:lower16:x1.4846
 335 017e C0F20003 		movt	r3, #:upper16:x1.4846
 336 0182 D3E90023 		ldrd	r2, [r3]
 337 0186 FFF7FEFF 		bl	__aeabi_dsub
 338 018a 0246     		mov	r2, r0
 339 018c 0B46     		mov	r3, r1
 340 018e 1046     		mov	r0, r2
 341 0190 1946     		mov	r1, r3
 342 0192 D7E90823 		ldrd	r2, [r7, #32]
 343 0196 FFF7FEFF 		bl	__aeabi_dmul
 344 019a 0246     		mov	r2, r0
 345 019c 0B46     		mov	r3, r1
 346 019e 1046     		mov	r0, r2
 347 01a0 1946     		mov	r1, r3
 348 01a2 40F20003 		movw	r3, #:lower16:x1.4846
 349 01a6 C0F20003 		movt	r3, #:upper16:x1.4846
 350 01aa D3E90023 		ldrd	r2, [r3]
 351 01ae FFF7FEFF 		bl	__aeabi_dadd
 352 01b2 0246     		mov	r2, r0
 353 01b4 0B46     		mov	r3, r1
 354 01b6 1046     		mov	r0, r2
 355 01b8 1946     		mov	r1, r3
 356 01ba 40F20003 		movw	r3, #:lower16:x1.4846
 357 01be C0F20003 		movt	r3, #:upper16:x1.4846
 358 01c2 C3E90001 		strd	r0, [r3]
  33:../src/main.c ****     y = x1;
 359              		.loc 2 33 0
 360 01c6 40F20003 		movw	r3, #:lower16:x1.4846
 361 01ca C0F20003 		movt	r3, #:upper16:x1.4846
 362 01ce D3E90001 		ldrd	r0, [r3]
 363 01d2 40F20003 		movw	r3, #:lower16:y.4850
 364 01d6 C0F20003 		movt	r3, #:upper16:y.4850
 365 01da C3E90001 		strd	r0, [r3]
  34:../src/main.c ****     return(y);
 366              		.loc 2 34 0
 367 01de 40F20003 		movw	r3, #:lower16:y.4850
 368 01e2 C0F20003 		movt	r3, #:upper16:y.4850
 369 01e6 D3E90023 		ldrd	r2, [r3]
  35:../src/main.c **** }
 370              		.loc 2 35 0
 371 01ea 1046     		mov	r0, r2
 372 01ec 1946     		mov	r1, r3
 373 01ee 07F11007 		add	r7, r7, #16
 374 01f2 BD46     		mov	sp, r7
 375 01f4 80BD     		pop	{r7, pc}
 376              		.cfi_endproc
 377              	.LFE30:
 379              		.global	__aeabi_dcmpgt
 380              		.global	__aeabi_dcmplt
 381 01f6 00BF     		.section	.text.PIDcontrol,"ax",%progbits
 382              		.align	2
 383              		.global	PIDcontrol
 384              		.thumb
 385              		.thumb_func
 387              	PIDcontrol:
 388              	.LFB31:
  36:../src/main.c **** 
  37:../src/main.c **** // PID Controller written in C
  38:../src/main.c **** // This function takes in the error and a start flag and returns the control signal
  39:../src/main.c **** // The start flag should be 1 the first time this function is called
  40:../src/main.c **** double PIDcontrol(double en, unsigned start)
  41:../src/main.c **** {
 389              		.loc 2 41 0
 390              		.cfi_startproc
 391              		@ args = 0, pretend = 0, frame = 16
 392              		@ frame_needed = 1, uses_anonymous_args = 0
 393 0000 B0B5     		push	{r4, r5, r7, lr}
 394              	.LCFI11:
 395              		.cfi_def_cfa_offset 16
 396              		.cfi_offset 14, -4
 397              		.cfi_offset 7, -8
 398              		.cfi_offset 5, -12
 399              		.cfi_offset 4, -16
 400 0002 84B0     		sub	sp, sp, #16
 401              	.LCFI12:
 402              		.cfi_def_cfa_offset 32
 403 0004 00AF     		add	r7, sp, #0
 404              	.LCFI13:
 405              		.cfi_def_cfa_register 7
 406 0006 C7E90201 		strd	r0, [r7, #8]
 407 000a 7A60     		str	r2, [r7, #4]
  42:../src/main.c ****     static double Kp=0.25, Ki=0.1,  Kd=0.8, sn, enOld, un;
  43:../src/main.c ****     if (start)
 408              		.loc 2 43 0
 409 000c 7B68     		ldr	r3, [r7, #4]
 410 000e 002B     		cmp	r3, #0
 411 0010 15D0     		beq	.L11
  44:../src/main.c ****     {
  45:../src/main.c ****         sn = enOld = 0.0;
 412              		.loc 2 45 0
 413 0012 40F20003 		movw	r3, #:lower16:enOld.4859
 414 0016 C0F20003 		movt	r3, #:upper16:enOld.4859
 415 001a 4FF00000 		mov	r0, #0
 416 001e 4FF00001 		mov	r1, #0
 417 0022 C3E90001 		strd	r0, [r3]
 418 0026 40F20003 		movw	r3, #:lower16:enOld.4859
 419 002a C0F20003 		movt	r3, #:upper16:enOld.4859
 420 002e D3E90001 		ldrd	r0, [r3]
 421 0032 40F20003 		movw	r3, #:lower16:sn.4858
 422 0036 C0F20003 		movt	r3, #:upper16:sn.4858
 423 003a C3E90001 		strd	r0, [r3]
 424              	.L11:
  46:../src/main.c ****     }
  47:../src/main.c ****     sn = sn + en;
 425              		.loc 2 47 0
 426 003e 40F20003 		movw	r3, #:lower16:sn.4858
 427 0042 C0F20003 		movt	r3, #:upper16:sn.4858
 428 0046 D3E90023 		ldrd	r2, [r3]
 429 004a 1046     		mov	r0, r2
 430 004c 1946     		mov	r1, r3
 431 004e D7E90223 		ldrd	r2, [r7, #8]
 432 0052 FFF7FEFF 		bl	__aeabi_dadd
 433 0056 0246     		mov	r2, r0
 434 0058 0B46     		mov	r3, r1
 435 005a 1046     		mov	r0, r2
 436 005c 1946     		mov	r1, r3
 437 005e 40F20003 		movw	r3, #:lower16:sn.4858
 438 0062 C0F20003 		movt	r3, #:upper16:sn.4858
 439 0066 C3E90001 		strd	r0, [r3]
  48:../src/main.c ****     if (sn>9.5) sn=9.5; else if (sn<-9.5) sn=-9.5;
 440              		.loc 2 48 0
 441 006a 40F20003 		movw	r3, #:lower16:sn.4858
 442 006e C0F20003 		movt	r3, #:upper16:sn.4858
 443 0072 D3E90023 		ldrd	r2, [r3]
 444 0076 4FF00101 		mov	r1, #1
 445 007a 0C46     		mov	r4, r1
 446 007c 1046     		mov	r0, r2
 447 007e 1946     		mov	r1, r3
 448 0080 4FF00002 		mov	r2, #0
 449 0084 4FF08043 		mov	r3, #1073741824
 450 0088 03F50C13 		add	r3, r3, #2293760
 451 008c FFF7FEFF 		bl	__aeabi_dcmpgt
 452 0090 0346     		mov	r3, r0
 453 0092 002B     		cmp	r3, #0
 454 0094 02D1     		bne	.L12
 455 0096 4FF00003 		mov	r3, #0
 456 009a 1C46     		mov	r4, r3
 457              	.L12:
 458 009c E3B2     		uxtb	r3, r4
 459 009e 002B     		cmp	r3, #0
 460 00a0 0CD0     		beq	.L13
 461              		.loc 2 48 0 is_stmt 0 discriminator 1
 462 00a2 40F20003 		movw	r3, #:lower16:sn.4858
 463 00a6 C0F20003 		movt	r3, #:upper16:sn.4858
 464 00aa 4FF00000 		mov	r0, #0
 465 00ae 4FF08041 		mov	r1, #1073741824
 466 00b2 01F50C11 		add	r1, r1, #2293760
 467 00b6 C3E90001 		strd	r0, [r3]
 468 00ba 27E0     		b	.L14
 469              	.L13:
 470              		.loc 2 48 0 discriminator 2
 471 00bc 40F20003 		movw	r3, #:lower16:sn.4858
 472 00c0 C0F20003 		movt	r3, #:upper16:sn.4858
 473 00c4 D3E90023 		ldrd	r2, [r3]
 474 00c8 4FF00101 		mov	r1, #1
 475 00cc 0C46     		mov	r4, r1
 476 00ce 1046     		mov	r0, r2
 477 00d0 1946     		mov	r1, r3
 478 00d2 4FF00002 		mov	r2, #0
 479 00d6 4FF04043 		mov	r3, #-1073741824
 480 00da 03F50C13 		add	r3, r3, #2293760
 481 00de FFF7FEFF 		bl	__aeabi_dcmplt
 482 00e2 0346     		mov	r3, r0
 483 00e4 002B     		cmp	r3, #0
 484 00e6 02D1     		bne	.L15
 485 00e8 4FF00003 		mov	r3, #0
 486 00ec 1C46     		mov	r4, r3
 487              	.L15:
 488 00ee E3B2     		uxtb	r3, r4
 489 00f0 002B     		cmp	r3, #0
 490 00f2 0BD0     		beq	.L14
 491              		.loc 2 48 0 discriminator 1
 492 00f4 40F20003 		movw	r3, #:lower16:sn.4858
 493 00f8 C0F20003 		movt	r3, #:upper16:sn.4858
 494 00fc 4FF00000 		mov	r0, #0
 495 0100 4FF04041 		mov	r1, #-1073741824
 496 0104 01F50C11 		add	r1, r1, #2293760
 497 0108 C3E90001 		strd	r0, [r3]
 498              	.L14:
  49:../src/main.c ****     un = Kp*en + Ki*sn + Kd*(en-enOld);
 499              		.loc 2 49 0 is_stmt 1
 500 010c 40F20003 		movw	r3, #:lower16:Kp.4855
 501 0110 C0F20003 		movt	r3, #:upper16:Kp.4855
 502 0114 D3E90023 		ldrd	r2, [r3]
 503 0118 1046     		mov	r0, r2
 504 011a 1946     		mov	r1, r3
 505 011c D7E90223 		ldrd	r2, [r7, #8]
 506 0120 FFF7FEFF 		bl	__aeabi_dmul
 507 0124 0246     		mov	r2, r0
 508 0126 0B46     		mov	r3, r1
 509 0128 1446     		mov	r4, r2
 510 012a 1D46     		mov	r5, r3
 511 012c 40F20003 		movw	r3, #:lower16:Ki.4856
 512 0130 C0F20003 		movt	r3, #:upper16:Ki.4856
 513 0134 D3E90001 		ldrd	r0, [r3]
 514 0138 40F20003 		movw	r3, #:lower16:sn.4858
 515 013c C0F20003 		movt	r3, #:upper16:sn.4858
 516 0140 D3E90023 		ldrd	r2, [r3]
 517 0144 FFF7FEFF 		bl	__aeabi_dmul
 518 0148 0246     		mov	r2, r0
 519 014a 0B46     		mov	r3, r1
 520 014c 2046     		mov	r0, r4
 521 014e 2946     		mov	r1, r5
 522 0150 FFF7FEFF 		bl	__aeabi_dadd
 523 0154 0246     		mov	r2, r0
 524 0156 0B46     		mov	r3, r1
 525 0158 1446     		mov	r4, r2
 526 015a 1D46     		mov	r5, r3
 527 015c 40F20003 		movw	r3, #:lower16:enOld.4859
 528 0160 C0F20003 		movt	r3, #:upper16:enOld.4859
 529 0164 D3E90023 		ldrd	r2, [r3]
 530 0168 D7E90201 		ldrd	r0, [r7, #8]
 531 016c FFF7FEFF 		bl	__aeabi_dsub
 532 0170 0246     		mov	r2, r0
 533 0172 0B46     		mov	r3, r1
 534 0174 1046     		mov	r0, r2
 535 0176 1946     		mov	r1, r3
 536 0178 40F20003 		movw	r3, #:lower16:Kd.4857
 537 017c C0F20003 		movt	r3, #:upper16:Kd.4857
 538 0180 D3E90023 		ldrd	r2, [r3]
 539 0184 FFF7FEFF 		bl	__aeabi_dmul
 540 0188 0246     		mov	r2, r0
 541 018a 0B46     		mov	r3, r1
 542 018c 2046     		mov	r0, r4
 543 018e 2946     		mov	r1, r5
 544 0190 FFF7FEFF 		bl	__aeabi_dadd
 545 0194 0246     		mov	r2, r0
 546 0196 0B46     		mov	r3, r1
 547 0198 1046     		mov	r0, r2
 548 019a 1946     		mov	r1, r3
 549 019c 40F20003 		movw	r3, #:lower16:un.4860
 550 01a0 C0F20003 		movt	r3, #:upper16:un.4860
 551 01a4 C3E90001 		strd	r0, [r3]
  50:../src/main.c ****     enOld = en;
 552              		.loc 2 50 0
 553 01a8 40F20003 		movw	r3, #:lower16:enOld.4859
 554 01ac C0F20003 		movt	r3, #:upper16:enOld.4859
 555 01b0 D7E90201 		ldrd	r0, [r7, #8]
 556 01b4 C3E90001 		strd	r0, [r3]
  51:../src/main.c ****     return(un);
 557              		.loc 2 51 0
 558 01b8 40F20003 		movw	r3, #:lower16:un.4860
 559 01bc C0F20003 		movt	r3, #:upper16:un.4860
 560 01c0 D3E90023 		ldrd	r2, [r3]
  52:../src/main.c **** }
 561              		.loc 2 52 0
 562 01c4 1046     		mov	r0, r2
 563 01c6 1946     		mov	r1, r3
 564 01c8 07F11007 		add	r7, r7, #16
 565 01cc BD46     		mov	sp, r7
 566 01ce B0BD     		pop	{r4, r5, r7, pc}
 567              		.cfi_endproc
 568              	.LFE31:
 570              		.global	__aeabi_ddiv
 571              		.section	.rodata
 572              		.align	2
 573              	.LC0:
 574 0000 256C660A 		.ascii	"%lf\012\000"
 574      00
 575 0005 000000   		.align	2
 576              	.LC1:
 577 0008 54696D65 		.ascii	"Time taken (ASM version): %ld microseconds\012\000"
 577      2074616B 
 577      656E2028 
 577      41534D20 
 577      76657273 
 578              		.align	2
 579              	.LC2:
 580 0034 54696D65 		.ascii	"Time taken (C version): %ld microseconds\012\000"
 580      2074616B 
 580      656E2028 
 580      43207665 
 580      7273696F 
 581 005e 0000     		.section	.text.main,"ax",%progbits
 582              		.align	2
 583              		.global	main
 584              		.thumb
 585              		.thumb_func
 587              	main:
 588              	.LFB32:
  53:../src/main.c **** 
  54:../src/main.c **** int main(void)
  55:../src/main.c **** {
 589              		.loc 2 55 0
 590              		.cfi_startproc
 591              		@ args = 0, pretend = 0, frame = 56
 592              		@ frame_needed = 1, uses_anonymous_args = 0
 593 0000 80B5     		push	{r7, lr}
 594              	.LCFI14:
 595              		.cfi_def_cfa_offset 8
 596              		.cfi_offset 14, -4
 597              		.cfi_offset 7, -8
 598 0002 92B0     		sub	sp, sp, #72
 599              	.LCFI15:
 600              		.cfi_def_cfa_offset 80
 601 0004 04AF     		add	r7, sp, #16
 602              	.LCFI16:
 603              		.cfi_def_cfa 7, 64
  56:../src/main.c ****     int i, startTicks, stopTicks;
  57:../src/main.c ****     unsigned int st;
  58:../src/main.c ****     double sp, y, e, u;
  59:../src/main.c **** 
  60:../src/main.c **** 	// SystemTick clock configuration
  61:../src/main.c **** 	SysTick_Config(SystemCoreClock / 1000000);  // every 1us
 604              		.loc 2 61 0
 605 0006 40F20003 		movw	r3, #:lower16:SystemCoreClock
 606 000a C0F20003 		movt	r3, #:upper16:SystemCoreClock
 607 000e 1A68     		ldr	r2, [r3, #0]
 608 0010 4DF68363 		movw	r3, #56963
 609 0014 C4F21B33 		movt	r3, 17179
 610 0018 A3FB0213 		umull	r1, r3, r3, r2
 611 001c 4FEA9343 		lsr	r3, r3, #18
 612 0020 1846     		mov	r0, r3
 613 0022 FFF7FEFF 		bl	SysTick_Config
  62:../src/main.c **** 
  63:../src/main.c **** //  ASM version
  64:../src/main.c **** 	sp = 1.0;
 614              		.loc 2 64 0
 615 0026 4FF00002 		mov	r2, #0
 616 002a 4FF07E53 		mov	r3, #1065353216
 617 002e 03F5E003 		add	r3, r3, #7340032
 618 0032 C7E90823 		strd	r2, [r7, #32]
  65:../src/main.c **** 	u = 0.0;
 619              		.loc 2 65 0
 620 0036 4FF00002 		mov	r2, #0
 621 003a 4FF00003 		mov	r3, #0
 622 003e C7E90A23 		strd	r2, [r7, #40]
  66:../src/main.c **** 	startTicks = usTicks;
 623              		.loc 2 66 0
 624 0042 40F20003 		movw	r3, #:lower16:usTicks
 625 0046 C0F20003 		movt	r3, #:upper16:usTicks
 626 004a 1B68     		ldr	r3, [r3, #0]
 627 004c FB61     		str	r3, [r7, #28]
  67:../src/main.c ****     for (i=0; i<50; i++)
 628              		.loc 2 67 0
 629 004e 4FF00003 		mov	r3, #0
 630 0052 7B63     		str	r3, [r7, #52]
 631 0054 4FE0     		b	.L17
 632              	.L20:
 633              	.LBB2:
  68:../src/main.c ****     {
  69:../src/main.c ****         if (i==0) st=1; else st=0;
 634              		.loc 2 69 0
 635 0056 7B6B     		ldr	r3, [r7, #52]
 636 0058 002B     		cmp	r3, #0
 637 005a 03D1     		bne	.L18
 638              		.loc 2 69 0 is_stmt 0 discriminator 1
 639 005c 4FF00103 		mov	r3, #1
 640 0060 3B63     		str	r3, [r7, #48]
 641 0062 02E0     		b	.L19
 642              	.L18:
 643              		.loc 2 69 0 discriminator 2
 644 0064 4FF00003 		mov	r3, #0
 645 0068 3B63     		str	r3, [r7, #48]
 646              	.L19:
  70:../src/main.c **** 
  71:../src/main.c ****         y = plant(u,st,-0.8,0.2); // Do NOT change the plant parameters
 647              		.loc 2 71 0 is_stmt 1
 648 006a 69A3     		adr	r3, .L26
 649 006c D3E90023 		ldrd	r2, [r3]
 650 0070 CDE90023 		strd	r2, [sp]
 651 0074 68A3     		adr	r3, .L26+8
 652 0076 D3E90023 		ldrd	r2, [r3]
 653 007a CDE90223 		strd	r2, [sp, #8]
 654 007e D7E90A01 		ldrd	r0, [r7, #40]
 655 0082 3A6B     		ldr	r2, [r7, #48]
 656 0084 FFF7FEFF 		bl	plant
 657 0088 0246     		mov	r2, r0
 658 008a 0B46     		mov	r3, r1
 659 008c C7E90423 		strd	r2, [r7, #16]
  72:../src/main.c ****         e = sp - y;
 660              		.loc 2 72 0
 661 0090 D7E90801 		ldrd	r0, [r7, #32]
 662 0094 D7E90423 		ldrd	r2, [r7, #16]
 663 0098 FFF7FEFF 		bl	__aeabi_dsub
 664 009c 0246     		mov	r2, r0
 665 009e 0B46     		mov	r3, r1
 666 00a0 C7E90223 		strd	r2, [r7, #8]
  73:../src/main.c **** 
  74:../src/main.c ****         e = e * 100;
 667              		.loc 2 74 0
 668 00a4 D7E90201 		ldrd	r0, [r7, #8]
 669 00a8 4FF00002 		mov	r2, #0
 670 00ac 4FF08043 		mov	r3, #1073741824
 671 00b0 03F5B203 		add	r3, r3, #5832704
 672 00b4 FFF7FEFF 		bl	__aeabi_dmul
 673 00b8 0246     		mov	r2, r0
 674 00ba 0B46     		mov	r3, r1
 675 00bc C7E90223 		strd	r2, [r7, #8]
  75:../src/main.c ****         //  Call the assembly language function pid_ctrl() here
  76:../src/main.c ****         extern int pid_ctrl(e, st);
  77:../src/main.c ****         e = e / 100;
 676              		.loc 2 77 0
 677 00c0 D7E90201 		ldrd	r0, [r7, #8]
 678 00c4 4FF00002 		mov	r2, #0
 679 00c8 4FF08043 		mov	r3, #1073741824
 680 00cc 03F5B203 		add	r3, r3, #5832704
 681 00d0 FFF7FEFF 		bl	__aeabi_ddiv
 682 00d4 0246     		mov	r2, r0
 683 00d6 0B46     		mov	r3, r1
 684 00d8 C7E90223 		strd	r2, [r7, #8]
  78:../src/main.c **** 
  79:../src/main.c ****        	printf("%lf\n",e);
 685              		.loc 2 79 0
 686 00dc 40F20003 		movw	r3, #:lower16:.LC0
 687 00e0 C0F20003 		movt	r3, #:upper16:.LC0
 688 00e4 1846     		mov	r0, r3
 689 00e6 D7E90223 		ldrd	r2, [r7, #8]
 690 00ea FFF7FEFF 		bl	printf
 691              	.LBE2:
  67:../src/main.c ****     for (i=0; i<50; i++)
 692              		.loc 2 67 0
 693 00ee 7B6B     		ldr	r3, [r7, #52]
 694 00f0 03F10103 		add	r3, r3, #1
 695 00f4 7B63     		str	r3, [r7, #52]
 696              	.L17:
  67:../src/main.c ****     for (i=0; i<50; i++)
 697              		.loc 2 67 0 is_stmt 0 discriminator 1
 698 00f6 7B6B     		ldr	r3, [r7, #52]
 699 00f8 312B     		cmp	r3, #49
 700 00fa ACDD     		ble	.L20
  80:../src/main.c ****     }
  81:../src/main.c ****     stopTicks = usTicks;
 701              		.loc 2 81 0 is_stmt 1
 702 00fc 40F20003 		movw	r3, #:lower16:usTicks
 703 0100 C0F20003 		movt	r3, #:upper16:usTicks
 704 0104 1B68     		ldr	r3, [r3, #0]
 705 0106 7B60     		str	r3, [r7, #4]
  82:../src/main.c ****     printf("Time taken (ASM version): %ld microseconds\n",(stopTicks-startTicks));
 706              		.loc 2 82 0
 707 0108 40F20003 		movw	r3, #:lower16:.LC1
 708 010c C0F20003 		movt	r3, #:upper16:.LC1
 709 0110 7968     		ldr	r1, [r7, #4]
 710 0112 FA69     		ldr	r2, [r7, #28]
 711 0114 8A1A     		subs	r2, r1, r2
 712 0116 1846     		mov	r0, r3
 713 0118 1146     		mov	r1, r2
 714 011a FFF7FEFF 		bl	printf
  83:../src/main.c **** 
  84:../src/main.c **** //  C version
  85:../src/main.c ****     sp = 1.0;
 715              		.loc 2 85 0
 716 011e 4FF00002 		mov	r2, #0
 717 0122 4FF07E53 		mov	r3, #1065353216
 718 0126 03F5E003 		add	r3, r3, #7340032
 719 012a C7E90823 		strd	r2, [r7, #32]
  86:../src/main.c ****     u = 0.0;
 720              		.loc 2 86 0
 721 012e 4FF00002 		mov	r2, #0
 722 0132 4FF00003 		mov	r3, #0
 723 0136 C7E90A23 		strd	r2, [r7, #40]
  87:../src/main.c ****     startTicks = usTicks;
 724              		.loc 2 87 0
 725 013a 40F20003 		movw	r3, #:lower16:usTicks
 726 013e C0F20003 		movt	r3, #:upper16:usTicks
 727 0142 1B68     		ldr	r3, [r3, #0]
 728 0144 FB61     		str	r3, [r7, #28]
  88:../src/main.c ****     for (i=0; i<50; i++)
 729              		.loc 2 88 0
 730 0146 4FF00003 		mov	r3, #0
 731 014a 7B63     		str	r3, [r7, #52]
 732 014c 3CE0     		b	.L21
 733              	.L24:
  89:../src/main.c ****     {
  90:../src/main.c ****         if (i==0) st=1; else st=0;
 734              		.loc 2 90 0
 735 014e 7B6B     		ldr	r3, [r7, #52]
 736 0150 002B     		cmp	r3, #0
 737 0152 03D1     		bne	.L22
 738              		.loc 2 90 0 is_stmt 0 discriminator 1
 739 0154 4FF00103 		mov	r3, #1
 740 0158 3B63     		str	r3, [r7, #48]
 741 015a 02E0     		b	.L23
 742              	.L22:
 743              		.loc 2 90 0 discriminator 2
 744 015c 4FF00003 		mov	r3, #0
 745 0160 3B63     		str	r3, [r7, #48]
 746              	.L23:
  91:../src/main.c **** 
  92:../src/main.c ****         y = plant(u,st,-0.8,0.2); // Do NOT change the plant parameters
 747              		.loc 2 92 0 is_stmt 1
 748 0162 2BA3     		adr	r3, .L26
 749 0164 D3E90023 		ldrd	r2, [r3]
 750 0168 CDE90023 		strd	r2, [sp]
 751 016c 2AA3     		adr	r3, .L26+8
 752 016e D3E90023 		ldrd	r2, [r3]
 753 0172 CDE90223 		strd	r2, [sp, #8]
 754 0176 D7E90A01 		ldrd	r0, [r7, #40]
 755 017a 3A6B     		ldr	r2, [r7, #48]
 756 017c FFF7FEFF 		bl	plant
 757 0180 0246     		mov	r2, r0
 758 0182 0B46     		mov	r3, r1
 759 0184 C7E90423 		strd	r2, [r7, #16]
  93:../src/main.c ****         e = sp - y;
 760              		.loc 2 93 0
 761 0188 D7E90801 		ldrd	r0, [r7, #32]
 762 018c D7E90423 		ldrd	r2, [r7, #16]
 763 0190 FFF7FEFF 		bl	__aeabi_dsub
 764 0194 0246     		mov	r2, r0
 765 0196 0B46     		mov	r3, r1
 766 0198 C7E90223 		strd	r2, [r7, #8]
  94:../src/main.c **** 
  95:../src/main.c ****         // PID controller written in C
  96:../src/main.c ****         u = PIDcontrol(e, st);
 767              		.loc 2 96 0
 768 019c D7E90201 		ldrd	r0, [r7, #8]
 769 01a0 3A6B     		ldr	r2, [r7, #48]
 770 01a2 FFF7FEFF 		bl	PIDcontrol
 771 01a6 0246     		mov	r2, r0
 772 01a8 0B46     		mov	r3, r1
 773 01aa C7E90A23 		strd	r2, [r7, #40]
  97:../src/main.c **** 
  98:../src/main.c ****        	printf("%lf\n",e);
 774              		.loc 2 98 0
 775 01ae 40F20003 		movw	r3, #:lower16:.LC0
 776 01b2 C0F20003 		movt	r3, #:upper16:.LC0
 777 01b6 1846     		mov	r0, r3
 778 01b8 D7E90223 		ldrd	r2, [r7, #8]
 779 01bc FFF7FEFF 		bl	printf
  88:../src/main.c ****     for (i=0; i<50; i++)
 780              		.loc 2 88 0
 781 01c0 7B6B     		ldr	r3, [r7, #52]
 782 01c2 03F10103 		add	r3, r3, #1
 783 01c6 7B63     		str	r3, [r7, #52]
 784              	.L21:
  88:../src/main.c ****     for (i=0; i<50; i++)
 785              		.loc 2 88 0 is_stmt 0 discriminator 1
 786 01c8 7B6B     		ldr	r3, [r7, #52]
 787 01ca 312B     		cmp	r3, #49
 788 01cc BFDD     		ble	.L24
  99:../src/main.c ****     }
 100:../src/main.c ****     stopTicks = usTicks;
 789              		.loc 2 100 0 is_stmt 1
 790 01ce 40F20003 		movw	r3, #:lower16:usTicks
 791 01d2 C0F20003 		movt	r3, #:upper16:usTicks
 792 01d6 1B68     		ldr	r3, [r3, #0]
 793 01d8 7B60     		str	r3, [r7, #4]
 101:../src/main.c ****     printf("Time taken (C version): %ld microseconds\n",(stopTicks-startTicks));
 794              		.loc 2 101 0
 795 01da 40F20003 		movw	r3, #:lower16:.LC2
 796 01de C0F20003 		movt	r3, #:upper16:.LC2
 797 01e2 7968     		ldr	r1, [r7, #4]
 798 01e4 FA69     		ldr	r2, [r7, #28]
 799 01e6 8A1A     		subs	r2, r1, r2
 800 01e8 1846     		mov	r0, r3
 801 01ea 1146     		mov	r1, r2
 802 01ec FFF7FEFF 		bl	printf
 803              	.L25:
 102:../src/main.c **** 
 103:../src/main.c ****     // Enter an infinite loop, just incrementing a counter
 104:../src/main.c **** 	// This is for convenience to allow registers, variables and memory locations to be inspected at t
 105:../src/main.c **** 	volatile static int loop = 0;
 106:../src/main.c **** 	while (1) {
 107:../src/main.c **** 		loop++;
 804              		.loc 2 107 0 discriminator 1
 805 01f0 40F20003 		movw	r3, #:lower16:loop.4880
 806 01f4 C0F20003 		movt	r3, #:upper16:loop.4880
 807 01f8 1B68     		ldr	r3, [r3, #0]
 808 01fa 03F10102 		add	r2, r3, #1
 809 01fe 40F20003 		movw	r3, #:lower16:loop.4880
 810 0202 C0F20003 		movt	r3, #:upper16:loop.4880
 811 0206 1A60     		str	r2, [r3, #0]
 108:../src/main.c **** 	}
 812              		.loc 2 108 0 discriminator 1
 813 0208 F2E7     		b	.L25
 814              	.L27:
 815 020a 00BFAFF3 		.align	3
 815      0080
 816              	.L26:
 817 0210 9A999999 		.word	-1717986918
 818 0214 9999E9BF 		.word	-1075209831
 819 0218 9A999999 		.word	-1717986918
 820 021c 9999C93F 		.word	1070176665
 821              		.cfi_endproc
 822              	.LFE32:
 824              		.bss
 825              		.align	2
 826              	loop.4880:
 827 0004 00000000 		.space	4
 828              		.align	3
 829              	enOld.4859:
 830 0008 00000000 		.space	8
 830      00000000 
 831              		.align	3
 832              	sn.4858:
 833 0010 00000000 		.space	8
 833      00000000 
 834              		.data
 835              		.align	3
 838              	Kp.4855:
 839 0000 00000000 		.word	0
 840 0004 0000D03F 		.word	1070596096
 841              		.align	3
 844              	Ki.4856:
 845 0008 9A999999 		.word	-1717986918
 846 000c 9999B93F 		.word	1069128089
 847              		.align	3
 850              	Kd.4857:
 851 0010 9A999999 		.word	-1717986918
 852 0014 9999E93F 		.word	1072273817
 853              		.bss
 854              		.align	3
 855              	un.4860:
 856 0018 00000000 		.space	8
 856      00000000 
 857              		.align	3
 858              	x4.4849:
 859 0020 00000000 		.space	8
 859      00000000 
 860              		.align	3
 861              	x3.4848:
 862 0028 00000000 		.space	8
 862      00000000 
 863              		.align	3
 864              	x2.4847:
 865 0030 00000000 		.space	8
 865      00000000 
 866              		.align	3
 867              	x1.4846:
 868 0038 00000000 		.space	8
 868      00000000 
 869              		.align	3
 870              	y.4850:
 871 0040 00000000 		.space	8
 871      00000000 
 872              		.text
 873              	.Letext0:
 874              		.file 3 "F:\\EE2024\\Lib_CMSISv1p30_LPC17xx\\inc/LPC17xx.h"
 875              		.file 4 "c:\\labsoft\\ee2024\\lpcxpresso_6.1.4_194\\lpcxpresso\\tools\\bin\\../lib/gcc/arm-none-ea
 876              		.file 5 "F:\\EE2024\\Lib_CMSISv1p30_LPC17xx\\inc/system_LPC17xx.h"
DEFINED SYMBOLS
                            *ABS*:00000000 main.c
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:19     .text.NVIC_SetPriority:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:23     .text.NVIC_SetPriority:00000000 NVIC_SetPriority
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:82     .text.SysTick_Config:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:86     .text.SysTick_Config:00000000 SysTick_Config
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:150    .bss:00000000 usTicks
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:147    .bss:00000000 $d
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:153    .text.SysTick_Handler:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:158    .text.SysTick_Handler:00000000 SysTick_Handler
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:192    .text.plant:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:197    .text.plant:00000000 plant
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:858    .bss:00000020 x4.4849
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:861    .bss:00000028 x3.4848
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:864    .bss:00000030 x2.4847
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:867    .bss:00000038 x1.4846
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:870    .bss:00000040 y.4850
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:382    .text.PIDcontrol:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:387    .text.PIDcontrol:00000000 PIDcontrol
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:829    .bss:00000008 enOld.4859
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:832    .bss:00000010 sn.4858
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:838    .data:00000000 Kp.4855
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:844    .data:00000008 Ki.4856
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:850    .data:00000010 Kd.4857
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:855    .bss:00000018 un.4860
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:572    .rodata:00000000 $d
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:573    .rodata:00000000 .LC0
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:576    .rodata:00000008 .LC1
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:579    .rodata:00000034 .LC2
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:582    .text.main:00000000 $t
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:587    .text.main:00000000 main
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:826    .bss:00000004 loop.4880
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:817    .text.main:00000210 $d
C:\Users\Student\AppData\Local\Temp\cckRSxZK.s:835    .data:00000000 $d
                     .debug_frame:00000010 $d

UNDEFINED SYMBOLS
__aeabi_dsub
__aeabi_dmul
__aeabi_dadd
__aeabi_dcmpgt
__aeabi_dcmplt
__aeabi_ddiv
SystemCoreClock
printf
