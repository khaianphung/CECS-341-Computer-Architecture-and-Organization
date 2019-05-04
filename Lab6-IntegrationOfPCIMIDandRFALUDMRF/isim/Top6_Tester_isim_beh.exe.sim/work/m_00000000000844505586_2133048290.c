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
static const char *ng0 = "D:/Workspace/CECS-341/Lab6-IntegrationOfPCIMIDandRFALUDMRF/Top5C.v";



static void Cont_17_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 3488);
    *((int *)t8) = 1;

LAB1:    return;
}


extern void work_m_00000000000844505586_2133048290_init()
{
	static char *pe[] = {(void *)Cont_17_0};
	xsi_register_didat("work_m_00000000000844505586_2133048290", "isim/Top6_Tester_isim_beh.exe.sim/work/m_00000000000844505586_2133048290.didat");
	xsi_register_executes(pe);
}
