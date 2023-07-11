import numpy

import fsa
import time

server_ip_list = []


def main():
    server_ip_list = fsa.broadcast_func()

    if server_ip_list:

        # get the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            fsa.get_home_offset(server_ip_list[i])

        print('\n')


if __name__ == '__main__':
    main()
