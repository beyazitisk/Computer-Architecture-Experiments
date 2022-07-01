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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_4084620457_3212880686_init();
    work_a_3002075066_3212880686_init();
    work_a_1208337864_3212880686_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0264196382_3212880686_init();
    work_a_0777442441_3212880686_init();
    work_a_2110357975_3212880686_init();
    work_a_1266305351_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_0909257147_3212880686_init();
    work_a_3945029402_3212880686_init();
    work_a_3259637035_3212880686_init();
    work_a_1410378538_3212880686_init();
    work_a_1054457905_3212880686_init();
    work_a_3218097948_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1640669797_3212880686_init();
    work_a_2274648968_3212880686_init();
    work_a_1833817950_3212880686_init();
    work_a_3903174234_3212880686_init();
    work_a_1335952598_3212880686_init();
    work_a_3622719947_2372691052_init();


    xsi_register_tops("work_a_3622719947_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
