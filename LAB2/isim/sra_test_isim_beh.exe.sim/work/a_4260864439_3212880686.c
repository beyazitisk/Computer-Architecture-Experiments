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
static const char *ng0 = "G:/xlinx_projects/computer_arch/alu/Sra_op.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_4260864439_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 4476U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t2, t4, t3, (unsigned char)0);
    t6 = (t2 + 12U);
    t7 = *((unsigned int *)t6);
    t7 = (t7 * 1U);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 4492U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t8);
    t11 = xsi_vhdl_bitvec_sra(t11, t5, t7, t10);
    t12 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t1, t11, t2);
    t13 = (t1 + 12U);
    t14 = *((unsigned int *)t13);
    t14 = (t14 * 1U);
    t15 = (32U != t14);
    if (t15 == 1)
        goto LAB2;

LAB3:    t16 = (t0 + 2912);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t12, 32U);
    xsi_driver_first_trans_fast_port(t16);
    t3 = (t0 + 2832);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, t14, 0);
    goto LAB3;

}


extern void work_a_4260864439_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4260864439_3212880686_p_0};
	xsi_register_didat("work_a_4260864439_3212880686", "isim/sra_test_isim_beh.exe.sim/work/a_4260864439_3212880686.didat");
	xsi_register_executes(pe);
}
