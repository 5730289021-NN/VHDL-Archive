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
static const char *ng0 = "E:/MiniDesignChallenge/TXModule.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2577308952_3212880686_p_0(char *t0)
{
    char t19[16];
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
    int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 7212);
    t11 = xsi_mem_cmp(t1, t3, 1U);
    if (t11 == 1)
        goto LAB9;

LAB12:    t7 = (t0 + 7213);
    t12 = xsi_mem_cmp(t7, t3, 1U);
    if (t12 == 1)
        goto LAB10;

LAB13:
LAB11:
LAB8:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 4616);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7192);
    t4 = (t0 + 4680);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 7208);
    t4 = (t0 + 4744);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4808);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB9:    xsi_set_current_line(69, ng0);
    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t2 = *((unsigned char *)t10);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB8;

LAB10:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 7080U);
    t4 = (t0 + 1832U);
    t7 = *((char **)t4);
    t4 = (t0 + 7048U);
    t2 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 7215);
    t4 = (t0 + 4680);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 7096U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t4 = (t0 + 7064U);
    t2 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 7096U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t12 = (t11 - 9);
    t20 = (t12 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, t11);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t7 = (t3 + t22);
    t2 = *((unsigned char *)t7);
    t8 = (t0 + 4616);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t2;
    xsi_driver_first_trans_fast(t8);

LAB24:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 7096U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t3, t1, 1);
    t7 = (t0 + 4744);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t4, 4U);
    xsi_driver_first_trans_fast(t7);

LAB19:    goto LAB8;

LAB14:;
LAB15:    xsi_set_current_line(70, ng0);
    t9 = (t0 + 7214);
    t14 = (t0 + 4872);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 1U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(75, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 7080U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t19, t9, t8, 1);
    t13 = (t19 + 12U);
    t20 = *((unsigned int *)t13);
    t21 = (1U * t20);
    t5 = (16U != t21);
    if (t5 == 1)
        goto LAB21;

LAB22:    t14 = (t0 + 4680);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 16U);
    xsi_driver_first_trans_fast(t14);
    goto LAB19;

LAB21:    xsi_size_not_matching(16U, t21, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(79, ng0);
    t8 = (t0 + 4616);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 4808);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB27:    goto LAB24;

LAB26:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 7231);
    t7 = (t0 + 4872);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t1, 1U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4808);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB27;

}

static void work_a_2577308952_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4936);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4536);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2577308952_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2577308952_3212880686_p_0,(void *)work_a_2577308952_3212880686_p_1};
	xsi_register_didat("work_a_2577308952_3212880686", "isim/TXModule_isim_beh.exe.sim/work/a_2577308952_3212880686.didat");
	xsi_register_executes(pe);
}
