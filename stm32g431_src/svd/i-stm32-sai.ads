--
--  Copyright (C) 2025, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32g431xx.svd


with System;

package Interfaces.STM32.SAI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ACR1_MODE_Field is Interfaces.STM32.UInt2;
   subtype ACR1_PRTCFG_Field is Interfaces.STM32.UInt2;
   subtype ACR1_DS_Field is Interfaces.STM32.UInt3;
   subtype ACR1_LSBFIRST_Field is Interfaces.STM32.Bit;
   subtype ACR1_CKSTR_Field is Interfaces.STM32.Bit;
   subtype ACR1_SYNCEN_Field is Interfaces.STM32.UInt2;
   subtype ACR1_MONO_Field is Interfaces.STM32.Bit;
   subtype ACR1_OutDri_Field is Interfaces.STM32.Bit;
   subtype ACR1_SAIAEN_Field is Interfaces.STM32.Bit;
   subtype ACR1_DMAEN_Field is Interfaces.STM32.Bit;
   subtype ACR1_NODIV_Field is Interfaces.STM32.Bit;
   subtype ACR1_MCJDIV_Field is Interfaces.STM32.UInt6;
   subtype ACR1_OSR_Field is Interfaces.STM32.Bit;
   subtype ACR1_MCKEN_Field is Interfaces.STM32.Bit;

   --  AConfiguration register 1
   type ACR1_Register is record
      --  Audio block mode
      MODE           : ACR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : ACR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.STM32.Bit := 16#0#;
      --  Data size
      DS             : ACR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : ACR1_LSBFIRST_Field := 16#0#;
      --  Clock strobing edge
      CKSTR          : ACR1_CKSTR_Field := 16#0#;
      --  Synchronization enable
      SYNCEN         : ACR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : ACR1_MONO_Field := 16#0#;
      --  Output drive
      OutDri         : ACR1_OutDri_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.STM32.UInt2 := 16#0#;
      --  Audio block A enable
      SAIAEN         : ACR1_SAIAEN_Field := 16#0#;
      --  DMA enable
      DMAEN          : ACR1_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.STM32.Bit := 16#0#;
      --  No divider
      NODIV          : ACR1_NODIV_Field := 16#0#;
      --  Master clock divider
      MCJDIV         : ACR1_MCJDIV_Field := 16#0#;
      --  OSR
      OSR            : ACR1_OSR_Field := 16#0#;
      --  MCKEN
      MCKEN          : ACR1_MCKEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.STM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OutDri         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIAEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCJDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      MCKEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ACR2_FTH_Field is Interfaces.STM32.UInt3;
   subtype ACR2_FFLUS_Field is Interfaces.STM32.Bit;
   subtype ACR2_TRIS_Field is Interfaces.STM32.Bit;
   subtype ACR2_MUTE_Field is Interfaces.STM32.Bit;
   subtype ACR2_MUTEVAL_Field is Interfaces.STM32.Bit;
   subtype ACR2_MUTECN_Field is Interfaces.STM32.UInt6;
   subtype ACR2_CPL_Field is Interfaces.STM32.Bit;
   subtype ACR2_COMP_Field is Interfaces.STM32.UInt2;

   --  AConfiguration register 2
   type ACR2_Register is record
      --  FIFO threshold
      FTH            : ACR2_FTH_Field := 16#0#;
      --  FIFO flush
      FFLUS          : ACR2_FFLUS_Field := 16#0#;
      --  Tristate management on data line
      TRIS           : ACR2_TRIS_Field := 16#0#;
      --  Mute
      MUTE           : ACR2_MUTE_Field := 16#0#;
      --  Mute value
      MUTEVAL        : ACR2_MUTEVAL_Field := 16#0#;
      --  Mute counter
      MUTECN         : ACR2_MUTECN_Field := 16#0#;
      --  Complement bit
      CPL            : ACR2_CPL_Field := 16#0#;
      --  Companding mode
      COMP           : ACR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUS          at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECN         at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AFRCR_FRL_Field is Interfaces.STM32.Byte;
   subtype AFRCR_FSALL_Field is Interfaces.STM32.UInt7;
   subtype AFRCR_FSDEF_Field is Interfaces.STM32.Bit;
   subtype AFRCR_FSPOL_Field is Interfaces.STM32.Bit;
   subtype AFRCR_FSOFF_Field is Interfaces.STM32.Bit;

   --  AFRCR
   type AFRCR_Register is record
      --  Frame length
      FRL            : AFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length
      FSALL          : AFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  Frame synchronization definition
      FSDEF          : AFRCR_FSDEF_Field := 16#0#;
      --  Frame synchronization polarity
      FSPOL          : AFRCR_FSPOL_Field := 16#0#;
      --  Frame synchronization offset
      FSOFF          : AFRCR_FSOFF_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ASLOTR_FBOFF_Field is Interfaces.STM32.UInt5;
   subtype ASLOTR_SLOTSZ_Field is Interfaces.STM32.UInt2;
   subtype ASLOTR_NBSLOT_Field is Interfaces.STM32.UInt4;
   subtype ASLOTR_SLOTEN_Field is Interfaces.STM32.UInt16;

   --  ASlot register
   type ASLOTR_Register is record
      --  First bit offset
      FBOFF          : ASLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : ASLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame
      NBSLOT         : ASLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.STM32.UInt4 := 16#0#;
      --  Slot enable
      SLOTEN         : ASLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   subtype AIM_OVRUDRIE_Field is Interfaces.STM32.Bit;
   subtype AIM_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype AIM_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype AIM_FREQIE_Field is Interfaces.STM32.Bit;
   subtype AIM_CNRDYIE_Field is Interfaces.STM32.Bit;
   subtype AIM_AFSDETIE_Field is Interfaces.STM32.Bit;
   subtype AIM_LFSDET_Field is Interfaces.STM32.Bit;

   --  AInterrupt mask register2
   type AIM_Register is record
      --  Overrun/underrun interrupt enable
      OVRUDRIE      : AIM_OVRUDRIE_Field := 16#0#;
      --  Mute detection interrupt enable
      MUTEDET       : AIM_MUTEDET_Field := 16#0#;
      --  Wrong clock configuration interrupt enable
      WCKCFG        : AIM_WCKCFG_Field := 16#0#;
      --  FIFO request interrupt enable
      FREQIE        : AIM_FREQIE_Field := 16#0#;
      --  Codec not ready interrupt enable
      CNRDYIE       : AIM_CNRDYIE_Field := 16#0#;
      --  Anticipated frame synchronization detection interrupt enable
      AFSDETIE      : AIM_AFSDETIE_Field := 16#0#;
      --  Late frame synchronization detection interrupt enable
      LFSDET        : AIM_LFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.STM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDET        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ASR_OVRUDR_Field is Interfaces.STM32.Bit;
   subtype ASR_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype ASR_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype ASR_FREQ_Field is Interfaces.STM32.Bit;
   subtype ASR_CNRDY_Field is Interfaces.STM32.Bit;
   subtype ASR_AFSDET_Field is Interfaces.STM32.Bit;
   subtype ASR_LFSDET_Field is Interfaces.STM32.Bit;
   subtype ASR_FLVL_Field is Interfaces.STM32.UInt3;

   --  AStatus register
   type ASR_Register is record
      --  Overrun / underrun
      OVRUDR         : ASR_OVRUDR_Field := 16#0#;
      --  Mute detection
      MUTEDET        : ASR_MUTEDET_Field := 16#0#;
      --  Wrong clock configuration flag. This bit is read only
      WCKCFG         : ASR_WCKCFG_Field := 16#0#;
      --  FIFO request
      FREQ           : ASR_FREQ_Field := 16#0#;
      --  Codec not ready
      CNRDY          : ASR_CNRDY_Field := 16#0#;
      --  Anticipated frame synchronization detection
      AFSDET         : ASR_AFSDET_Field := 16#0#;
      --  Late frame synchronization detection
      LFSDET         : ASR_LFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.STM32.UInt9 := 16#0#;
      --  FIFO level threshold
      FLVL           : ASR_FLVL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ACLRFR_OVRUDR_Field is Interfaces.STM32.Bit;
   subtype ACLRFR_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype ACLRFR_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype ACLRFR_CNRDY_Field is Interfaces.STM32.Bit;
   subtype ACLRFR_CAFSDET_Field is Interfaces.STM32.Bit;
   subtype ACLRFR_LFSDET_Field is Interfaces.STM32.Bit;

   --  AClear flag register
   type ACLRFR_Register is record
      --  Clear overrun / underrun
      OVRUDR        : ACLRFR_OVRUDR_Field := 16#0#;
      --  Mute detection flag
      MUTEDET       : ACLRFR_MUTEDET_Field := 16#0#;
      --  Clear wrong clock configuration flag
      WCKCFG        : ACLRFR_WCKCFG_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.STM32.Bit := 16#0#;
      --  Clear codec not ready flag
      CNRDY         : ACLRFR_CNRDY_Field := 16#0#;
      --  Clear anticipated frame synchronization detection flag
      CAFSDET       : ACLRFR_CAFSDET_Field := 16#0#;
      --  Clear late frame synchronization detection flag
      LFSDET        : ACLRFR_LFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.STM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACLRFR_Register use record
      OVRUDR        at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CNRDY         at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      LFSDET        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BCR1_MODE_Field is Interfaces.STM32.UInt2;
   subtype BCR1_PRTCFG_Field is Interfaces.STM32.UInt2;
   subtype BCR1_DS_Field is Interfaces.STM32.UInt3;
   subtype BCR1_LSBFIRST_Field is Interfaces.STM32.Bit;
   subtype BCR1_CKSTR_Field is Interfaces.STM32.Bit;
   subtype BCR1_SYNCEN_Field is Interfaces.STM32.UInt2;
   subtype BCR1_MONO_Field is Interfaces.STM32.Bit;
   subtype BCR1_OutDri_Field is Interfaces.STM32.Bit;
   subtype BCR1_SAIBEN_Field is Interfaces.STM32.Bit;
   subtype BCR1_DMAEN_Field is Interfaces.STM32.Bit;
   subtype BCR1_NODIV_Field is Interfaces.STM32.Bit;
   subtype BCR1_MCJDIV_Field is Interfaces.STM32.UInt6;
   subtype BCR1_OSR_Field is Interfaces.STM32.Bit;
   subtype BCR1_MCKEN_Field is Interfaces.STM32.Bit;

   --  BConfiguration register 1
   type BCR1_Register is record
      --  Audio block mode
      MODE           : BCR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : BCR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.STM32.Bit := 16#0#;
      --  Data size
      DS             : BCR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : BCR1_LSBFIRST_Field := 16#0#;
      --  Clock strobing edge
      CKSTR          : BCR1_CKSTR_Field := 16#0#;
      --  Synchronization enable
      SYNCEN         : BCR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : BCR1_MONO_Field := 16#0#;
      --  Output drive
      OutDri         : BCR1_OutDri_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.STM32.UInt2 := 16#0#;
      --  Audio block B enable
      SAIBEN         : BCR1_SAIBEN_Field := 16#0#;
      --  DMA enable
      DMAEN          : BCR1_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.STM32.Bit := 16#0#;
      --  No divider
      NODIV          : BCR1_NODIV_Field := 16#0#;
      --  Master clock divider
      MCJDIV         : BCR1_MCJDIV_Field := 16#0#;
      --  OSR
      OSR            : BCR1_OSR_Field := 16#0#;
      --  MCKEN
      MCKEN          : BCR1_MCKEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.STM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OutDri         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIBEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCJDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      MCKEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype BCR2_FTH_Field is Interfaces.STM32.UInt3;
   subtype BCR2_FFLUS_Field is Interfaces.STM32.Bit;
   subtype BCR2_TRIS_Field is Interfaces.STM32.Bit;
   subtype BCR2_MUTE_Field is Interfaces.STM32.Bit;
   subtype BCR2_MUTEVAL_Field is Interfaces.STM32.Bit;
   subtype BCR2_MUTECN_Field is Interfaces.STM32.UInt6;
   subtype BCR2_CPL_Field is Interfaces.STM32.Bit;
   subtype BCR2_COMP_Field is Interfaces.STM32.UInt2;

   --  BConfiguration register 2
   type BCR2_Register is record
      --  FIFO threshold
      FTH            : BCR2_FTH_Field := 16#0#;
      --  FIFO flush
      FFLUS          : BCR2_FFLUS_Field := 16#0#;
      --  Tristate management on data line
      TRIS           : BCR2_TRIS_Field := 16#0#;
      --  Mute
      MUTE           : BCR2_MUTE_Field := 16#0#;
      --  Mute value
      MUTEVAL        : BCR2_MUTEVAL_Field := 16#0#;
      --  Mute counter
      MUTECN         : BCR2_MUTECN_Field := 16#0#;
      --  Complement bit
      CPL            : BCR2_CPL_Field := 16#0#;
      --  Companding mode
      COMP           : BCR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUS          at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECN         at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BFRCR_FRL_Field is Interfaces.STM32.Byte;
   subtype BFRCR_FSALL_Field is Interfaces.STM32.UInt7;
   subtype BFRCR_FSDEF_Field is Interfaces.STM32.Bit;
   subtype BFRCR_FSPOL_Field is Interfaces.STM32.Bit;
   subtype BFRCR_FSOFF_Field is Interfaces.STM32.Bit;

   --  BFRCR
   type BFRCR_Register is record
      --  Frame length
      FRL            : BFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length
      FSALL          : BFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  Frame synchronization definition
      FSDEF          : BFRCR_FSDEF_Field := 16#0#;
      --  Frame synchronization polarity
      FSPOL          : BFRCR_FSPOL_Field := 16#0#;
      --  Frame synchronization offset
      FSOFF          : BFRCR_FSOFF_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype BSLOTR_FBOFF_Field is Interfaces.STM32.UInt5;
   subtype BSLOTR_SLOTSZ_Field is Interfaces.STM32.UInt2;
   subtype BSLOTR_NBSLOT_Field is Interfaces.STM32.UInt4;
   subtype BSLOTR_SLOTEN_Field is Interfaces.STM32.UInt16;

   --  BSlot register
   type BSLOTR_Register is record
      --  First bit offset
      FBOFF          : BSLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : BSLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame
      NBSLOT         : BSLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.STM32.UInt4 := 16#0#;
      --  Slot enable
      SLOTEN         : BSLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   subtype BIM_OVRUDRIE_Field is Interfaces.STM32.Bit;
   subtype BIM_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype BIM_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype BIM_FREQIE_Field is Interfaces.STM32.Bit;
   subtype BIM_CNRDYIE_Field is Interfaces.STM32.Bit;
   subtype BIM_AFSDETIE_Field is Interfaces.STM32.Bit;
   subtype BIM_LFSDETIE_Field is Interfaces.STM32.Bit;

   --  BInterrupt mask register2
   type BIM_Register is record
      --  Overrun/underrun interrupt enable
      OVRUDRIE      : BIM_OVRUDRIE_Field := 16#0#;
      --  Mute detection interrupt enable
      MUTEDET       : BIM_MUTEDET_Field := 16#0#;
      --  Wrong clock configuration interrupt enable
      WCKCFG        : BIM_WCKCFG_Field := 16#0#;
      --  FIFO request interrupt enable
      FREQIE        : BIM_FREQIE_Field := 16#0#;
      --  Codec not ready interrupt enable
      CNRDYIE       : BIM_CNRDYIE_Field := 16#0#;
      --  Anticipated frame synchronization detection interrupt enable
      AFSDETIE      : BIM_AFSDETIE_Field := 16#0#;
      --  Late frame synchronization detection interrupt enable
      LFSDETIE      : BIM_LFSDETIE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.STM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BSR_OVRUDR_Field is Interfaces.STM32.Bit;
   subtype BSR_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype BSR_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype BSR_FREQ_Field is Interfaces.STM32.Bit;
   subtype BSR_CNRDY_Field is Interfaces.STM32.Bit;
   subtype BSR_AFSDET_Field is Interfaces.STM32.Bit;
   subtype BSR_LFSDET_Field is Interfaces.STM32.Bit;
   subtype BSR_FLVL_Field is Interfaces.STM32.UInt3;

   --  BStatus register
   type BSR_Register is record
      --  Read-only. Overrun / underrun
      OVRUDR         : BSR_OVRUDR_Field;
      --  Read-only. Mute detection
      MUTEDET        : BSR_MUTEDET_Field;
      --  Read-only. Wrong clock configuration flag
      WCKCFG         : BSR_WCKCFG_Field;
      --  Read-only. FIFO request
      FREQ           : BSR_FREQ_Field;
      --  Read-only. Codec not ready
      CNRDY          : BSR_CNRDY_Field;
      --  Read-only. Anticipated frame synchronization detection
      AFSDET         : BSR_AFSDET_Field;
      --  Read-only. Late frame synchronization detection
      LFSDET         : BSR_LFSDET_Field;
      --  unspecified
      Reserved_7_15  : Interfaces.STM32.UInt9;
      --  Read-only. FIFO level threshold
      FLVL           : BSR_FLVL_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype BCLRFR_OVRUDR_Field is Interfaces.STM32.Bit;
   subtype BCLRFR_MUTEDET_Field is Interfaces.STM32.Bit;
   subtype BCLRFR_WCKCFG_Field is Interfaces.STM32.Bit;
   subtype BCLRFR_CNRDY_Field is Interfaces.STM32.Bit;
   subtype BCLRFR_CAFSDET_Field is Interfaces.STM32.Bit;
   subtype BCLRFR_LFSDET_Field is Interfaces.STM32.Bit;

   --  BClear flag register
   type BCLRFR_Register is record
      --  Write-only. Clear overrun / underrun
      OVRUDR        : BCLRFR_OVRUDR_Field := 16#0#;
      --  Write-only. Mute detection flag
      MUTEDET       : BCLRFR_MUTEDET_Field := 16#0#;
      --  Write-only. Clear wrong clock configuration flag
      WCKCFG        : BCLRFR_WCKCFG_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.STM32.Bit := 16#0#;
      --  Write-only. Clear codec not ready flag
      CNRDY         : BCLRFR_CNRDY_Field := 16#0#;
      --  Write-only. Clear anticipated frame synchronization detection flag
      CAFSDET       : BCLRFR_CAFSDET_Field := 16#0#;
      --  Write-only. Clear late frame synchronization detection flag
      LFSDET        : BCLRFR_LFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.STM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCLRFR_Register use record
      OVRUDR        at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CNRDY         at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      LFSDET        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PDMCR_PDMEN_Field is Interfaces.STM32.Bit;
   subtype PDMCR_MICNBR_Field is Interfaces.STM32.UInt2;
   --  PDMCR_CKEN array element
   subtype PDMCR_CKEN_Element is Interfaces.STM32.Bit;

   --  PDMCR_CKEN array
   type PDMCR_CKEN_Field_Array is array (1 .. 4) of PDMCR_CKEN_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PDMCR_CKEN
   type PDMCR_CKEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKEN as a value
            Val : Interfaces.STM32.UInt4;
         when True =>
            --  CKEN as an array
            Arr : PDMCR_CKEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDMCR_CKEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PDM control register
   type PDMCR_Register is record
      --  PDMEN
      PDMEN          : PDMCR_PDMEN_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.STM32.UInt3 := 16#0#;
      --  MICNBR
      MICNBR         : PDMCR_MICNBR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.STM32.UInt2 := 16#0#;
      --  CKEN1
      CKEN           : PDMCR_CKEN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : Interfaces.STM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMCR_Register use record
      PDMEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MICNBR         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CKEN           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype PDMDLY_DLYM1L_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM1R_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM2L_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM2R_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM3L_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM3R_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM4L_Field is Interfaces.STM32.UInt3;
   subtype PDMDLY_DLYM4R_Field is Interfaces.STM32.UInt3;

   --  PDM delay register
   type PDMDLY_Register is record
      --  DLYM1L
      DLYM1L         : PDMDLY_DLYM1L_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.STM32.Bit := 16#0#;
      --  DLYM1R
      DLYM1R         : PDMDLY_DLYM1R_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.STM32.Bit := 16#0#;
      --  DLYM2L
      DLYM2L         : PDMDLY_DLYM2L_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.STM32.Bit := 16#0#;
      --  DLYM2R
      DLYM2R         : PDMDLY_DLYM2R_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  DLYM3L
      DLYM3L         : PDMDLY_DLYM3L_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.STM32.Bit := 16#0#;
      --  DLYM3R
      DLYM3R         : PDMDLY_DLYM3R_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  DLYM4L
      DLYM4L         : PDMDLY_DLYM4L_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.STM32.Bit := 16#0#;
      --  DLYM4R
      DLYM4R         : PDMDLY_DLYM4R_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.STM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMDLY_Register use record
      DLYM1L         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DLYM1R         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DLYM2L         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DLYM2R         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DLYM3L         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      DLYM3R         at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DLYM4L         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DLYM4R         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial audio interface
   type SAI_Peripheral is record
      --  AConfiguration register 1
      ACR1   : aliased ACR1_Register;
      --  AConfiguration register 2
      ACR2   : aliased ACR2_Register;
      --  AFRCR
      AFRCR  : aliased AFRCR_Register;
      --  ASlot register
      ASLOTR : aliased ASLOTR_Register;
      --  AInterrupt mask register2
      AIM    : aliased AIM_Register;
      --  AStatus register
      ASR    : aliased ASR_Register;
      --  AClear flag register
      ACLRFR : aliased ACLRFR_Register;
      --  AData register
      ADR    : aliased Interfaces.STM32.UInt32;
      --  BConfiguration register 1
      BCR1   : aliased BCR1_Register;
      --  BConfiguration register 2
      BCR2   : aliased BCR2_Register;
      --  BFRCR
      BFRCR  : aliased BFRCR_Register;
      --  BSlot register
      BSLOTR : aliased BSLOTR_Register;
      --  BInterrupt mask register2
      BIM    : aliased BIM_Register;
      --  BStatus register
      BSR    : aliased BSR_Register;
      --  BClear flag register
      BCLRFR : aliased BCLRFR_Register;
      --  BData register
      BDR    : aliased Interfaces.STM32.UInt32;
      --  PDM control register
      PDMCR  : aliased PDMCR_Register;
      --  PDM delay register
      PDMDLY : aliased PDMDLY_Register;
   end record
     with Volatile;

   for SAI_Peripheral use record
      ACR1   at 16#4# range 0 .. 31;
      ACR2   at 16#8# range 0 .. 31;
      AFRCR  at 16#C# range 0 .. 31;
      ASLOTR at 16#10# range 0 .. 31;
      AIM    at 16#14# range 0 .. 31;
      ASR    at 16#18# range 0 .. 31;
      ACLRFR at 16#1C# range 0 .. 31;
      ADR    at 16#20# range 0 .. 31;
      BCR1   at 16#24# range 0 .. 31;
      BCR2   at 16#28# range 0 .. 31;
      BFRCR  at 16#2C# range 0 .. 31;
      BSLOTR at 16#30# range 0 .. 31;
      BIM    at 16#34# range 0 .. 31;
      BSR    at 16#38# range 0 .. 31;
      BCLRFR at 16#3C# range 0 .. 31;
      BDR    at 16#40# range 0 .. 31;
      PDMCR  at 16#44# range 0 .. 31;
      PDMDLY at 16#48# range 0 .. 31;
   end record;

   --  Serial audio interface
   SAI_Periph : aliased SAI_Peripheral
     with Import, Address => SAI_Base;

end Interfaces.STM32.SAI;
