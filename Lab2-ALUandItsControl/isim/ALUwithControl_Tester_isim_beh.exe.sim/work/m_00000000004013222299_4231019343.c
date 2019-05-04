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
static const char *ng0 = "D:/Workspace/CECS-341/Lab2-ALUandItsControl/ALUControl.v";
static unsigned int ng1[] = {5200U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {5456U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {5208U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {5720U, 0U};
static int ng8[] = {6, 0};
static unsigned int ng9[] = {6082U, 0U};
static int ng10[] = {7, 0};
static unsigned int ng11[] = {5968U, 0U};
static int ng12[] = {12, 0};
static unsigned int ng13[] = {15U, 15U};



static void Always_8_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

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
    t5 = (t0 + 1048U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 13, 13, 2U, t7, 2, t6, 11);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t5, 13);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(11, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 4, 0LL);
    goto LAB21;

LAB9:    xsi_set_current_line(12, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(13, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(14, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(15, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(16, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB21;

}


extern void work_m_00000000004013222299_4231019343_init()
{
	static char *pe[] = {(void *)Always_8_0};
	xsi_register_didat("work_m_00000000004013222299_4231019343", "isim/ALUwithControl_Tester_isim_beh.exe.sim/work/m_00000000004013222299_4231019343.didat");
	xsi_register_executes(pe);
}
