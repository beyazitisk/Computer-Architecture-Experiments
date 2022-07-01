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
static const char *ng0 = "G:/xlinx_projects/computer_arch/single_cycle_mips/instruct_mem.vhd";



static void work_a_3903174234_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4480);
    t4 = xsi_mem_cmp(t1, t2, 32U);
    if (t4 == 1)
        goto LAB3;

LAB15:    t5 = (t0 + 4512);
    t7 = xsi_mem_cmp(t5, t2, 32U);
    if (t7 == 1)
        goto LAB4;

LAB16:    t8 = (t0 + 4544);
    t10 = xsi_mem_cmp(t8, t2, 32U);
    if (t10 == 1)
        goto LAB5;

LAB17:    t11 = (t0 + 4576);
    t13 = xsi_mem_cmp(t11, t2, 32U);
    if (t13 == 1)
        goto LAB6;

LAB18:    t14 = (t0 + 4608);
    t16 = xsi_mem_cmp(t14, t2, 32U);
    if (t16 == 1)
        goto LAB7;

LAB19:    t17 = (t0 + 4640);
    t19 = xsi_mem_cmp(t17, t2, 32U);
    if (t19 == 1)
        goto LAB8;

LAB20:    t20 = (t0 + 4672);
    t22 = xsi_mem_cmp(t20, t2, 32U);
    if (t22 == 1)
        goto LAB9;

LAB21:    t23 = (t0 + 4704);
    t25 = xsi_mem_cmp(t23, t2, 32U);
    if (t25 == 1)
        goto LAB10;

LAB22:    t26 = (t0 + 4736);
    t28 = xsi_mem_cmp(t26, t2, 32U);
    if (t28 == 1)
        goto LAB11;

LAB23:    t29 = (t0 + 4768);
    t31 = xsi_mem_cmp(t29, t2, 32U);
    if (t31 == 1)
        goto LAB12;

LAB24:    t32 = (t0 + 4800);
    t34 = xsi_mem_cmp(t32, t2, 32U);
    if (t34 == 1)
        goto LAB13;

LAB25:
LAB14:    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t35 = (t0 + 4832);
    t37 = (t0 + 2752);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t35, 32U);
    xsi_driver_first_trans_fast_port(t37);
    goto LAB2;

LAB4:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4864);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4896);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4928);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4960);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4992);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB9:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5024);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5056);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB11:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5088);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB12:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5120);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB13:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5152);
    t3 = (t0 + 2752);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB26:;
}


extern void work_a_3903174234_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3903174234_3212880686_p_0};
	xsi_register_didat("work_a_3903174234_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_3903174234_3212880686.didat");
	xsi_register_executes(pe);
}
