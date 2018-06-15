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
static const char *ng0 = "E:/FILES/ISE File/test7/test7.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {4, 0};



static void Always_35_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t11;
    char *t12;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1968);
    *((int *)t2) = 1;
    t3 = (t0 + 1656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 255U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 255U);
    t12 = ((char*)((ng1)));
    xsi_vlogtype_concat(t13, 32, 32, 2U, t12, 24, t14, 8);
    t16 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t16, t13, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Initial_43_1(char *t0)
{
    char t1[8];
    char t14[8];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t15;

LAB0:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t1, 0, 8);
    t5 = (t1 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 8);
    *((unsigned int *)t1) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 8);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t1);
    *((unsigned int *)t1) = (t11 & 16777215U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 16777215U);
    t13 = ((char*)((ng2)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t1, 32, t13, 32);
    t15 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 32, 0LL);

LAB1:    return;
}


extern void work_m_00000000001937731593_1829962170_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Initial_43_1};
	xsi_register_didat("work_m_00000000001937731593_1829962170", "isim/test_7_isim_beh.exe.sim/work/m_00000000001937731593_1829962170.didat");
	xsi_register_executes(pe);
}
