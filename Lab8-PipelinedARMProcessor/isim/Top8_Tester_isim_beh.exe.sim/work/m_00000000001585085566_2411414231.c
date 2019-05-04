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
static const char *ng0 = "D:/Workspace/CECS-341/Lab8-PipelinedARMProcessor/Top8.v";
static int ng1[] = {2, 0};



static void Cont_55_0(char *t0)
{
    char t3[16];
    char t5[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 7488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5048U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 64, t4, 79, 16);
    t2 = ((char*)((ng1)));
    xsi_vlog_unsigned_lshift(t5, 64, t3, 64, t2, 32);
    t6 = (t0 + 9472);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlog_bit_copy(t10, 0, t5, 0, 64);
    xsi_driver_vfirst_trans(t6, 0, 63);
    t11 = (t0 + 9296);
    *((int *)t11) = 1;

LAB1:    return;
}

static void Cont_56_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4568U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 64, t3, 64, t4, 64);
    t2 = (t0 + 9536);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 64);
    xsi_driver_vfirst_trans(t2, 0, 63);
    t10 = (t0 + 9312);
    *((int *)t10) = 1;

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char t3[24];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3128U);
    t4 = *((char **)t2);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    xsi_vlogtype_concat(t3, 96, 96, 2U, t5, 64, t4, 32);
    t2 = (t0 + 9600);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 96);
    xsi_driver_vfirst_trans(t2, 0, 95);
    t10 = (t0 + 9328);
    *((int *)t10) = 1;

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[72];
    char t4[8];
    char t13[8];
    char t27[16];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 8232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4888U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 31U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 31U);
    t14 = (t0 + 4888U);
    t15 = *((char **)t14);
    memset(t13, 0, 8);
    t14 = (t13 + 4);
    t16 = (t15 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (t17 >> 21);
    *((unsigned int *)t13) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 21);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 2047U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 2047U);
    t23 = (t0 + 2008U);
    t24 = *((char **)t23);
    t23 = (t0 + 2488U);
    t25 = *((char **)t23);
    t23 = (t0 + 2328U);
    t26 = *((char **)t23);
    t23 = (t0 + 4888U);
    t28 = *((char **)t23);
    xsi_vlog_get_part_select_value(t27, 64, t28, 95, 32);
    t23 = (t0 + 4408U);
    t29 = *((char **)t23);
    t23 = (t0 + 5688U);
    t30 = *((char **)t23);
    t23 = (t0 + 3928U);
    t31 = *((char **)t23);
    t23 = (t0 + 3768U);
    t32 = *((char **)t23);
    t23 = (t0 + 3448U);
    t33 = *((char **)t23);
    t23 = (t0 + 4248U);
    t34 = *((char **)t23);
    t23 = (t0 + 4088U);
    t35 = *((char **)t23);
    t23 = (t0 + 3288U);
    t36 = *((char **)t23);
    xsi_vlogtype_concat(t3, 281, 281, 14U, t36, 1, t35, 1, t34, 1, t33, 1, t32, 1, t31, 1, t30, 1, t29, 2, t27, 64, t26, 64, t25, 64, t24, 64, t13, 11, t4, 5);
    t23 = (t0 + 9664);
    t37 = (t23 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    xsi_vlog_bit_copy(t40, 0, t3, 0, 281);
    xsi_driver_vfirst_trans(t23, 0, 280);
    t41 = (t0 + 9344);
    *((int *)t41) = 1;

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char t3[56];
    char t4[8];
    char t19[8];
    char t30[8];
    char t41[8];
    char t52[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    t1 = (t0 + 8480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5048U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 31U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 31U);
    t13 = (t0 + 2488U);
    t14 = *((char **)t13);
    t13 = (t0 + 2808U);
    t15 = *((char **)t13);
    t13 = (t0 + 3608U);
    t16 = *((char **)t13);
    t13 = (t0 + 4728U);
    t17 = *((char **)t13);
    t13 = (t0 + 5048U);
    t18 = *((char **)t13);
    memset(t19, 0, 8);
    t13 = (t19 + 4);
    t20 = (t18 + 64);
    t21 = (t18 + 68);
    t22 = *((unsigned int *)t20);
    t23 = (t22 >> 19);
    t24 = (t23 & 1);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 19);
    t27 = (t26 & 1);
    *((unsigned int *)t13) = t27;
    t28 = (t0 + 5048U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    t28 = (t30 + 4);
    t31 = (t29 + 64);
    t32 = (t29 + 68);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 20);
    t35 = (t34 & 1);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 20);
    t38 = (t37 & 1);
    *((unsigned int *)t28) = t38;
    t39 = (t0 + 5048U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t41 + 4);
    t42 = (t40 + 64);
    t43 = (t40 + 68);
    t44 = *((unsigned int *)t42);
    t45 = (t44 >> 18);
    t46 = (t45 & 1);
    *((unsigned int *)t41) = t46;
    t47 = *((unsigned int *)t43);
    t48 = (t47 >> 18);
    t49 = (t48 & 1);
    *((unsigned int *)t39) = t49;
    t50 = (t0 + 5048U);
    t51 = *((char **)t50);
    memset(t52, 0, 8);
    t50 = (t52 + 4);
    t53 = (t51 + 64);
    t54 = (t51 + 68);
    t55 = *((unsigned int *)t53);
    t56 = (t55 >> 22);
    t57 = (t56 & 1);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 >> 22);
    t60 = (t59 & 1);
    *((unsigned int *)t50) = t60;
    t61 = (t0 + 5048U);
    t62 = *((char **)t61);
    memset(t63, 0, 8);
    t61 = (t63 + 4);
    t64 = (t62 + 64);
    t65 = (t62 + 68);
    t66 = *((unsigned int *)t64);
    t67 = (t66 >> 21);
    t68 = (t67 & 1);
    *((unsigned int *)t63) = t68;
    t69 = *((unsigned int *)t65);
    t70 = (t69 >> 21);
    t71 = (t70 & 1);
    *((unsigned int *)t61) = t71;
    xsi_vlogtype_concat(t3, 203, 203, 10U, t63, 1, t52, 1, t41, 1, t30, 1, t19, 1, t17, 64, t16, 1, t15, 64, t14, 64, t4, 5);
    t72 = (t0 + 9728);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    xsi_vlog_bit_copy(t76, 0, t3, 0, 203);
    xsi_driver_vfirst_trans(t72, 0, 202);
    t77 = (t0 + 9360);
    *((int *)t77) = 1;

