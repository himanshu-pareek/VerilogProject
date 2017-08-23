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
static const char *ng0 = "/media/himanshu/a46d1c48-824a-451c-9954-bcad1a761415/VerilogProjects/radix4Booth/radix4boothTB.v";
static int ng1[] = {120, 0};
static int ng2[] = {3, 0};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static const char *ng5 = "%d * %d = %d";
static const char *ng6 = "Go=0 %d * %d = %d";
static int ng7[] = {80, 0};
static const char *ng8 = "state = %d,\tover = %d";



static void Initial_29_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);

LAB4:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 60000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 1928);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    memset(t9, 0, 8);
    t10 = (t9 + 4);
    t12 = (t11 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (t13 >> 1);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 65535U);
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 65535U);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t5, 8, (char)118, t8, 8, (char)118, t9, 16);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 3288);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1928);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    memset(t9, 0, 8);
    t11 = (t9 + 4);
    t19 = (t12 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (t13 >> 1);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t19);
    t16 = (t15 >> 1);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 65535U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 65535U);
    xsi_vlogfile_write(1, 0, 0, ng6, 4, t0, (char)118, t6, 8, (char)118, t10, 8, (char)118, t9, 16);
    goto LAB1;

}

static void Initial_47_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(50, ng0);

LAB5:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(50, ng0);

LAB8:    xsi_set_current_line(51, ng0);
    t13 = (t0 + 3536);
    xsi_process_wait(t13, 1000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(52, ng0);
    t14 = (t0 + 1368U);
    t15 = *((char **)t14);
    t14 = (t0 + 1208U);
    t16 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 0, ng8, 3, t0, (char)118, t15, 2, (char)118, t16, 1);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t5) == 0)
        goto LAB10;

LAB12:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;

LAB13:    t13 = (t6 + 4);
    t14 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    *((unsigned int *)t6) = t18;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB15;

LAB14:    t23 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t23 & 1U);
    t24 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t24 & 1U);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t6, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

LAB10:    *((unsigned int *)t6) = 1;
    goto LAB13;

LAB15:    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t6) = (t19 | t20);
    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t21 | t22);
    goto LAB14;

}


extern void work_m_17366955350167197436_1949178628_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Initial_47_1};
	xsi_register_didat("work_m_17366955350167197436_1949178628", "isim/testbench_isim_beh.exe.sim/work/m_17366955350167197436_1949178628.didat");
	xsi_register_executes(pe);
}
