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
static const char *ng0 = "C:/Users/noraw/Documents/VHDL/Sound/Core.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1554319969_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6128);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t7 = (t0 + 4208U);
    t8 = *((char **)t7);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t7 = (t0 + 4208U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t10;
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t1 = (t9 >= 25000000);
    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 1);
    t2 = (t0 + 4328U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t10;
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB46;

LAB48:    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB52;

LAB53:
LAB47:    goto LAB3;

LAB5:    t2 = (t0 + 1152U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t10 = *((int *)t7);
    t12 = (t10 + 1);
    t2 = (t0 + 6240);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t12;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t1 = (t9 > 20);
    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    if (t9 == 0)
        goto LAB15;

LAB24:    if (t9 == 14)
        goto LAB15;

LAB25:    if (t9 == 20)
        goto LAB15;

LAB26:    if (t9 == 1)
        goto LAB16;

LAB27:    if (t9 == 13)
        goto LAB16;

LAB28:    if (t9 == 2)
        goto LAB17;

LAB29:    if (t9 == 12)
        goto LAB17;

LAB30:    if (t9 == 15)
        goto LAB17;

LAB31:    if (t9 == 19)
        goto LAB17;

LAB32:    if (t9 == 3)
        goto LAB18;

LAB33:    if (t9 == 11)
        goto LAB18;

LAB34:    if (t9 == 4)
        goto LAB19;

LAB35:    if (t9 == 10)
        goto LAB19;

LAB36:    if (t9 == 16)
        goto LAB19;

LAB37:    if (t9 == 18)
        goto LAB19;

LAB38:    if (t9 == 5)
        goto LAB20;

LAB39:    if (t9 == 9)
        goto LAB20;

LAB40:    if (t9 == 6)
        goto LAB21;

LAB41:    if (t9 == 8)
        goto LAB21;

LAB42:    if (t9 == 7)
        goto LAB22;

LAB43:    if (t9 == 17)
        goto LAB22;

LAB44:
LAB23:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 86000;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 4778;
    xsi_driver_first_trans_fast(t2);

LAB14:    goto LAB9;

LAB11:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 6240);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 6304);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB15:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6368);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    *((int *)t13) = 86000;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 9555;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB16:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 76620;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 8513;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB17:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 68259;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 7584;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB18:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 64428;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 7159;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB19:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 57398;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 6378;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB20:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 51137;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 5682;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB21:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 45558;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 5062;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB22:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 43001;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6432);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 9555;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB45:;
LAB46:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4328U);
    t7 = *((char **)t2);
    t9 = *((int *)t7);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t10 = *((int *)t8);
    t5 = (t9 >= t10);
    if (t5 != 0)
        goto LAB49;

LAB51:
LAB50:    goto LAB47;

LAB49:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 6304);
    t11 = (t2 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    goto LAB50;

LAB52:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4328U);
    t7 = *((char **)t2);
    t9 = *((int *)t7);
    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t10 = *((int *)t8);
    t5 = (t9 >= t10);
    if (t5 != 0)
        goto LAB54;

LAB56:
LAB55:    goto LAB47;

LAB54:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6304);
    t11 = (t2 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    goto LAB55;

}

static void work_a_1554319969_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t1, t4, 8);
    t5 = (t0 + 6496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 6144);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1554319969_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6560);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6160);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1554319969_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1554319969_3212880686_p_0,(void *)work_a_1554319969_3212880686_p_1,(void *)work_a_1554319969_3212880686_p_2};
	xsi_register_didat("work_a_1554319969_3212880686", "isim/TestBench_isim_beh.exe.sim/work/a_1554319969_3212880686.didat");
	xsi_register_executes(pe);
}
