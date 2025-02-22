from fi_fsa import fi_fsa_v1
import time

server_ip_list = []


def main():
    server_ip_list = fi_fsa_v1.broadcast_func_with_filter("Actuator")

    if server_ip_list:

        match_version = "2.14.2"
        for i in range(len(server_ip_list)):
            firmware_version = fi_fsa_v1.get_comm_firmware_version(server_ip_list[i])
            if fi_fsa_v1.version_compare(firmware_version, match_version) < 0:
                print("the firmware version of %s is %s, less than the match version %s" % (
                    server_ip_list[i], firmware_version, match_version))
                return

        # set the communication configuration of all FAS
        # Notice : set static_IP should config DHCP_enable to be False! Otherwise, it will not work!
        for i in range(len(server_ip_list)):
            dict = {
                "name": "FSA-" + str(i),
                "DHCP_enable": False,
                "SSID": "fftai-6",
                "password": "fftai2015",
                "static_IP": [192, 168, 137, i + 101],
                "gateway": [192, 168, 137, 1],
                "subnet_mask": [255, 255, 255, 0],
                "dns_1": [114, 114, 114, 114],
                "dns_2": [8, 8, 8, 8],
            }
            fi_fsa_v1.set_comm_config(server_ip_list[i], dict)

        print("\n")
        time.sleep(1)

        # get the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            fi_fsa_v1.get_comm_config(server_ip_list[i])

        print("\n")

        for i in range(len(server_ip_list)):
            fi_fsa_v1.reboot(server_ip_list[i])


if __name__ == "__main__":
    main()
