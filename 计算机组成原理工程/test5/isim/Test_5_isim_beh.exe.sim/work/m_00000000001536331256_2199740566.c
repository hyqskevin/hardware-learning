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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/FILES/ISE File/test5/test5.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {286335522U, 0U};
static unsigned int ng7[] = {859006566U, 0U};
static unsigned int ng8[] = {1431668872U, 0U};
static unsigned int ng9[] = {2863333375U, 0U};



static void Always_37_0(char *t0)
{
    char t6[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 1812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2008);
    *((int *)t2) = 1;
    t3 = (t0 + 1840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB7;

LAB6:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB9;

LAB8:    *((unsigned int *)t6) = 1;

LAB9:    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB25;

LAB26:
LAB27:
LAB13:    goto LAB2;

LAB7:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(43, ng0);

LAB14:    xsi_set_current_line(44, ng0);
    t14 = (t0 + 692U);
    t15 = *((char **)t14);

LAB15:    t14 = ((char*)((ng2)));
    t16 = xsi_vlog_unsigned_case_compare(t15, 2, t14, 2);
    if (t16 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng3)));
    t16 = xsi_vlog_unsigned_case_compare(t15, 2, t2, 2);
    if (t16 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t15, 2, t2, 2);
    if (t16 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng5)));
    t16 = xsi_vlog_unsigned_case_compare(t15, 2, t2, 2);
    if (t16 == 1)
        goto LAB22;

LAB23:
LAB24:    goto LAB13;

LAB16:    xsi_set_current_line(45, ng0);
    t18 = (t0 + 968U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 0);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 255U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 255U);
    t27 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t27, t17, 0, 0, 8, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 968U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 8);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 968U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 16);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB24;

LAB22:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 968U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 24);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 24);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 8, 0LL);
    goto LAB24;

LAB25:    xsi_set_current_line(52, ng0);

LAB28:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB29:    t4 = ((char*)((ng2)));
    t16 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t16 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng3)));
    t16 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t16 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t16 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng5)));
    t16 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t16 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB27;

LAB30:    xsi_set_current_line(54, ng0);
    t7 = ((char*)((ng6)));
    t8 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB38;

LAB32:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    goto LAB38;

LAB34:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    goto LAB38;

LAB36:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    goto LAB38;

}


extern void work_m_00000000001536331256_2199740566_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000001536331256_2199740566", "isim/Test_5_isim_beh.exe.sim/work/m_00000000001536331256_2199740566.didat");
	xsi_register_executes(pe);
}
