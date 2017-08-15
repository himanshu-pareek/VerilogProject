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
    work_m_07817166588871578795_1379444059_init();
    work_m_04970083528220131549_1609735133_init();
    work_m_05194396834047706500_2521982126_init();
    work_m_16297242077966988676_1108082160_init();
    work_m_10765065556252855268_3052352512_init();
    work_m_12434898900232495425_3823007873_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_12434898900232495425_3823007873");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
