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

char *SIMPRIM_P_0947159679;
char *STD_TEXTIO;
char *STD_STANDARD;
char *IEEE_P_2717149903;
char *IEEE_P_2592010699;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
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
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_2880286190_2413300256_0433961640_init();
    simprim_a_0457340132_2413300256_0433961640_init();
    simprim_a_1385652478_1883126775_0433961640_init();
    simprim_a_3624651761_1883126775_0433961640_init();
    simprim_a_3949771542_1883126775_0433961640_init();
    simprim_a_3463845361_1912361408_0433961640_init();
    simprim_a_0767417567_1912361408_0433961640_init();
    simprim_a_0821291475_1912361408_0433961640_init();
    simprim_a_0562922936_1912361408_0433961640_init();
    simprim_a_0060070196_1912361408_0433961640_init();
    simprim_a_2504801820_1912361408_0433961640_init();
    simprim_a_0907988929_1912361408_0433961640_init();
    simprim_a_4045487217_1912361408_0433961640_init();
    simprim_a_2890400428_1957906245_0433961640_init();
    simprim_a_4250343463_1957906245_0433961640_init();
    simprim_a_2905273462_1957906245_0433961640_init();
    simprim_a_1005736798_1957906245_0433961640_init();
    simprim_a_2911097566_1957906245_0433961640_init();
    simprim_a_3642712091_1957906245_0433961640_init();
    simprim_a_1455144347_1957906245_0433961640_init();
    simprim_a_1015368267_1957906245_0433961640_init();
    simprim_a_3124443132_1957906245_0433961640_init();
    simprim_a_1169168506_1957906245_0433961640_init();
    simprim_a_3377534085_1957906245_0433961640_init();
    simprim_a_3702995043_2431929443_0433961640_init();
    simprim_a_1859873907_2082082460_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_2027651288_3300903326_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2766249123_0632001823_init();
    work_a_0917646715_3212880686_init();


    xsi_register_tops("work_a_0917646715_3212880686");

    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
