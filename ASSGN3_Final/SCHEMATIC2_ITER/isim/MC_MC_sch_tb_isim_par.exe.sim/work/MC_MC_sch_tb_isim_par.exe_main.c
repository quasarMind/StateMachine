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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *SIMPRIM_P_0947159679;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *STD_STANDARD;
char *IEEE_P_1367372525;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3156740924_4150518722_0342750376_init();
    simprim_a_3156740924_4150518722_2348577352_init();
    simprim_a_3156740924_4150518722_0363830943_init();
    simprim_a_3156740924_4150518722_2310720529_init();
    simprim_a_3156740924_4150518722_2289608230_init();
    simprim_a_3156740924_4150518722_0906953640_init();
    simprim_a_3156740924_4150518722_0859837741_init();
    simprim_a_3156740924_4150518722_0979037257_init();
    simprim_a_3156740924_4150518722_0936208799_init();
    simprim_a_3156740924_4150518722_0999851646_init();
    simprim_a_3156740924_4150518722_2319325311_init();
    simprim_a_3156740924_4150518722_0877247985_init();
    simprim_a_3156740924_4150518722_0898357190_init();
    simprim_a_3156740924_4150518722_0822520692_init();
    simprim_a_3156740924_4150518722_2824662911_init();
    simprim_a_3156740924_4150518722_0283150362_init();
    simprim_a_3156740924_4150518722_2811090160_init();
    simprim_a_3156740924_4150518722_2941601699_init();
    simprim_a_3156740924_4150518722_0325344372_init();
    simprim_a_3156740924_4150518722_2929143188_init();
    simprim_a_3156740924_4150518722_2845738312_init();
    simprim_a_3156740924_4150518722_2790244039_init();
    simprim_a_3156740924_4150518722_0287498797_init();
    simprim_a_3156740924_4150518722_2899416013_init();
    simprim_a_3156740924_4150518722_0312882755_init();
    simprim_a_2736823432_2431929443_4236388746_init();
    simprim_a_2736823432_2431929443_0342750376_init();
    simprim_a_2736823432_2431929443_2348577352_init();
    simprim_a_2736823432_2431929443_0363830943_init();
    simprim_a_2736823432_2431929443_2310720529_init();
    simprim_a_2736823432_2431929443_2289608230_init();
    simprim_a_2736823432_2431929443_0906953640_init();
    simprim_a_2736823432_2431929443_0859837741_init();
    simprim_a_2736823432_2431929443_0979037257_init();
    simprim_a_2736823432_2431929443_0936208799_init();
    simprim_a_2736823432_2431929443_0999851646_init();
    simprim_a_2736823432_2431929443_2319325311_init();
    simprim_a_2736823432_2431929443_0877247985_init();
    simprim_a_2736823432_2431929443_0898357190_init();
    simprim_a_2736823432_2431929443_0822520692_init();
    simprim_a_2736823432_2431929443_2824662911_init();
    simprim_a_2736823432_2431929443_0283150362_init();
    simprim_a_2736823432_2431929443_2811090160_init();
    simprim_a_2736823432_2431929443_2941601699_init();
    simprim_a_2736823432_2431929443_0325344372_init();
    simprim_a_2736823432_2431929443_2929143188_init();
    simprim_a_2736823432_2431929443_2845738312_init();
    simprim_a_2736823432_2431929443_2790244039_init();
    simprim_a_2736823432_2431929443_0287498797_init();
    simprim_a_2736823432_2431929443_2899416013_init();
    simprim_a_2736823432_2431929443_0312882755_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2766249123_0632001823_init();
    work_a_0917646715_3212880686_init();


    xsi_register_tops("work_a_0917646715_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
