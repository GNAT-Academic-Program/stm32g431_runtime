# This script extends bb-runtimes to define the nRF52 targets

import sys
import os
import pathlib

# Add bb-runtimes to the search path so that we can include and extend it
sys.path.append(str(pathlib.Path(__file__).parent / "bb-runtimes"))

import arm.cortexm
import build_rts
from support import add_source_search_path

class STM32G431(arm.cortexm.ArmV7MTarget):
    @property
    def name(self):
        return 'stm32g431'

    @property
    def parent(self):
        return arm.cortexm.CortexMArch

    @property
    def loaders(self):
        return ('ROM', )

    @property
    def has_fpu(self):
        return True
    
    @property
    def use_semihosting_io(self):
        return True

    @property
    def system_ads(self):
        return {}

    @property
    def compiler_switches(self):
        # The required compiler switches
        return ('-mlittle-endian', '-mthumb', '-mfloat-abi=hard',
                '-mfpu=fpv4-sp-d16', '-mcpu=cortex-m4')

    def __init__(self):
        super(STM32G431, self).__init__()

        self.add_linker_script('stm32g431_src/common-ROM.ld', loader='ROM')
        self.add_linker_script('stm32g431_src/memory-map.ld', 'memory-map.ld')

        self.add_gnat_sources(
            'stm32g431_src/s-bbmcpa.ads',
            'stm32g431_src/s-bbmcpa.adb',
            'stm32g431_src/start-common.S',
            'stm32g431_src/start-rom.S',
            'stm32g431_src/svd/i-stm32-adc.ads',
            'stm32g431_src/svd/i-stm32-aes.ads',
            'stm32g431_src/svd/i-stm32-comp.ads',
            'stm32g431_src/svd/i-stm32-cordic.ads',
            'stm32g431_src/svd/i-stm32-crc.ads',
            'stm32g431_src/svd/i-stm32-crs.ads',
            'stm32g431_src/svd/i-stm32-dac.ads',
            'stm32g431_src/svd/i-stm32-dma.ads',
            'stm32g431_src/svd/i-stm32-dmamux.ads',
            'stm32g431_src/svd/i-stm32-dbgmcu.ads',
            'stm32g431_src/svd/i-stm32-exti.ads',
            'stm32g431_src/svd/i-stm32-fdcan.ads',
            'stm32g431_src/svd/i-stm32-flash.ads',
            'stm32g431_src/svd/i-stm32-fmac.ads',
            'stm32g431_src/svd/i-stm32-fpu.ads',
            'stm32g431_src/svd/i-stm32-gpio.ads',
            'stm32g431_src/svd/i-stm32-i2c.ads',
            'stm32g431_src/svd/i-stm32-iwdg.ads',
            'stm32g431_src/svd/i-stm32-lptim.ads',
            'stm32g431_src/svd/i-stm32-mpu.ads',
            'stm32g431_src/svd/i-stm32-nvic.ads',
            'stm32g431_src/svd/i-stm32-opamp.ads',
            'stm32g431_src/svd/i-stm32-pwr.ads',
            'stm32g431_src/svd/i-stm32-rcc.ads',
            'stm32g431_src/svd/i-stm32-rng.ads',
            'stm32g431_src/svd/i-stm32-rtc.ads',
            'stm32g431_src/svd/i-stm32-sai.ads',
            'stm32g431_src/svd/i-stm32-scb.ads',
            'stm32g431_src/svd/i-stm32-spi.ads',
            'stm32g431_src/svd/i-stm32-stk.ads',
            'stm32g431_src/svd/i-stm32-syscfg.ads',
            'stm32g431_src/svd/i-stm32-tamp.ads',
            'stm32g431_src/svd/i-stm32-tim.ads',
            'stm32g431_src/svd/i-stm32-ucpd.ads',
            'stm32g431_src/svd/i-stm32-usart.ads',
            'stm32g431_src/svd/i-stm32-usb.ads',
            'stm32g431_src/svd/i-stm32-vrefbuf.ads',
            'stm32g431_src/svd/i-stm32-wwdg.ads',
            'stm32g431_src/svd/i-stm32.ads')

        self.add_gnarl_sources(
            'stm32g431_src/s-bbpara.ads',
            'stm32g431_src/svd/handler.S',
            'stm32g431_src/svd/a-intnam.ads',
            'src/s-bcpcst__pendsv.adb')


def build_configs(target):
    if target == "stm32g431":
        return STM32G431()
    else:
        assert False, "unexpected target: %s" % target

def patch_bb_runtimes():
    """Patch some parts of bb-runtimes to use our own targets and data"""
    add_source_search_path(os.path.dirname(__file__))

    build_rts.build_configs = build_configs

if __name__ == "__main__":
    patch_bb_runtimes()
    build_rts.main()