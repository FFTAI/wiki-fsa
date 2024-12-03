#pragma once

#include "nlohmann/json.hpp"

using namespace nlohmann;

namespace FSA_CONNECT {
/**
 * @brief this namespace for json data, you can get and set these json to actuator drive
 */
namespace JsonData {
    extern ordered_json get_root_config_json;
    extern ordered_json get_state_json;
    extern ordered_json enable_json;
    extern ordered_json disable_json;
    extern ordered_json set_control_mode_json;
    extern ordered_json get_control_mode_json;
    extern ordered_json set_pid_params_json;
    extern ordered_json get_pid_params_json;
    extern ordered_json set_operation_mode_json;
    extern ordered_json set_pos_json;
    extern ordered_json set_vel_json;
    extern ordered_json set_cur_json;
    extern ordered_json get_pvc_json;
    extern ordered_json set_torque_limit_max_json;
    extern ordered_json set_inertia_ff_json;
    extern ordered_json get_ntc_temperature_json;
    extern ordered_json set_abs_zero_json;
    extern ordered_json reboot_json;
    extern ordered_json get_abs_pos_json;

}  // namespace JsonData
}  // namespace FSA_CONNECT