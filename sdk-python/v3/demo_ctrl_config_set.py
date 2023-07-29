import fi_fsa
import time

server_ip_list = []


def main():
    server_ip_list = fi_fsa.broadcast_func_with_filter(filter_type="Actuator")

    if server_ip_list:

        # get the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            fi_fsa.get_config(server_ip_list[i])

        print('\n')
        time.sleep(1)

        # set the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            dict = {
                # Notice:
                # if use TYPE_DEFAULT, the following parameters will be used,
                # otherwise, the parameters will be used according to the type.
                'actuator_type': fi_fsa.FSAActuatorType.TYPE_DEFAULT,
                # 'actuator_type': fi_fsa.FSAActuatorType.TYPE_130_21_A_7,

                'actuator_direction': fi_fsa.FSAActuatorDirection.DIRECTION_REVERSE,
                'actuator_reduction_ratio': fi_fsa.FSAActuatorReductionRatio.REDUCTION_RATIO_7,

                'motor_index': fi_fsa.FSAMotorIndex.INDEX_1,
                'motor_vbus': fi_fsa.FSAMotorVBUS.VBUS_36V,
                'motor_direction': fi_fsa.FSAMotorDirection.ACB,
                'motor_pole_pairs': fi_fsa.FSAMotorPolePairs.POLE_PAIRS_21,
                'motor_max_speed': fi_fsa.FSAMotorMaxSpeed.MAX_SPEED_3000,
                'motor_vibc_adc_ratio': fi_fsa.FSAMotorVIBCADCRatio.VIBC_ADC_RATIO_05mR,
                'motor_vbus_adc_ratio': fi_fsa.FSAMotorVBUSADCRatio.VBUS_ADC_RATIO,

                'encoder_direction': fi_fsa.FSAEncoderDirection.DIRECTION_CCW,
                'encoder_resolution': fi_fsa.FSAEncoderResolution.RESOLUTION_4000,
                'encoder_phase_offset': 0,
            }
            fi_fsa.set_config(server_ip_list[i], dict)

        print('\n')
        time.sleep(1)

        # get the communication configuration of all FAS
        for i in range(len(server_ip_list)):
            fi_fsa.get_config(server_ip_list[i])

        print('\n')

        # reboot all FAS
        for i in range(len(server_ip_list)):
            fi_fsa.reboot(server_ip_list[i])


if __name__ == '__main__':
    main()
