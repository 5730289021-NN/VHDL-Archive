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
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3174797354_3212880686_p_0(char *t0)
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
    char *t11;
    char *t12;
    int t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 7544);
    t13 = xsi_mem_cmp(t1, t3, 2U);
    if (t13 == 1)
        goto LAB9;

LAB12:    t7 = (t0 + 7546);
    t14 = xsi_mem_cmp(t7, t3, 2U);
    if (t14 == 1)
        goto LAB10;

LAB13:
LAB11:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 7588);
    t4 = (t0 + 4968);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t4);

LAB8:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 7524);
    t8 = (t0 + 4840);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 7540);
    t4 = (t0 + 4904);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB9:    xsi_set_current_line(65, ng0);
    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t2 = *((unsigned char *)t10);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB8;

LAB10:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 7392U);
    t4 = (t0 + 1832U);
    t7 = *((char **)t4);
    t4 = (t0 + 7360U);
    t2 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 7566);
    t4 = (t0 + 4840);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 7408U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t19, t3, t1, 1);
    t7 = (t19 + 12U);
    t20 = *((unsigned int *)t7);
    t21 = (1U * t20);
    t2 = (4U != t21);
    if (t2 == 1)
        goto LAB23;

LAB24:    t8 = (t0 + 4904);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 7408U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t4 = (t0 + 7376U);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB25;

LAB27:
LAB26:
LAB19:    goto LAB8;

LAB14:;
LAB15:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 7548);
    t12 = (t0 + 4968);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 7550);
    t4 = (t0 + 4840);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB16;

LAB18:    xsi_set_current_line(71, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 7392U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t19, t9, t8, 1);
    t11 = (t19 + 12U);
    t20 = *((unsigned int *)t11);
    t21 = (1U * t20);
    t5 = (16U != t21);
    if (t5 == 1)
        goto LAB21;

LAB22:    t12 = (t0 + 4840);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB19;

LAB21:    xsi_size_not_matching(16U, t21, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(4U, t21, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(76, ng0);
    t8 = (t0 + 7582);
    t10 = (t0 + 4904);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 7586);
    t4 = (t0 + 4968);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB26;

}

static void work_a_3174797354_3212880686_p_1(char *t0)
{
    char t11[16];
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
    int t12;
    unsigned int t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 7424U);
    t4 = (t0 + 7590);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 5032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 5032);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

LAB8:    xsi_set_current_line(96, ng0);
    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 7408U);
    t14 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t9);
    t15 = (t0 + 2928U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((int *)t15) = t14;
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2928U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    if (t12 == 0)
        goto LAB12;

LAB15:    if (t12 >= 1)
        goto LAB17;

LAB16:
LAB14:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5032);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 2928U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t14 = (t12 - 1);
    t17 = (t14 - 9);
    t13 = (t17 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, t14);
    t18 = (1U * t13);
    t19 = (0 + t18);
    t1 = (t3 + t19);
    t2 = *((unsigned char *)t1);
    t7 = (t0 + 5032);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB17:    if (t12 <= 10)
        goto LAB13;
    else
        goto LAB16;

LAB18:;
}

static void work_a_3174797354_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5096);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4760);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3174797354_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3174797354_3212880686_p_0,(void *)work_a_3174797354_3212880686_p_1,(void *)work_a_3174797354_3212880686_p_2};
	xsi_register_didat("work_a_3174797354_3212880686", "isim/TXModuleTest_isim_beh.exe.sim/work/a_3174797354_3212880686.didat");
	xsi_register_executes(pe);
}
