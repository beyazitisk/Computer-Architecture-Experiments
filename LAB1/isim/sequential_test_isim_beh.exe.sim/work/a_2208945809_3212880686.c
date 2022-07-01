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
static const char *ng0 = "G:/xlinx_projects/computer_arch/LAB1/paralel_in_ser_out.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2208945809_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4136);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_2208945809_3212880686_p_1(char *t0)
{
    char t17[16];
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t19;
    char *t20;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4056);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB2;

LAB4:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB2;

LAB5:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB2;

LAB6:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB2;

LAB7:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t6 = *((unsigned char *)t1);
    t3 = (t0 + 4200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1672U);
    t5 = *((char **)t3);
    t3 = (t0 + 4264);
    t9 = (t3 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t3 + t16);
    t8 = *((unsigned char *)t1);
    t4 = (t0 + 4200);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t8;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t14 = (3 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t18 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 3;
    t9 = (t5 + 4U);
    *((int *)t9) = 1;
    t9 = (t5 + 8U);
    *((int *)t9) = -1;
    t13 = (1 - 3);
    t19 = (t13 * -1);
    t19 = (t19 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = xsi_base_array_concat(t3, t17, t4, (char)99, (unsigned char)2, (char)97, t1, t18, (char)101);
    t19 = (1U + 3U);
    t6 = (4U != t19);
    if (t6 == 1)
        goto LAB14;

LAB15:    t9 = (t0 + 4264);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t20 = *((char **)t12);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_size_not_matching(4U, t19, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t3 + t16);
    t8 = *((unsigned char *)t1);
    t4 = (t0 + 4200);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t8;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t14 = (3 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t18 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 3;
    t9 = (t5 + 4U);
    *((int *)t9) = 1;
    t9 = (t5 + 8U);
    *((int *)t9) = -1;
    t13 = (1 - 3);
    t19 = (t13 * -1);
    t19 = (t19 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = xsi_base_array_concat(t3, t17, t4, (char)99, (unsigned char)2, (char)97, t1, t18, (char)101);
    t19 = (1U + 3U);
    t6 = (4U != t19);
    if (t6 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 4264);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t20 = *((char **)t12);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_size_not_matching(4U, t19, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t3 + t16);
    t8 = *((unsigned char *)t1);
    t4 = (t0 + 4200);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t8;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t14 = (3 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t18 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 3;
    t9 = (t5 + 4U);
    *((int *)t9) = 1;
    t9 = (t5 + 8U);
    *((int *)t9) = -1;
    t13 = (1 - 3);
    t19 = (t13 * -1);
    t19 = (t19 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = xsi_base_array_concat(t3, t17, t4, (char)99, (unsigned char)2, (char)97, t1, t18, (char)101);
    t19 = (1U + 3U);
    t6 = (4U != t19);
    if (t6 == 1)
        goto LAB24;

LAB25:    t9 = (t0 + 4264);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t20 = *((char **)t12);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB24:    xsi_size_not_matching(4U, t19, 0);
    goto LAB25;

}


extern void work_a_2208945809_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2208945809_3212880686_p_0,(void *)work_a_2208945809_3212880686_p_1};
	xsi_register_didat("work_a_2208945809_3212880686", "isim/sequential_test_isim_beh.exe.sim/work/a_2208945809_3212880686.didat");
	xsi_register_executes(pe);
}
