import random

from fi_fsa import fi_fsa_v2
import time


# server_ip_list = ["192.168.137.101"]


def main():
    server_ip_list = fi_fsa_v2.broadcast_func_with_filter(filter_type="Actuator")

    if server_ip_list:

        match_version = "0.3.12.7"
        for i in range(len(server_ip_list)):
            firmware_version = fi_fsa_v2.get_comm_firmware_version(server_ip_list[i])
            if fi_fsa_v2.version_compare(firmware_version, match_version) < 0:
                print("the firmware version of %s is %s, less than the match version %s" % (
                    server_ip_list[i], firmware_version, match_version))
                return

        # 清除保护状态时是否恢复到进入保护状态前的操作模式 0: no, 1: yes
        clear_back_last_mode_of_operation = 0

        tx_cnt = 0
        for i in range(len(server_ip_list)):
            tx_cnt = tx_cnt + 1
            print(tx_cnt)
            rx_cnt, res = fi_fsa_v2.fast_set_ack_setpvc_protect_clear(server_ip_list[i],
                                                                      tx_cnt,
                                                                      clear_back_last_mode_of_operation)
            print("cnt = %u, res = %d" % (rx_cnt, res))

        time.sleep(1)


if __name__ == "__main__":
    main()
