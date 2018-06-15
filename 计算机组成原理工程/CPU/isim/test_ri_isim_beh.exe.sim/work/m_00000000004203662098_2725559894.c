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
static const char *ng0 = "E:/FILES/ISE File/CPU/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static int ng7[] = {31, 0};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static int ng11[] = {1, 0};



static void Always_29_0(char *t0)
{
    char t10[8];
    char t42[8];
    char t47[16];
    char t49[8];
    char t54[8];
    char t59[8];
    char t66[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 2192);
    *((int *)t2) = 1;
    t3 = (t0 + 2024);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(46, ng0);

LAB68:
LAB25:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    memset(t49, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t9);
    t18 = (t16 ^ t17);
    t19 = (t13 | t18);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t9);
    t22 = (t20 | t21);
    t25 = (~(t22));
    t26 = (t19 & t25);
    if (t26 != 0)
        goto LAB72;

LAB69:    if (t22 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t49) = 1;

LAB72:    memset(t42, 0, 8);
    t15 = (t49 + 4);
    t27 = *((unsigned int *)t15);
    t28 = (~(t27));
    t29 = *((unsigned int *)t49);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t15) != 0)
        goto LAB75;

LAB76:    t24 = (t42 + 4);
    t32 = *((unsigned int *)t42);
    t35 = *((unsigned int *)t24);
    t36 = (t32 || t35);
    if (t36 > 0)
        goto LAB77;

LAB78:    t37 = *((unsigned int *)t42);
    t38 = (~(t37));
    t39 = *((unsigned int *)t24);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t24) > 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t42) > 0)
        goto LAB83;

LAB84:    memcpy(t10, t48, 8);

LAB85:    t50 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t50, t10, 0, 0, 32, 0LL);
    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);

LAB26:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 784U);
    t9 = *((char **)t7);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t7 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB27;

LAB28:
LAB29:    t41 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t41, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB25;

LAB9:    xsi_set_current_line(34, ng0);

LAB30:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB31;

LAB32:
LAB33:    t23 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t23, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB25;

LAB11:    xsi_set_current_line(35, ng0);

LAB34:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB35;

LAB36:
LAB37:    t14 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t14, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB25;

LAB13:    xsi_set_current_line(36, ng0);

LAB38:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t42) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t42 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB39;

LAB40:
LAB41:    memset(t10, 0, 8);
    t23 = (t10 + 4);
    t24 = (t42 + 4);
    t37 = *((unsigned int *)t42);
    t38 = (~(t37));
    *((unsigned int *)t10) = t38;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB43;

LAB42:    t45 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t45 & 4294967295U);
    t46 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t46 & 4294967295U);
    t41 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t41, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB25;

LAB15:    xsi_set_current_line(37, ng0);

LAB44:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_add(t47, 33, t4, 32, t7, 32);
    t3 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t3, t47, 0, 0, 32, 0LL);
    t8 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t8, t47, 32, 0, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 668U);
    t9 = (t7 + 44U);
    t14 = *((char **)t9);
    t15 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t10, 32, t8, t14, 2, t15, 32, 1);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t10);
    t13 = (t11 ^ t12);
    *((unsigned int *)t42) = t13;
    t23 = (t4 + 4);
    t24 = (t10 + 4);
    t41 = (t42 + 4);
    t16 = *((unsigned int *)t23);
    t17 = *((unsigned int *)t24);
    t18 = (t16 | t17);
    *((unsigned int *)t41) = t18;
    t19 = *((unsigned int *)t41);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB45;

LAB46:
LAB47:    t48 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t48, t42, 0, 0, 32, 0LL);
    goto LAB25;

LAB17:    xsi_set_current_line(38, ng0);

LAB48:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_minus(t47, 33, t4, 32, t7, 32);
    t3 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t3, t47, 0, 0, 32, 0LL);
    t8 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t8, t47, 32, 0, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 668U);
    t4 = (t2 + 44U);
    t7 = *((char **)t4);
    t8 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t10, 32, t3, t7, 2, t8, 32, 1);
    t9 = (t0 + 784U);
    t14 = *((char **)t9);
    t9 = (t0 + 760U);
    t15 = (t9 + 44U);
    t23 = *((char **)t15);
    t24 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t42, 32, t14, t23, 2, t24, 32, 1);
    t11 = *((unsigned int *)t10);
    t12 = *((unsigned int *)t42);
    t13 = (t11 ^ t12);
    *((unsigned int *)t49) = t13;
    t41 = (t10 + 4);
    t48 = (t42 + 4);
    t50 = (t49 + 4);
    t16 = *((unsigned int *)t41);
    t17 = *((unsigned int *)t48);
    t18 = (t16 | t17);
    *((unsigned int *)t50) = t18;
    t19 = *((unsigned int *)t50);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB49;

