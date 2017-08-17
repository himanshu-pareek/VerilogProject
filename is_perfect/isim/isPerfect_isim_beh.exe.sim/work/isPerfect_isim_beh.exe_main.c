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
    work_m_00333440304927393573_3398456003_init();
    work_m_15888549389341649403_0996849888_init();
    work_m_17528951608183972075_0079611593_init();
    work_m_10582316097532711183_2646054771_init();
    work_m_10580784518547446734_1941567071_init();
    work_m_02483215033700492708_1040318656_init();
    work_m_06947859646767029049_3484155763_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_06947859646767029049_3484155763");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
