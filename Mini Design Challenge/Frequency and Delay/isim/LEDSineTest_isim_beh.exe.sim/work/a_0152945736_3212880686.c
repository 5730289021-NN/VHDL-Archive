/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/noraw/Documents/VHDL/PWM/Sine_ClkPerTickDecoder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0152945736_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4932);
    t13 = xsi_mem_cmp(t1, t3, 3U);
    if (t13 == 1)
        goto LAB9;

LAB17:    t7 = (t0 + 4935);
    t14 = xsi_mem_cmp(t7, t3, 3U);
    if (t14 == 1)
        goto LAB10;

LAB18:    t9 = (t0 + 4938);
    t15 = xsi_mem_cmp(t9, t3, 3U);
    if (t15 == 1)
        goto LAB11;

LAB19:    t11 = (t0 + 4941);
    t16 = xsi_mem_cmp(t11, t3, 3U);
    if (t16 == 1)
        goto LAB12;

LAB20:    t17 = (t0 + 4944);
    t19 = xsi_mem_cmp(t17, t3, 3U);
    if (t19 == 1)
        goto LAB13;

LAB21:    t20 = (t0 + 4947);
    t22 = xsi_mem_cmp(t20, t3, 3U);
    if (t22 == 1)
        goto LAB14;

LAB22:    t23 = (t0 + 4950);
    t25 = xsi_mem_cmp(t23, t3, 3U);
    if (t25 == 1)
        goto LAB15;

LAB23:
LAB16:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5086);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);

LAB8:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 4913);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 19U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB9:    xsi_set_current_line(51, ng0);
    t26 = (t0 + 4953);
    t28 = (t0 + 3072);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 19U);
    xsi_driver_first_trans_fast_port(t28);
    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4972);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB11:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4991);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5010);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB13:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5029);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB14:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5048);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB15:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5067);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 19U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB24:;
}


extern void work_a_0152945736_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0152945736_3212880686_p_0};
	xsi_register_didat("work_a_0152945736_3212880686", "isim/LEDSineTest_isim_beh.exe.sim/work/a_0152945736_3212880686.didat");
	xsi_register_executes(pe);
}
