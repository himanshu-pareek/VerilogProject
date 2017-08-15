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
static const char *ng0 = "/media/himanshu/a46d1c48-824a-451c-9954-bcad1a761415/assignment1/FirstAssignmentBehavioral/stateTransFn_beh.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_34_0(char *t0)
{
    char t7[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 3224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3544);
    *((int *)t2) = 1;
    t3 = (t0 + 3256);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1912U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(36, ng0);
    t9 = (t0 + 1592U);
    t10 = *((char **)t9);
    memset(t8, 0, 8);
    t9 = (t10 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t9) != 0)
        goto LAB20;

LAB21:    t17 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB22;

LAB23:    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t17);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t17) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t8) > 0)
        goto LAB28;

LAB29:    memcpy(t7, t26, 8);

LAB30:    t27 = (t0 + 2312);
    xsi_vlogvar_assign_value(t27, t7, 0, 0, 2);
    goto LAB17;

LAB9:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1592U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t3) != 0)
        goto LAB33;

LAB34:    t10 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t10);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB35;

LAB36:    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t10);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t10) > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t8) > 0)
        goto LAB41;

LAB42:    memcpy(t7, t17, 8);

LAB43:    t21 = (t0 + 2312);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 2);
    goto LAB17;

LAB11:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1592U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t3) != 0)
        goto LAB46;

LAB47:    t10 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t10);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB48;

LAB49:    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t10);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t10) > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t8) > 0)
        goto LAB54;

LAB55:    memcpy(t7, t17, 8);

LAB56:    t21 = (t0 + 2312);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 2);
    goto LAB17;

LAB13:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1592U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t3) != 0)
        goto LAB59;

LAB60:    t10 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t10);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB61;

LAB62:    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t10);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t10) > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t8) > 0)
        goto LAB67;

LAB68:    memcpy(t7, t17, 8);

LAB69:    t21 = (t0 + 2312);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 2);
    goto LAB17;

LAB18:    *((unsigned int *)t8) = 1;
    goto LAB21;

LAB20:    t16 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB21;

LAB22:    t21 = ((char*)((ng2)));
    goto LAB23;

LAB24:    t26 = ((char*)((ng3)));
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t7, 2, t21, 2, t26, 2);
    goto LAB30;

LAB28:    memcpy(t7, t21, 8);
    goto LAB30;

LAB31:    *((unsigned int *)t8) = 1;
    goto LAB34;

LAB33:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB34;

LAB35:    t16 = ((char*)((ng2)));
    goto LAB36;

LAB37:    t17 = ((char*)((ng1)));
    goto LAB38;

LAB39:    xsi_vlog_unsigned_bit_combine(t7, 2, t16, 2, t17, 2);
    goto LAB43;

LAB41:    memcpy(t7, t16, 8);
    goto LAB43;

LAB44:    *((unsigned int *)t8) = 1;
    goto LAB47;

LAB46:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB47;

LAB48:    t16 = ((char*)((ng4)));
    goto LAB49;

LAB50:    t17 = ((char*)((ng3)));
    goto LAB51;

LAB52:    xsi_vlog_unsigned_bit_combine(t7, 2, t16, 2, t17, 2);
    goto LAB56;

LAB54:    memcpy(t7, t16, 8);
    goto LAB56;

LAB57:    *((unsigned int *)t8) = 1;
    goto LAB60;

LAB59:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB60;

LAB61:    t16 = ((char*)((ng2)));
    goto LAB62;

LAB63:    t17 = ((char*)((ng3)));
    goto LAB64;

LAB65:    xsi_vlog_unsigned_bit_combine(t7, 2, t16, 2, t17, 2);
    goto LAB69;

LAB67:    memcpy(t7, t16, 8);
    goto LAB69;

}


extern void work_m_07817166588871578795_1379444059_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_07817166588871578795_1379444059", "isim/top_isim_beh.exe.sim/work/m_07817166588871578795_1379444059.didat");
	xsi_register_executes(pe);
}