LAB50:
LAB51:    t51 = (t0 + 1012);
    t52 = (t51 + 36U);
    t53 = *((char **)t52);
    t55 = (t0 + 1012);
    t56 = (t55 + 44U);
    t57 = *((char **)t56);
    t58 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t54, 32, t53, t57, 2, t58, 32, 1);
    t25 = *((unsigned int *)t49);
    t26 = *((unsigned int *)t54);
    t27 = (t25 ^ t26);
    *((unsigned int *)t59) = t27;
    t60 = (t49 + 4);
    t61 = (t54 + 4);
    t62 = (t59 + 4);
    t28 = *((unsigned int *)t60);
    t29 = *((unsigned int *)t61);
    t30 = (t28 | t29);
    *((unsigned int *)t62) = t30;
    t31 = *((unsigned int *)t62);
    t32 = (t31 != 0);
    if (t32 == 1)
        goto LAB52;

LAB53:
LAB54:    t63 = (t0 + 1288);
    t64 = (t63 + 36U);
    t65 = *((char **)t64);
    t37 = *((unsigned int *)t59);
    t38 = *((unsigned int *)t65);
    t39 = (t37 ^ t38);
    *((unsigned int *)t66) = t39;
    t67 = (t59 + 4);
    t68 = (t65 + 4);
    t69 = (t66 + 4);
    t40 = *((unsigned int *)t67);
    t43 = *((unsigned int *)t68);
    t44 = (t40 | t43);
    *((unsigned int *)t69) = t44;
    t45 = *((unsigned int *)t69);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB55;

LAB56:
LAB57:    t72 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t72, t66, 0, 0, 32, 0LL);
    goto LAB25;

LAB19:    xsi_set_current_line(39, ng0);

LAB58:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB60;

LAB59:    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB60;

LAB63:    if (*((unsigned int *)t3) < *((unsigned int *)t4))
        goto LAB61;

LAB62:    t9 = (t10 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t16 = (t13 & t12);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB66:    goto LAB25;

LAB21:    xsi_set_current_line(45, ng0);

LAB67:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB25;

LAB27:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t8 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB29;

LAB31:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB33;

LAB35:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    goto LAB37;

LAB39:    t21 = *((unsigned int *)t42);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t42) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB41;

LAB43:    t39 = *((unsigned int *)t10);
    t40 = *((unsigned int *)t24);
    *((unsigned int *)t10) = (t39 | t40);
    t43 = *((unsigned int *)t23);
    t44 = *((unsigned int *)t24);
    *((unsigned int *)t23) = (t43 | t44);
    goto LAB42;

LAB45:    t21 = *((unsigned int *)t42);
    t22 = *((unsigned int *)t41);
    *((unsigned int *)t42) = (t21 | t22);
    goto LAB47;

LAB49:    t21 = *((unsigned int *)t49);
    t22 = *((unsigned int *)t50);
    *((unsigned int *)t49) = (t21 | t22);
    goto LAB51;

LAB52:    t35 = *((unsigned int *)t59);
    t36 = *((unsigned int *)t62);
    *((unsigned int *)t59) = (t35 | t36);
    goto LAB54;

LAB55:    t70 = *((unsigned int *)t66);
    t71 = *((unsigned int *)t69);
    *((unsigned int *)t66) = (t70 | t71);
    goto LAB57;

LAB60:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB62;

LAB61:    *((unsigned int *)t10) = 1;
    goto LAB62;

LAB64:    xsi_set_current_line(41, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 32, 0LL);
    goto LAB66;

LAB71:    t14 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB72;

LAB73:    *((unsigned int *)t42) = 1;
    goto LAB76;

LAB75:    t23 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB76;

LAB77:    t41 = ((char*)((ng11)));
    goto LAB78;

LAB79:    t48 = ((char*)((ng2)));
    goto LAB80;

LAB81:    xsi_vlog_unsigned_bit_combine(t10, 32, t41, 32, t48, 32);
    goto LAB85;

LAB83:    memcpy(t10, t41, 8);
    goto LAB85;

}


extern void work_m_00000000004203662098_2725559894_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000004203662098_2725559894", "isim/test_ri_isim_beh.exe.sim/work/m_00000000004203662098_2725559894.didat");
	xsi_register_executes(pe);
}
