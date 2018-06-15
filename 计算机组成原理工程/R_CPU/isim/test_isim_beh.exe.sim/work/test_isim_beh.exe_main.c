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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001358910285_1420689212_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000002621774987_0219621648_init();
    xilinxcorelib_ver_m_00000000001603977570_2419141942_init();
    work_m_00000000000403262735_2499224580_init();
    work_m_00000000003131718267_2220189930_init();
    work_m_00000000004178229699_0946933723_init();
    work_m_00000000003542727664_0147336180_init();
    work_m_00000000002206993762_0886308060_init();
    work_m_00000000000010503710_3963991466_init();
    work_m_00000000002934216081_0970010518_init();
    work_m_00000000002449349517_1985558087_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002449349517_1985558087");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
