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
    xilinxcorelib_ver_m_00000000000277421008_1724670381_init();
    xilinxcorelib_ver_m_00000000001603977570_3505676336_init();
    work_m_00000000000403262735_2220189930_init();
    work_m_00000000000715902838_3383896982_init();
    work_m_00000000001838920596_3069445100_init();
    work_m_00000000001360185713_3913188552_init();
    work_m_00000000004203662098_2725559894_init();
    xilinxcorelib_ver_m_00000000000277421008_1983907310_init();
    xilinxcorelib_ver_m_00000000001603977570_0910348612_init();
    work_m_00000000000403262735_0450250084_init();
    work_m_00000000002666063708_3823007873_init();
    work_m_00000000003443609714_3721309207_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003443609714_3721309207");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
