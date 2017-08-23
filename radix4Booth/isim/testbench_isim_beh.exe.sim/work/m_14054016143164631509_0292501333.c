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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/himanshu/a46d1c48-824a-451c-9954-bcad1a761415/VerilogProjects/radix4Booth/radix4booth.v";
static int ng1[] = {0, 0};



static void Initial_355_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(355, ng0);

LAB2:    xsi_set_current_line(356, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 18);

LAB1:    return;
}


extern void work_m_14054016143164631509_0292501333_init()
{
	static char *pe[] = {(void *)Initial_355_0};
	xsi_register_didat("work_m_14054016143164631509_0292501333", "isim/testbench_isim_beh.exe.sim/work/m_14054016143164631509_0292501333.didat");
	xsi_register_executes(pe);
}