LAB1:    return;
}

static void implSig4_execute(char *t0)
{
    char t4[8];
    char t15[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
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
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;

LAB0:    t1 = (t0 + 8728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5208U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 48);
    t6 = (t3 + 52);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 8);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 8);
    t12 = (t11 & 1);
    *((unsigned int *)t2) = t12;
    t13 = (t0 + 5208U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t13 = (t15 + 4);
    t16 = (t14 + 32);
    t17 = (t14 + 36);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 5);
    t20 = (t19 & 1);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 5);
    t23 = (t22 & 1);
    *((unsigned int *)t13) = t23;
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t15);
    t27 = (t25 & t26);
    *((unsigned int *)t24) = t27;
    t28 = (t4 + 4);
    t29 = (t15 + 4);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t28);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB4;

LAB5:
LAB6:    t56 = (t0 + 9792);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memset(t60, 0, 8);
    t61 = 1U;
    t62 = t61;
    t63 = (t24 + 4);
    t64 = *((unsigned int *)t24);
    t61 = (t61 & t64);
    t65 = *((unsigned int *)t63);
    t62 = (t62 & t65);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t67 | t61);
    t68 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t68 | t62);
    xsi_driver_vfirst_trans(t56, 0, 0);
    t69 = (t0 + 9376);
    *((int *)t69) = 1;

LAB1:    return;
LAB4:    t36 = *((unsigned int *)t24);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t24) = (t36 | t37);
    t38 = (t4 + 4);
    t39 = (t15 + 4);
    t40 = *((unsigned int *)t4);
    t41 = (~(t40));
    t42 = *((unsigned int *)t38);
    t43 = (~(t42));
    t44 = *((unsigned int *)t15);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = (t41 & t43);
    t49 = (t45 & t47);
    t50 = (~(t48));
    t51 = (~(t49));
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t50);
    t53 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t53 & t51);
    t54 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t54 & t50);
    t55 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t55 & t51);
    goto LAB6;

}

static void implSig5_execute(char *t0)
{
    char t3[40];
    char t4[8];
    char t13[16];
    char t18[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;

LAB0:    t1 = (t0 + 8976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 31U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 31U);
    t14 = (t0 + 5208U);
    t15 = *((char **)t14);
    xsi_vlog_get_part_select_value(t13, 64, t15, 132, 69);
    t14 = (t0 + 2968U);
    t16 = *((char **)t14);
    t14 = (t0 + 5208U);
    t17 = *((char **)t14);
    memset(t18, 0, 8);
    t14 = (t18 + 4);
    t19 = (t17 + 48);
    t20 = (t17 + 52);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 9);
    t23 = (t22 & 1);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 9);
    t26 = (t25 & 1);
    *((unsigned int *)t14) = t26;
    t27 = (t0 + 5208U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 48);
    t31 = (t28 + 52);
    t32 = *((unsigned int *)t30);
    t33 = (t32 >> 10);
    t34 = (t33 & 1);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 10);
    t37 = (t36 & 1);
    *((unsigned int *)t27) = t37;
    xsi_vlogtype_concat(t3, 135, 135, 5U, t29, 1, t18, 1, t16, 64, t13, 64, t4, 5);
    t38 = (t0 + 9856);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    xsi_vlog_bit_copy(t42, 0, t3, 0, 135);
    xsi_driver_vfirst_trans(t38, 0, 134);
    t43 = (t0 + 9392);
    *((int *)t43) = 1;

LAB1:    return;
}


extern void work_m_00000000001585085566_2411414231_init()
{
	static char *pe[] = {(void *)Cont_55_0,(void *)Cont_56_1,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute};
	xsi_register_didat("work_m_00000000001585085566_2411414231", "isim/Top8_Tester_isim_beh.exe.sim/work/m_00000000001585085566_2411414231.didat");
	xsi_register_executes(pe);
}
