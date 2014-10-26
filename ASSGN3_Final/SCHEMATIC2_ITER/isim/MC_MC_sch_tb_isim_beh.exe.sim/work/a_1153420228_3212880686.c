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
static const char *ng0 = "D:/ASSGN3_Final/SCHEMATIC2_ITER/Adder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_1153420228_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2088U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t3;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5398);
    *((int *)t1) = 0;
    t2 = (t0 + 5402);
    *((int *)t2) = 7;
    t5 = 0;
    t6 = 7;

LAB2:    if (t5 <= t6)
        goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3536);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 5398);
    t8 = *((int *)t4);
    t9 = (t8 - 7);
    t10 = (t9 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t4));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t13 = (t7 + t12);
    t3 = *((unsigned char *)t13);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 5398);
    t16 = *((int *)t14);
    t17 = (t16 - 7);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t14));
    t19 = (1U * t18);
    t20 = (0 + t19);
    t21 = (t15 + t20);
    t22 = *((unsigned char *)t21);
    t23 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t22);
    t24 = (t0 + 2088U);
    t25 = *((char **)t24);
    t26 = *((unsigned char *)t25);
    t27 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t23, t26);
    t24 = (t0 + 1968U);
    t28 = *((char **)t24);
    t24 = (t0 + 5398);
    t29 = *((int *)t24);
    t30 = (t29 - 7);
    t31 = (t30 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t24));
    t32 = (1U * t31);
    t33 = (0 + t32);
    t34 = (t28 + t33);
    *((unsigned char *)t34) = t27;
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5398);
    t8 = *((int *)t1);
    t9 = (t8 - 7);
    t10 = (t9 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t1));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t2 + t12);
    t3 = *((unsigned char *)t4);
    t7 = (t0 + 1192U);
    t13 = *((char **)t7);
    t7 = (t0 + 5398);
    t16 = *((int *)t7);
    t17 = (t16 - 7);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t7));
    t19 = (1U * t18);
    t20 = (0 + t19);
    t14 = (t13 + t20);
    t22 = *((unsigned char *)t14);
    t23 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t22);
    t15 = (t0 + 2088U);
    t21 = *((char **)t15);
    t26 = *((unsigned char *)t21);
    t15 = (t0 + 1032U);
    t24 = *((char **)t15);
    t15 = (t0 + 5398);
    t29 = *((int *)t15);
    t30 = (t29 - 7);
    t31 = (t30 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t15));
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t24 + t33);
    t27 = *((unsigned char *)t25);
    t28 = (t0 + 1192U);
    t34 = *((char **)t28);
    t28 = (t0 + 5398);
    t35 = *((int *)t28);
    t36 = (t35 - 7);
    t37 = (t36 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t28));
    t38 = (1U * t37);
    t39 = (0 + t38);
    t40 = (t34 + t39);
    t41 = *((unsigned char *)t40);
    t42 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t27, t41);
    t43 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t26, t42);
    t44 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t23, t43);
    t45 = (t0 + 2088U);
    t46 = *((char **)t45);
    t45 = (t46 + 0);
    *((unsigned char *)t45) = t44;

LAB4:    t1 = (t0 + 5398);
    t5 = *((int *)t1);
    t2 = (t0 + 5402);
    t6 = *((int *)t2);
    if (t5 == t6)
        goto LAB5;

LAB6:    t8 = (t5 + 1);
    t5 = t8;
    t4 = (t0 + 5398);
    *((int *)t4) = t5;
    goto LAB2;

}


extern void work_a_1153420228_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1153420228_3212880686_p_0};
	xsi_register_didat("work_a_1153420228_3212880686", "isim/MC_MC_sch_tb_isim_beh.exe.sim/work/a_1153420228_3212880686.didat");
	xsi_register_executes(pe);
}
