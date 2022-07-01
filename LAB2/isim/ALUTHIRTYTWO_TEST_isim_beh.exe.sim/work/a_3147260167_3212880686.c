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
static const char *ng0 = "G:/xlinx_projects/computer_arch/alu/Comparison_Unit.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3147260167_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 8207);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 8210);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB13:    t9 = (t0 + 8213);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB14:    t12 = (t0 + 8216);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB15:    t15 = (t0 + 8219);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB16:    t18 = (t0 + 8222);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(95, ng0);

LAB21:    t2 = (t0 + 4840);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(96, ng0);
    t21 = (t0 + 2952U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t21 = (t0 + 4936);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t23;
    xsi_driver_first_trans_fast(t21);
    goto LAB4;

LAB6:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 4936);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 4936);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 4936);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 4936);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 4936);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t23;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 4840);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}

static void work_a_3147260167_3212880686_p_1(char *t0)
{
    char t6[16];
    char t8[16];
    char t13[16];
    char t18[16];
    char t20[16];
    char t26[16];
    char *t1;
    char *t3;
    char *t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t14;
    int t15;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    unsigned char t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 8225);
    t3 = (t0 + 8241);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 15;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (15 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t13 + 0U);
    t14 = (t10 + 0U);
    *((int *)t14) = 0;
    t14 = (t10 + 4U);
    *((int *)t14) = 11;
    t14 = (t10 + 8U);
    *((int *)t14) = 1;
    t15 = (11 - 0);
    t12 = (t15 * 1);
    t12 = (t12 + 1);
    t14 = (t10 + 12U);
    *((unsigned int *)t14) = t12;
    t5 = xsi_base_array_concat(t5, t6, t7, (char)97, t1, t8, (char)97, t3, t13, (char)101);
    t14 = (t0 + 8253);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 2;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (2 - 0);
    t12 = (t23 * 1);
    t12 = (t12 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t12;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t5, t6, (char)97, t14, t20, (char)101);
    t22 = (t0 + 2152U);
    t24 = *((char **)t22);
    t25 = *((unsigned char *)t24);
    t27 = ((IEEE_P_2592010699) + 4024);
    t22 = xsi_base_array_concat(t22, t26, t27, (char)97, t17, t18, (char)99, t25, (char)101);
    t12 = (16U + 12U);
    t28 = (t12 + 3U);
    t29 = (t28 + 1U);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB5;

LAB6:    t31 = (t0 + 5000);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t22, 32U);
    xsi_driver_first_trans_fast_port(t31);

LAB2:    t36 = (t0 + 4856);
    *((int *)t36) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t29, 0);
    goto LAB6;

}


extern void work_a_3147260167_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3147260167_3212880686_p_0,(void *)work_a_3147260167_3212880686_p_1};
	xsi_register_didat("work_a_3147260167_3212880686", "isim/ALUTHIRTYTWO_TEST_isim_beh.exe.sim/work/a_3147260167_3212880686.didat");
	xsi_register_executes(pe);
}
