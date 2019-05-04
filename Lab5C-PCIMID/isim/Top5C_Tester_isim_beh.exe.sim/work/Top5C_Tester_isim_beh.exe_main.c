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
    work_m_00000000003688636183_1733832700_init();
    work_m_00000000001528637952_1273460063_init();
    work_m_00000000001480407545_2138213552_init();
    work_m_00000000001983013728_2133048290_init();
    work_m_00000000001618916138_1392894089_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001618916138_1392894089");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
