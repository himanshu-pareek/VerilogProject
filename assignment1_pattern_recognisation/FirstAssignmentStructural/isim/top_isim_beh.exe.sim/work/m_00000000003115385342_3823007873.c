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
static const char *ng0 = "C:/Users/student/Documents/group28Lab/FirstAssignmentStructural/top.v";
static const char *ng1 = "dump.vcd";



static void Initial_32_0(char *t0)
{

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    xsi_vcd_dumpfile(ng1);
    xsi_set_current_line(34, ng0);
    xsi_vcd_dumpvars(t0);

LAB1:    return;
}


extern void work_m_00000000003115385342_3823007873_init()
{
	static char *pe[] = {(void *)Initial_32_0};
	xsi_register_didat("work_m_00000000003115385342_3823007873", "isim/top_isim_beh.exe.sim/work/m_00000000003115385342_3823007873.didat");
	xsi_register_executes(pe);
}
