/**
 * @file demo_ota.cpp
 * @author Afer
 * @brief
 * @version 0.1
 * @date 2023-12-21
 * @note pass-test
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "main.h"
using namespace Sensor;
using namespace Utils;
using namespace Predefine;

FSA *fse = new FSA();

int main()
{
    char ser_msg[1024] = {0};
    fse->demo_broadcase_filter(ACTUATOR);
    if (fse->server_ip_filter_num == 0)
    {
        Logger::get_instance()->print_trace_error("Cannot find server\n");
        return 0;
    }

    for (int i = 0; i < fse->server_ip_filter_num; i++)
    {
        std::printf("IP: %s sendto ota fse ---> ", fse->server_ip_filter[i].c_str());
        fse->demo_ota(fse->server_ip_filter[i], NULL, ser_msg);
        std::printf("%s\n", ser_msg);

        rapidjson::Document msg_json;
        if (msg_json.Parse(ser_msg).HasParseError())
        {
            Logger::get_instance()->print_trace_error("fi_decode() failed\n");
            return 0;
        }
        Logger::get_instance()->print_trace_debug("OTAstatus : %s\n", msg_json["OTAstatus"].GetString());
    }

    return 0;
}
