import fi_fsa_v2 as fi_fsa
import time

server_ip_list = []


def main():
    server_ip_list = fi_fsa.broadcast_func_with_filter(filter_type="Actuator")

    if server_ip_list:

        # set the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            dict_cfg = {
                'flag_do_use_store_actuator_param': fi_fsa.FSAFlagState.CLEAR,
                'flag_do_use_store_motor_param': fi_fsa.FSAFlagState.SET,
                'flag_do_use_store_encoder_param': fi_fsa.FSAFlagState.CLEAR,
                'flag_do_use_store_pid_param': fi_fsa.FSAFlagState.CLEAR,
                "actuator_double_encoder_enable": fi_fsa.FSAFlagState.SET,

                # 'flag_do_use_store_actuator_param': fi_fsa.FSAFlagState.SET,
                # 'flag_do_use_store_motor_param': fi_fsa.FSAFlagState.SET,
                # 'flag_do_use_store_encoder_param': fi_fsa.FSAFlagState.SET,
                # 'flag_do_use_store_pid_param': fi_fsa.FSAFlagState.SET,
            }
            fi_fsa.set_flag_of_operation(server_ip_list[i], dict_cfg)

        print('\n')
        time.sleep(1)

        # get the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            fi_fsa.get_flag_of_operation(server_ip_list[i])

        print('\n')

        # reboot all FAS
        for i in range(len(server_ip_list)):
            fi_fsa.reboot(server_ip_list[i])


if __name__ == '__main__':
    main()
