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
static const char *ng0 = "/media/himanshu/a46d1c48-824a-451c-9954-bcad1a761415/assignment1/FirstAssignmentBehavioral/outputFn_beh.v";



static void Always_29_0(char *t0)
{
    char t11[8];
    char t14[8];
    char t41[8];
    char t49[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3000);
    *((int *)t2) = 1;
    t3 = (t0 + 2712);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t11) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t16 = (t10 & 1);
    *((unsigned int *)t2) = t16;
    t5 = (t0 + 1368U);
    t12 = *((char **)t5);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t13 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t13);
    t21 = (t20 >> 0);
    t23 = (t21 & 1);
    *((unsigned int *)t5) = t23;
    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t14);
    t26 = (t24 & t25);
    *((unsigned int *)t41) = t26;
    t15 = (t11 + 4);
    t22 = (t14 + 4);
    t28 = (t41 + 4);
    t27 = *((unsigned int *)t15);
    t31 = *((unsigned int *)t22);
    t32 = (t27 | t31);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t28);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB18;

LAB19:
LAB20:    t39 = (t0 + 1768);
    xsi_vlogvar_assign_value(t39, t41, 0, 0, 1);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(31, ng0);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t14, 0, 8);
    t12 = (t14 + 4);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 >> 1);
    t21 = (t20 & 1);
    *((unsigned int *)t12) = t21;
    memset(t11, 0, 8);
    t22 = (t14 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t14);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t22) == 0)
        goto LAB9;

LAB11:    t28 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t28) = 1;

LAB12:    t29 = (t11 + 4);
    t30 = (t14 + 4);
    t31 = *((unsigned int *)t14);
    t32 = (~(t31));
    *((unsigned int *)t11) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB14;

LAB13:    t37 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t37 & 1U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 1U);
    t39 = (t0 + 1368U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t41 + 4);
    t42 = (t40 + 4);
    t43 = *((unsigned int *)t40);
    t44 = (t43 >> 0);
    t45 = (t44 & 1);
    *((unsigned int *)t41) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 >> 0);
    t48 = (t47 & 1);
    *((unsigned int *)t39) = t48;
    t50 = *((unsigned int *)t11);
    t51 = *((unsigned int *)t41);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t11 + 4);
    t54 = (t41 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB15;

LAB16:
LAB17:    t81 = (t0 + 1768);
    xsi_vlogvar_assign_value(t81, t49, 0, 0, 1);
    goto LAB8;

LAB9:    *((unsigned int *)t11) = 1;
    goto LAB12;

LAB14:    t33 = *((unsigned int *)t11);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t11) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB13;

LAB15:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t11 + 4);
    t64 = (t41 + 4);
    t65 = *((unsigned int *)t11);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t41);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB17;

LAB18:    t35 = *((unsigned int *)t41);
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t41) = (t35 | t36);
    t29 = (t11 + 4);
    t30 = (t14 + 4);
    t37 = *((unsigned int *)t11);
    t38 = (~(t37));
    t43 = *((unsigned int *)t29);
    t44 = (~(t43));
    t45 = *((unsigned int *)t14);
    t46 = (~(t45));
    t47 = *((unsigned int *)t30);
    t48 = (~(t47));
    t73 = (t38 & t44);
    t74 = (t46 & t48);
    t50 = (~(t73));
    t51 = (~(t74));
    t52 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t52 & t50);
    t56 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t56 & t51);
    t57 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t57 & t50);
    t58 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t58 & t51);
    goto LAB20;

}


extern void work_m_04970083528220131549_1609735133_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_04970083528220131549_1609735133", "isim/top_isim_beh.exe.sim/work/m_04970083528220131549_1609735133.didat");
	xsi_register_executes(pe);
}
