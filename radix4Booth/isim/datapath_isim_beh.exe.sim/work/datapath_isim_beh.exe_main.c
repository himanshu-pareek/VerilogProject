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
    work_m_09274692434384286353_3661153227_init();
    work_m_16033229699748316043_0992280429_init();
    work_m_15642128480995131203_2333817871_init();
    work_m_06073632533880736745_1323274903_init();
    work_m_04017202020811419010_2328423239_init();
    work_m_00807633477777193588_2725559894_init();
    work_m_12526366033112205588_1279891299_init();
    work_m_05464816514084149745_1254491588_init();
    work_m_13712334548457056801_3801721563_init();
    work_m_10043380889759548123_0144618455_init();
    work_m_09387378649053635932_3027548060_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_09387378649053635932_3027548060");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}