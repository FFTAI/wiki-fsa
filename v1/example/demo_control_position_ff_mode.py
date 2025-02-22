from fi_fsa import fi_fsa_v1
import time
import math

server_ip_list = []


def main():
    server_ip_list = fi_fsa_v1.broadcast_func_with_filter(filter_type="Actuator")

    if server_ip_list:

        match_version = "2.14.2"
        for i in range(len(server_ip_list)):
            firmware_version = fi_fsa_v1.get_comm_firmware_version(server_ip_list[i])
            if fi_fsa_v1.version_compare(firmware_version, match_version) < 0:
                print("the firmware version of %s is %s, less than the match version %s" % (
                    server_ip_list[i], firmware_version, match_version))
                return

        fsa_state = True
        for i in range(len(server_ip_list)):
            fsa_state = fi_fsa_v1.get_state(server_ip_list[i])
            print("State = %d" % fsa_state)

        print("\n")
        time.sleep(1)

        for i in range(len(server_ip_list)):
            fi_fsa_v1.get_config(server_ip_list[i])

        print("\n")
        time.sleep(1)

        for i in range(len(server_ip_list)):
            pvc = fi_fsa_v1.get_pvc(server_ip_list[i])
            print(
                "Position = %.2f, Velocity = %.3f, Current = %.4f"
                % (pvc[0], pvc[1], pvc[2])
            )
            time.sleep(0.01)

        print("\n")
        time.sleep(1)

        # set current control current to 0.0
        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_position_control(server_ip_list[i], position=0.0)

        print("\n")
        time.sleep(1)

        # enable all the motors
        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_enable(server_ip_list[i])

        print("\n")
        time.sleep(1)

        # set work at current control mode
        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_mode_of_operation(
                server_ip_list[i], fi_fsa_v1.FSAModeOfOperation.POSITION_CONTROL
            )

        print("\n")
        time.sleep(1)

        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_position_control(server_ip_list[i], 0.0)

        time.sleep(1)

        # velocity ff ------------------------------------------------------

        # for i in range(len(server_ip_list)):
        #     dict = {  # 36
        #         'control_position_kp_imm': 0.0,
        #         'control_velocity_kp_imm': 0.04,
        #         'control_velocity_ki_imm': 0.0001,
        #     }
        #     fi_fsa_v1.set_pid_param_imm(server_ip_list[i], dict)
        #
        # print('\n')
        # time.sleep(1)
        #
        # # move a sin wave
        # count_max = round(100000 * 2 * math.pi)
        # for t in range(0, count_max):
        #     for i in range(len(server_ip_list)):
        #         set_velocity = 30.0  # * math.sin(t / 1000.0)  # [deg/s]
        #         fi_fsa_v1.set_position_control(server_ip_list[i], position=0, velocity_ff=set_velocity)
        #     time.sleep(0.01)
        #
        # time.sleep(1)

        # velocity ff ------------------------------------------------------

        # current ff ------------------------------------------------------

        for i in range(len(server_ip_list)):
            dict = {  # 36
                "control_position_kp_imm": 0.0,
                "control_velocity_kp_imm": 0.0,
                "control_velocity_ki_imm": 0.0,
            }
            fi_fsa_v1.set_pid_param_imm(server_ip_list[i], dict)

        print("\n")
        time.sleep(1)

        # set a constant
        count_max = round(100000 * 2 * math.pi)
        for t in range(0, count_max):
            for i in range(len(server_ip_list)):
                set_current = 0.4  # A
                fi_fsa_v1.set_position_control(
                    server_ip_list[i], position=0, current_ff=set_current
                )
            time.sleep(0.01)

        time.sleep(1)

        # current ff ------------------------------------------------------

        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_disable(server_ip_list[i])

        time.sleep(1)

        # set work at none control mode
        for i in range(len(server_ip_list)):
            fi_fsa_v1.set_mode_of_operation(
                server_ip_list[i], fi_fsa_v1.FSAModeOfOperation.POSITION_CONTROL
            )


if __name__ == "__main__":
    main()
