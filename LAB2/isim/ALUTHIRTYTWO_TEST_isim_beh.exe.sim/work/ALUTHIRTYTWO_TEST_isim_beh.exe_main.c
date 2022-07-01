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

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_2702347930_3212880686_init();
    work_a_3872875641_3212880686_init();
    work_a_1252314765_3212880686_init();
    work_a_2814615737_3212880686_init();
    work_a_0499876475_3212880686_init();
    work_a_4210745637_3212880686_init();
    work_a_2056313456_3212880686_init();
    work_a_0651382261_3212880686_init();
    work_a_4175101747_3212880686_init();
    work_a_3147260167_3212880686_init();
    work_a_3116956239_3212880686_init();
    work_a_2674555753_3212880686_init();
    work_a_2894613004_3212880686_init();
    work_a_3643373025_3212880686_init();
    work_a_3252683731_3212880686_init();
    work_a_0226264971_3212880686_init();
    work_a_3897932137_3212880686_init();
    work_a_0767101491_3212880686_init();
    work_a_1666752601_3212880686_init();
    work_a_4260864439_3212880686_init();
    work_a_2030321892_3212880686_init();
    work_a_2006043761_3212880686_init();
    work_a_1663506939_2372691052_init();


    xsi_register_tops("work_a_1663506939_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
