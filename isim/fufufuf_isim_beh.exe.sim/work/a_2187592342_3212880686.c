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
static const char *ng0 = "D:/javid/Documentos/Octavo/vlsii/PROYECTO 2 PARCIAL/detector4bits-20210107T001808Z-001/Talller/contador.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_2187592342_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 3);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 3496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t9;
    xsi_driver_first_trans_fast(t1);

LAB14:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t10 = (t9 + 1);
    t1 = (t0 + 3496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 3);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t12 = (t4 == (unsigned char)3);
    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3496);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 3;
    xsi_driver_first_trans_fast(t1);

LAB11:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 3496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t9;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t12 = (t4 == (unsigned char)3);
    if (t12 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3496);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 3;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

}

static void work_a_2187592342_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t1, t4, 8);
    t5 = (t0 + 3560);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 3416);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2187592342_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2187592342_3212880686_p_0,(void *)work_a_2187592342_3212880686_p_1};
	xsi_register_didat("work_a_2187592342_3212880686", "isim/fufufuf_isim_beh.exe.sim/work/a_2187592342_3212880686.didat");
	xsi_register_executes(pe);
}
