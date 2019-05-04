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
static const char *ng0 = "D:/Workspace/CECS-341/Lab8-PipelinedARMProcessor/ALUControl.v";
static int ng1[] = {180, 0};
static int ng2[] = {1, 0};
static int ng3[] = {7, 0};
static unsigned int ng4[] = {5200U, 0U};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {5456U, 0U};
static unsigned int ng7[] = {5208U, 0U};
static int ng8[] = {2, 0};
static unsigned int ng9[] = {5720U, 0U};
static int ng10[] = {6, 0};
static unsigned int ng11[] = {6082U, 0U};
static unsigned int ng12[] = {5968U, 0U};
static int ng13[] = {12, 0};
static unsigned int ng14[] = {1986U, 0U};
static unsigned int ng15[] = {1984U, 0U};
static unsigned int ng16[] = {15U, 15U};



static void Always_8_0(char *t0)
{
    char t4[8];
    char t15[8];
    char t31[8];
    char t45[8];
    char t61[8];
    char t69[8];
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
    char *t32;
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
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    int t93;
    int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 3);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 3);
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

LAB9:    memset(t31, 0, 8);
    t32 = (t15 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t15);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t32) != 0)
        goto LAB12;

LAB13:    t39 = (t31 + 4);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t39);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB14;

LAB15:    memcpy(t69, t31, 8);

LAB16:    t101 = (t69 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (~(t102));
    t104 = *((unsigned int *)t69);
    t105 = (t104 & t103);
    t106 = (t105 != 0);
    if (t106 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    xsi_vlogtype_concat(t4, 13, 13, 2U, t5, 2, t3, 11);

LAB32:    t2 = ((char*)((ng4)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng6)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng7)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng9)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng11)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng12)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng14)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng15)));
    t93 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t93 == 1)
        goto LAB47;

LAB48:
LAB50:
LAB49:    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB51:
LAB30:    goto LAB2;

LAB8:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t31) = 1;
    goto LAB13;

LAB12:    t38 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB13;

LAB14:    t43 = (t0 + 1048U);
    t44 = *((char **)t43);
    t43 = ((char*)((ng2)));
    memset(t45, 0, 8);
    t46 = (t44 + 4);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t44);
    t49 = *((unsigned int *)t43);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t46);
    t52 = *((unsigned int *)t47);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t47);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB20;

LAB17:    if (t57 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t45) = 1;

LAB20:    memset(t61, 0, 8);
    t62 = (t45 + 4);
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t65 = *((unsigned int *)t45);
    t66 = (t65 & t64);
    t67 = (t66 & 1U);
    if (t67 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t62) != 0)
        goto LAB23;

LAB24:    t70 = *((unsigned int *)t31);
    t71 = *((unsigned int *)t61);
    t72 = (t70 & t71);
    *((unsigned int *)t69) = t72;
    t73 = (t31 + 4);
    t74 = (t61 + 4);
    t75 = (t69 + 4);
    t76 = *((unsigned int *)t73);
    t77 = *((unsigned int *)t74);
    t78 = (t76 | t77);
    *((unsigned int *)t75) = t78;
    t79 = *((unsigned int *)t75);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t60 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t61) = 1;
    goto LAB24;

LAB23:    t68 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB24;

LAB25:    t81 = *((unsigned int *)t69);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t69) = (t81 | t82);
    t83 = (t31 + 4);
    t84 = (t61 + 4);
    t85 = *((unsigned int *)t31);
    t86 = (~(t85));
    t87 = *((unsigned int *)t83);
    t88 = (~(t87));
    t89 = *((unsigned int *)t61);
    t90 = (~(t89));
    t91 = *((unsigned int *)t84);
    t92 = (~(t91));
    t93 = (t86 & t88);
    t94 = (t90 & t92);
    t95 = (~(t93));
    t96 = (~(t94));
    t97 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t97 & t95);
    t98 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t98 & t96);
    t99 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t99 & t95);
    t100 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t100 & t96);
    goto LAB27;

LAB28:    xsi_set_current_line(10, ng0);

LAB31:    xsi_set_current_line(11, ng0);
    t107 = ((char*)((ng3)));
    t108 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t108, t107, 0, 0, 4, 0LL);
    goto LAB30;

LAB33:    xsi_set_current_line(14, ng0);
    t6 = ((char*)((ng5)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    goto LAB51;

LAB35:    xsi_set_current_line(15, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB37:    xsi_set_current_line(16, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB39:    xsi_set_current_line(17, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB41:    xsi_set_current_line(18, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB43:    xsi_set_current_line(19, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB45:    xsi_set_current_line(20, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

LAB47:    xsi_set_current_line(21, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB51;

}


extern void work_m_00000000004013222299_4231019343_init()
{
	static char *pe[] = {(void *)Always_8_0};
	xsi_register_didat("work_m_00000000004013222299_4231019343", "isim/Top8_Tester_isim_beh.exe.sim/work/m_00000000004013222299_4231019343.didat");
	xsi_register_executes(pe);
}
