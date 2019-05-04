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
static const char *ng0 = "D:/Workspace/CECS-341/Lab7-BranchSupport/SignedExtender.v";
static int ng1[] = {180, 0};
static int ng2[] = {45, 0};
static int ng3[] = {55, 0};



static void Always_6_0(char *t0)
{
    char t4[8];
    char t15[8];
    char t37[16];
    char t38[8];
    char t48[16];
    char t52[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(6, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(6, ng0);

LAB5:    xsi_set_current_line(7, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 24);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 255U);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t4 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB9;

LAB6:    if (t27 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t15) = 1;

LAB9:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(10, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 12);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 12);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 511U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 511U);
    t6 = ((char*)((ng3)));
    t7 = (t0 + 1048U);
    t14 = *((char **)t7);
    memset(t15, 0, 8);
    t7 = (t15 + 4);
    t16 = (t14 + 4);
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 20);
    t20 = (t19 & 1);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t16);
    t22 = (t21 >> 20);
    t23 = (t22 & 1);
    *((unsigned int *)t7) = t23;
    xsi_vlog_mul_concat(t48, 55, 1, t6, 1U, t15, 1);
    xsi_vlogtype_concat(t37, 64, 64, 2U, t48, 55, t4, 9);
    t17 = (t0 + 1448);
    xsi_vlogvar_assign_value(t17, t37, 0, 0, 64);

LAB12:    goto LAB2;

LAB8:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(8, ng0);
    t39 = (t0 + 1048U);
    t40 = *((char **)t39);
    memset(t38, 0, 8);
    t39 = (t38 + 4);
    t41 = (t40 + 4);
    t42 = *((unsigned int *)t40);
    t43 = (t42 >> 5);
    *((unsigned int *)t38) = t43;
    t44 = *((unsigned int *)t41);
    t45 = (t44 >> 5);
    *((unsigned int *)t39) = t45;
    t46 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t46 & 524287U);
    t47 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t47 & 524287U);
    t49 = ((char*)((ng2)));
    t50 = (t0 + 1048U);
    t51 = *((char **)t50);
    memset(t52, 0, 8);
    t50 = (t52 + 4);
    t53 = (t51 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 23);
    t56 = (t55 & 1);
    *((unsigned int *)t52) = t56;
    t57 = *((unsigned int *)t53);
    t58 = (t57 >> 23);
    t59 = (t58 & 1);
    *((unsigned int *)t50) = t59;
    xsi_vlog_mul_concat(t48, 45, 1, t49, 1U, t52, 1);
    xsi_vlogtype_concat(t37, 64, 64, 2U, t48, 45, t38, 19);
    t60 = (t0 + 1448);
    xsi_vlogvar_assign_value(t60, t37, 0, 0, 64);
    goto LAB12;

}


extern void work_m_00000000003757912229_1015268676_init()
{
	static char *pe[] = {(void *)Always_6_0};
	xsi_register_didat("work_m_00000000003757912229_1015268676", "isim/Top7_Tester_isim_beh.exe.sim/work/m_00000000003757912229_1015268676.didat");
	xsi_register_executes(pe);
}
