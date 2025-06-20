--
--  Copyright (C) 2025, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32g431xx.svd


with System;

package Interfaces.STM32.IWDG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype KR_KEY_Field is Interfaces.STM32.UInt16;

   --  Key register
   type KR_Register is record
      --  Write-only. Key value (write only, read 0x0000)
      KEY            : KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PR_PR_Field is Interfaces.STM32.UInt3;

   --  Prescaler register
   type PR_Register is record
      --  Prescaler divider
      PR            : PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.STM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLR_RL_Field is Interfaces.STM32.UInt12;

   --  Reload register
   type RLR_Register is record
      --  Watchdog counter reload value
      RL             : RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : Interfaces.STM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SR_PVU_Field is Interfaces.STM32.Bit;
   subtype SR_RVU_Field is Interfaces.STM32.Bit;
   subtype SR_WVU_Field is Interfaces.STM32.Bit;

   --  Status register
   type SR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU           : SR_PVU_Field;
      --  Read-only. Watchdog counter reload value update
      RVU           : SR_RVU_Field;
      --  Read-only. Watchdog counter window value update
      WVU           : SR_WVU_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.STM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      WVU           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype WINR_WIN_Field is Interfaces.STM32.UInt12;

   --  Window register
   type WINR_Register is record
      --  Watchdog counter window value
      WIN            : WINR_WIN_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : Interfaces.STM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WINR_Register use record
      WIN            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WinWATCHDOG
   type WWDG_Peripheral is record
      --  Key register
      KR   : aliased KR_Register;
      --  Prescaler register
      PR   : aliased PR_Register;
      --  Reload register
      RLR  : aliased RLR_Register;
      --  Status register
      SR   : aliased SR_Register;
      --  Window register
      WINR : aliased WINR_Register;
   end record
     with Volatile;

   for WWDG_Peripheral use record
      KR   at 16#0# range 0 .. 31;
      PR   at 16#4# range 0 .. 31;
      RLR  at 16#8# range 0 .. 31;
      SR   at 16#C# range 0 .. 31;
      WINR at 16#10# range 0 .. 31;
   end record;

   --  WinWATCHDOG
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => WWDG_Base;

end Interfaces.STM32.IWDG;
