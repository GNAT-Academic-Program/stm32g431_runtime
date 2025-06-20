--
--  Copyright (C) 2025, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from stm32g431xx.svd


with System;

package Interfaces.STM32.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ISR_ADRDY_Field is Interfaces.STM32.Bit;
   subtype ISR_EOSMP_Field is Interfaces.STM32.Bit;
   subtype ISR_EOC_Field is Interfaces.STM32.Bit;
   subtype ISR_EOS_Field is Interfaces.STM32.Bit;
   subtype ISR_OVR_Field is Interfaces.STM32.Bit;
   subtype ISR_JEOC_Field is Interfaces.STM32.Bit;
   subtype ISR_JEOS_Field is Interfaces.STM32.Bit;
   --  ISR_AWD array element
   subtype ISR_AWD_Element is Interfaces.STM32.Bit;

   --  ISR_AWD array
   type ISR_AWD_Field_Array is array (1 .. 3) of ISR_AWD_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ISR_AWD
   type ISR_AWD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AWD as a value
            Val : Interfaces.STM32.UInt3;
         when True =>
            --  AWD as an array
            Arr : ISR_AWD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ISR_AWD_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ISR_JQOVF_Field is Interfaces.STM32.Bit;

   --  interrupt and status register
   type ISR_Register is record
      --  ADRDY
      ADRDY          : ISR_ADRDY_Field := 16#0#;
      --  EOSMP
      EOSMP          : ISR_EOSMP_Field := 16#0#;
      --  EOC
      EOC            : ISR_EOC_Field := 16#0#;
      --  EOS
      EOS            : ISR_EOS_Field := 16#0#;
      --  OVR
      OVR            : ISR_OVR_Field := 16#0#;
      --  JEOC
      JEOC           : ISR_JEOC_Field := 16#0#;
      --  JEOS
      JEOS           : ISR_JEOS_Field := 16#0#;
      --  AWD1
      AWD            : ISR_AWD_Field := (As_Array => False, Val => 16#0#);
      --  JQOVF
      JQOVF          : ISR_JQOVF_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.STM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      JEOC           at 0 range 5 .. 5;
      JEOS           at 0 range 6 .. 6;
      AWD            at 0 range 7 .. 9;
      JQOVF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IER_ADRDYIE_Field is Interfaces.STM32.Bit;
   subtype IER_EOSMPIE_Field is Interfaces.STM32.Bit;
   subtype IER_EOCIE_Field is Interfaces.STM32.Bit;
   subtype IER_EOSIE_Field is Interfaces.STM32.Bit;
   subtype IER_OVRIE_Field is Interfaces.STM32.Bit;
   subtype IER_JEOCIE_Field is Interfaces.STM32.Bit;
   subtype IER_JEOSIE_Field is Interfaces.STM32.Bit;
   subtype IER_AWD1IE_Field is Interfaces.STM32.Bit;
   subtype IER_AWD2IE_Field is Interfaces.STM32.Bit;
   subtype IER_AWD3IE_Field is Interfaces.STM32.Bit;
   subtype IER_JQOVFIE_Field is Interfaces.STM32.Bit;

   --  interrupt enable register
   type IER_Register is record
      --  ADRDYIE
      ADRDYIE        : IER_ADRDYIE_Field := 16#0#;
      --  EOSMPIE
      EOSMPIE        : IER_EOSMPIE_Field := 16#0#;
      --  EOCIE
      EOCIE          : IER_EOCIE_Field := 16#0#;
      --  EOSIE
      EOSIE          : IER_EOSIE_Field := 16#0#;
      --  OVRIE
      OVRIE          : IER_OVRIE_Field := 16#0#;
      --  JEOCIE
      JEOCIE         : IER_JEOCIE_Field := 16#0#;
      --  JEOSIE
      JEOSIE         : IER_JEOSIE_Field := 16#0#;
      --  AWD1IE
      AWD1IE         : IER_AWD1IE_Field := 16#0#;
      --  AWD2IE
      AWD2IE         : IER_AWD2IE_Field := 16#0#;
      --  AWD3IE
      AWD3IE         : IER_AWD3IE_Field := 16#0#;
      --  JQOVFIE
      JQOVFIE        : IER_JQOVFIE_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.STM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      ADRDYIE        at 0 range 0 .. 0;
      EOSMPIE        at 0 range 1 .. 1;
      EOCIE          at 0 range 2 .. 2;
      EOSIE          at 0 range 3 .. 3;
      OVRIE          at 0 range 4 .. 4;
      JEOCIE         at 0 range 5 .. 5;
      JEOSIE         at 0 range 6 .. 6;
      AWD1IE         at 0 range 7 .. 7;
      AWD2IE         at 0 range 8 .. 8;
      AWD3IE         at 0 range 9 .. 9;
      JQOVFIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CR_ADEN_Field is Interfaces.STM32.Bit;
   subtype CR_ADDIS_Field is Interfaces.STM32.Bit;
   subtype CR_ADSTART_Field is Interfaces.STM32.Bit;
   subtype CR_JADSTART_Field is Interfaces.STM32.Bit;
   subtype CR_ADSTP_Field is Interfaces.STM32.Bit;
   subtype CR_JADSTP_Field is Interfaces.STM32.Bit;
   subtype CR_ADVREGEN_Field is Interfaces.STM32.Bit;
   subtype CR_DEEPPWD_Field is Interfaces.STM32.Bit;
   subtype CR_ADCALDIF_Field is Interfaces.STM32.Bit;
   subtype CR_ADCAL_Field is Interfaces.STM32.Bit;

   --  control register
   type CR_Register is record
      --  ADEN
      ADEN          : CR_ADEN_Field := 16#0#;
      --  ADDIS
      ADDIS         : CR_ADDIS_Field := 16#0#;
      --  ADSTART
      ADSTART       : CR_ADSTART_Field := 16#0#;
      --  JADSTART
      JADSTART      : CR_JADSTART_Field := 16#0#;
      --  ADSTP
      ADSTP         : CR_ADSTP_Field := 16#0#;
      --  JADSTP
      JADSTP        : CR_JADSTP_Field := 16#0#;
      --  unspecified
      Reserved_6_27 : Interfaces.STM32.UInt22 := 16#0#;
      --  ADVREGEN
      ADVREGEN      : CR_ADVREGEN_Field := 16#0#;
      --  DEEPPWD
      DEEPPWD       : CR_DEEPPWD_Field := 16#1#;
      --  ADCALDIF
      ADCALDIF      : CR_ADCALDIF_Field := 16#0#;
      --  ADCAL
      ADCAL         : CR_ADCAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ADEN          at 0 range 0 .. 0;
      ADDIS         at 0 range 1 .. 1;
      ADSTART       at 0 range 2 .. 2;
      JADSTART      at 0 range 3 .. 3;
      ADSTP         at 0 range 4 .. 4;
      JADSTP        at 0 range 5 .. 5;
      Reserved_6_27 at 0 range 6 .. 27;
      ADVREGEN      at 0 range 28 .. 28;
      DEEPPWD       at 0 range 29 .. 29;
      ADCALDIF      at 0 range 30 .. 30;
      ADCAL         at 0 range 31 .. 31;
   end record;

   subtype CFGR_DMAEN_Field is Interfaces.STM32.Bit;
   subtype CFGR_DMACFG_Field is Interfaces.STM32.Bit;
   subtype CFGR_RES_Field is Interfaces.STM32.UInt2;
   subtype CFGR_ALIGN_5_Field is Interfaces.STM32.Bit;
   subtype CFGR_EXTSEL_Field is Interfaces.STM32.UInt4;
   subtype CFGR_EXTEN_Field is Interfaces.STM32.UInt2;
   subtype CFGR_OVRMOD_Field is Interfaces.STM32.Bit;
   subtype CFGR_CONT_Field is Interfaces.STM32.Bit;
   subtype CFGR_AUTDLY_Field is Interfaces.STM32.Bit;
   subtype CFGR_ALIGN_Field is Interfaces.STM32.Bit;
   subtype CFGR_DISCEN_Field is Interfaces.STM32.Bit;
   subtype CFGR_DISCNUM_Field is Interfaces.STM32.UInt3;
   subtype CFGR_JDISCEN_Field is Interfaces.STM32.Bit;
   subtype CFGR_JQM_Field is Interfaces.STM32.Bit;
   subtype CFGR_AWD1SGL_Field is Interfaces.STM32.Bit;
   subtype CFGR_AWD1EN_Field is Interfaces.STM32.Bit;
   subtype CFGR_JAWD1EN_Field is Interfaces.STM32.Bit;
   subtype CFGR_JAUTO_Field is Interfaces.STM32.Bit;
   subtype CFGR_AWDCH1CH_Field is Interfaces.STM32.UInt5;
   subtype CFGR_JQDIS_Field is Interfaces.STM32.Bit;

   --  configuration register
   type CFGR_Register is record
      --  DMAEN
      DMAEN        : CFGR_DMAEN_Field := 16#0#;
      --  DMACFG
      DMACFG       : CFGR_DMACFG_Field := 16#0#;
      --  unspecified
      Reserved_2_2 : Interfaces.STM32.Bit := 16#0#;
      --  RES
      RES          : CFGR_RES_Field := 16#0#;
      --  ALIGN_5
      ALIGN_5      : CFGR_ALIGN_5_Field := 16#0#;
      --  EXTSEL
      EXTSEL       : CFGR_EXTSEL_Field := 16#0#;
      --  EXTEN
      EXTEN        : CFGR_EXTEN_Field := 16#0#;
      --  OVRMOD
      OVRMOD       : CFGR_OVRMOD_Field := 16#0#;
      --  CONT
      CONT         : CFGR_CONT_Field := 16#0#;
      --  AUTDLY
      AUTDLY       : CFGR_AUTDLY_Field := 16#0#;
      --  ALIGN
      ALIGN        : CFGR_ALIGN_Field := 16#0#;
      --  DISCEN
      DISCEN       : CFGR_DISCEN_Field := 16#0#;
      --  DISCNUM
      DISCNUM      : CFGR_DISCNUM_Field := 16#0#;
      --  JDISCEN
      JDISCEN      : CFGR_JDISCEN_Field := 16#0#;
      --  JQM
      JQM          : CFGR_JQM_Field := 16#0#;
      --  AWD1SGL
      AWD1SGL      : CFGR_AWD1SGL_Field := 16#0#;
      --  AWD1EN
      AWD1EN       : CFGR_AWD1EN_Field := 16#0#;
      --  JAWD1EN
      JAWD1EN      : CFGR_JAWD1EN_Field := 16#0#;
      --  JAUTO
      JAUTO        : CFGR_JAUTO_Field := 16#0#;
      --  AWDCH1CH
      AWDCH1CH     : CFGR_AWDCH1CH_Field := 16#0#;
      --  Injected Queue disable
      JQDIS        : CFGR_JQDIS_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      DMAEN        at 0 range 0 .. 0;
      DMACFG       at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      RES          at 0 range 3 .. 4;
      ALIGN_5      at 0 range 5 .. 5;
      EXTSEL       at 0 range 6 .. 9;
      EXTEN        at 0 range 10 .. 11;
      OVRMOD       at 0 range 12 .. 12;
      CONT         at 0 range 13 .. 13;
      AUTDLY       at 0 range 14 .. 14;
      ALIGN        at 0 range 15 .. 15;
      DISCEN       at 0 range 16 .. 16;
      DISCNUM      at 0 range 17 .. 19;
      JDISCEN      at 0 range 20 .. 20;
      JQM          at 0 range 21 .. 21;
      AWD1SGL      at 0 range 22 .. 22;
      AWD1EN       at 0 range 23 .. 23;
      JAWD1EN      at 0 range 24 .. 24;
      JAUTO        at 0 range 25 .. 25;
      AWDCH1CH     at 0 range 26 .. 30;
      JQDIS        at 0 range 31 .. 31;
   end record;

   subtype CFGR2_ROVSE_Field is Interfaces.STM32.Bit;
   subtype CFGR2_JOVSE_Field is Interfaces.STM32.Bit;
   subtype CFGR2_OVSR_Field is Interfaces.STM32.UInt3;
   subtype CFGR2_OVSS_Field is Interfaces.STM32.UInt4;
   subtype CFGR2_TROVS_Field is Interfaces.STM32.Bit;
   subtype CFGR2_ROVSM_Field is Interfaces.STM32.Bit;
   subtype CFGR2_GCOMP_Field is Interfaces.STM32.Bit;
   subtype CFGR2_SWTRIG_Field is Interfaces.STM32.Bit;
   subtype CFGR2_BULB_Field is Interfaces.STM32.Bit;
   subtype CFGR2_SMPTRIG_Field is Interfaces.STM32.Bit;

   --  configuration register
   type CFGR2_Register is record
      --  DMAEN
      ROVSE          : CFGR2_ROVSE_Field := 16#0#;
      --  DMACFG
      JOVSE          : CFGR2_JOVSE_Field := 16#0#;
      --  RES
      OVSR           : CFGR2_OVSR_Field := 16#0#;
      --  ALIGN
      OVSS           : CFGR2_OVSS_Field := 16#0#;
      --  Triggered Regular Oversampling
      TROVS          : CFGR2_TROVS_Field := 16#0#;
      --  EXTEN
      ROVSM          : CFGR2_ROVSM_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : Interfaces.STM32.UInt5 := 16#0#;
      --  GCOMP
      GCOMP          : CFGR2_GCOMP_Field := 16#0#;
      --  unspecified
      Reserved_17_24 : Interfaces.STM32.Byte := 16#0#;
      --  SWTRIG
      SWTRIG         : CFGR2_SWTRIG_Field := 16#0#;
      --  BULB
      BULB           : CFGR2_BULB_Field := 16#0#;
      --  SMPTRIG
      SMPTRIG        : CFGR2_SMPTRIG_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.STM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      ROVSE          at 0 range 0 .. 0;
      JOVSE          at 0 range 1 .. 1;
      OVSR           at 0 range 2 .. 4;
      OVSS           at 0 range 5 .. 8;
      TROVS          at 0 range 9 .. 9;
      ROVSM          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      GCOMP          at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      SWTRIG         at 0 range 25 .. 25;
      BULB           at 0 range 26 .. 26;
      SMPTRIG        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  SMPR1_SMP array element
   subtype SMPR1_SMP_Element is Interfaces.STM32.UInt3;

   --  SMPR1_SMP array
   type SMPR1_SMP_Field_Array is array (0 .. 9) of SMPR1_SMP_Element
     with Component_Size => 3, Size => 30;

   --  Type definition for SMPR1_SMP
   type SMPR1_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : Interfaces.STM32.UInt30;
         when True =>
            --  SMP as an array
            Arr : SMPR1_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SMPR1_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   subtype SMPR1_SMPPLUS_Field is Interfaces.STM32.Bit;

   --  sample time register 1
   type SMPR1_Register is record
      --  SMP0
      SMP            : SMPR1_SMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_30 : Interfaces.STM32.Bit := 16#0#;
      --  Addition of one clock cycle to the sampling time
      SMPPLUS        : SMPR1_SMPPLUS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR1_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SMPPLUS        at 0 range 31 .. 31;
   end record;

   --  SMPR2_SMP array element
   subtype SMPR2_SMP_Element is Interfaces.STM32.UInt3;

   --  SMPR2_SMP array
   type SMPR2_SMP_Field_Array is array (10 .. 18) of SMPR2_SMP_Element
     with Component_Size => 3, Size => 27;

   --  Type definition for SMPR2_SMP
   type SMPR2_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : Interfaces.STM32.UInt27;
         when True =>
            --  SMP as an array
            Arr : SMPR2_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SMPR2_SMP_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  sample time register 2
   type SMPR2_Register is record
      --  SMP10
      SMP            : SMPR2_SMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : Interfaces.STM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR2_Register use record
      SMP            at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TR1_LT1_Field is Interfaces.STM32.UInt12;
   subtype TR1_AWDFILT_Field is Interfaces.STM32.UInt3;
   subtype TR1_HT1_Field is Interfaces.STM32.UInt12;

   --  watchdog threshold register 1
   type TR1_Register is record
      --  LT1
      LT1            : TR1_LT1_Field := 16#0#;
      --  AWDFILT
      AWDFILT        : TR1_AWDFILT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  HT1
      HT1            : TR1_HT1_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.STM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR1_Register use record
      LT1            at 0 range 0 .. 11;
      AWDFILT        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HT1            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TR2_LT2_Field is Interfaces.STM32.Byte;
   subtype TR2_HT2_Field is Interfaces.STM32.Byte;

   --  watchdog threshold register
   type TR2_Register is record
      --  LT2
      LT2            : TR2_LT2_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.STM32.Byte := 16#0#;
      --  HT2
      HT2            : TR2_HT2_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : Interfaces.STM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR2_Register use record
      LT2            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT2            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TR3_LT3_Field is Interfaces.STM32.Byte;
   subtype TR3_HT3_Field is Interfaces.STM32.Byte;

   --  watchdog threshold register 3
   type TR3_Register is record
      --  LT3
      LT3            : TR3_LT3_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.STM32.Byte := 16#0#;
      --  HT3
      HT3            : TR3_HT3_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : Interfaces.STM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR3_Register use record
      LT3            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT3            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SQR1_L_Field is Interfaces.STM32.UInt4;
   subtype SQR1_SQ1_Field is Interfaces.STM32.UInt5;
   subtype SQR1_SQ2_Field is Interfaces.STM32.UInt5;
   subtype SQR1_SQ3_Field is Interfaces.STM32.UInt5;
   subtype SQR1_SQ4_Field is Interfaces.STM32.UInt5;

   --  regular sequence register 1
   type SQR1_Register is record
      --  Regular channel sequence length
      L              : SQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.STM32.UInt2 := 16#0#;
      --  SQ1
      SQ1            : SQR1_SQ1_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.STM32.Bit := 16#0#;
      --  SQ2
      SQ2            : SQR1_SQ2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.STM32.Bit := 16#0#;
      --  SQ3
      SQ3            : SQR1_SQ3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  SQ4
      SQ4            : SQR1_SQ4_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.STM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR1_Register use record
      L              at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SQ1            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ2            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ3            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ4            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR2_SQ5_Field is Interfaces.STM32.UInt5;
   subtype SQR2_SQ6_Field is Interfaces.STM32.UInt5;
   subtype SQR2_SQ7_Field is Interfaces.STM32.UInt5;
   subtype SQR2_SQ8_Field is Interfaces.STM32.UInt5;
   subtype SQR2_SQ9_Field is Interfaces.STM32.UInt5;

   --  regular sequence register 2
   type SQR2_Register is record
      --  SQ5
      SQ5            : SQR2_SQ5_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  SQ6
      SQ6            : SQR2_SQ6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.STM32.Bit := 16#0#;
      --  SQ7
      SQ7            : SQR2_SQ7_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.STM32.Bit := 16#0#;
      --  SQ8
      SQ8            : SQR2_SQ8_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  SQ9
      SQ9            : SQR2_SQ9_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.STM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR2_Register use record
      SQ5            at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ6            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ7            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ8            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ9            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR3_SQ10_Field is Interfaces.STM32.UInt5;
   subtype SQR3_SQ11_Field is Interfaces.STM32.UInt5;
   subtype SQR3_SQ12_Field is Interfaces.STM32.UInt5;
   subtype SQR3_SQ13_Field is Interfaces.STM32.UInt5;
   subtype SQR3_SQ14_Field is Interfaces.STM32.UInt5;

   --  regular sequence register 3
   type SQR3_Register is record
      --  SQ10
      SQ10           : SQR3_SQ10_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  SQ11
      SQ11           : SQR3_SQ11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.STM32.Bit := 16#0#;
      --  SQ12
      SQ12           : SQR3_SQ12_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.STM32.Bit := 16#0#;
      --  SQ13
      SQ13           : SQR3_SQ13_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  SQ14
      SQ14           : SQR3_SQ14_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.STM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR3_Register use record
      SQ10           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ11           at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ12           at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ13           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ14           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR4_SQ15_Field is Interfaces.STM32.UInt5;
   subtype SQR4_SQ16_Field is Interfaces.STM32.UInt5;

   --  regular sequence register 4
   type SQR4_Register is record
      --  SQ15
      SQ15           : SQR4_SQ15_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  SQ16
      SQ16           : SQR4_SQ16_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.STM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR4_Register use record
      SQ15           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ16           at 0 range 6 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DR_RDATA_Field is Interfaces.STM32.UInt16;

   --  regular Data Register
   type DR_Register is record
      --  Read-only. Regular Data converted
      RDATA          : DR_RDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JSQR_JL_Field is Interfaces.STM32.UInt2;
   subtype JSQR_JEXTSEL_Field is Interfaces.STM32.UInt5;
   subtype JSQR_JEXTEN_Field is Interfaces.STM32.UInt2;
   subtype JSQR_JSQ1_Field is Interfaces.STM32.UInt5;
   subtype JSQR_JSQ2_Field is Interfaces.STM32.UInt5;
   subtype JSQR_JSQ3_Field is Interfaces.STM32.UInt5;
   subtype JSQR_JSQ4_Field is Interfaces.STM32.UInt5;

   --  injected sequence register
   type JSQR_Register is record
      --  JL
      JL             : JSQR_JL_Field := 16#0#;
      --  JEXTSEL
      JEXTSEL        : JSQR_JEXTSEL_Field := 16#0#;
      --  JEXTEN
      JEXTEN         : JSQR_JEXTEN_Field := 16#0#;
      --  JSQ1
      JSQ1           : JSQR_JSQ1_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  JSQ2
      JSQ2           : JSQR_JSQ2_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Interfaces.STM32.Bit := 16#0#;
      --  JSQ3
      JSQ3           : JSQR_JSQ3_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.STM32.Bit := 16#0#;
      --  JSQ4
      JSQ4           : JSQR_JSQ4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JSQR_Register use record
      JL             at 0 range 0 .. 1;
      JEXTSEL        at 0 range 2 .. 6;
      JEXTEN         at 0 range 7 .. 8;
      JSQ1           at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      JSQ2           at 0 range 15 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      JSQ3           at 0 range 21 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      JSQ4           at 0 range 27 .. 31;
   end record;

   subtype OFR_OFFSET1_Field is Interfaces.STM32.UInt12;
   subtype OFR_OFFSETPOS_Field is Interfaces.STM32.Bit;
   subtype OFR_SATEN_Field is Interfaces.STM32.Bit;
   subtype OFR_OFFSET1_CH_Field is Interfaces.STM32.UInt5;
   subtype OFR_OFFSET1_EN_Field is Interfaces.STM32.Bit;

   --  offset register 1
   type OFR_Register is record
      --  OFFSET1
      OFFSET1        : OFR_OFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : Interfaces.STM32.UInt12 := 16#0#;
      --  OFFSETPOS
      OFFSETPOS      : OFR_OFFSETPOS_Field := 16#0#;
      --  SATEN
      SATEN          : OFR_SATEN_Field := 16#0#;
      --  OFFSET1_CH
      OFFSET1_CH     : OFR_OFFSET1_CH_Field := 16#0#;
      --  OFFSET1_EN
      OFFSET1_EN     : OFR_OFFSET1_EN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFR_Register use record
      OFFSET1        at 0 range 0 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      OFFSETPOS      at 0 range 24 .. 24;
      SATEN          at 0 range 25 .. 25;
      OFFSET1_CH     at 0 range 26 .. 30;
      OFFSET1_EN     at 0 range 31 .. 31;
   end record;

   subtype JDR1_JDATA1_Field is Interfaces.STM32.UInt16;

   --  injected data register 1
   type JDR1_Register is record
      --  Read-only. JDATA1
      JDATA1         : JDR1_JDATA1_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR1_Register use record
      JDATA1         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR2_JDATA2_Field is Interfaces.STM32.UInt16;

   --  injected data register 2
   type JDR2_Register is record
      --  Read-only. JDATA2
      JDATA2         : JDR2_JDATA2_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR2_Register use record
      JDATA2         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR3_JDATA3_Field is Interfaces.STM32.UInt16;

   --  injected data register 3
   type JDR3_Register is record
      --  Read-only. JDATA3
      JDATA3         : JDR3_JDATA3_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR3_Register use record
      JDATA3         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR4_JDATA4_Field is Interfaces.STM32.UInt16;

   --  injected data register 4
   type JDR4_Register is record
      --  Read-only. JDATA4
      JDATA4         : JDR4_JDATA4_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR4_Register use record
      JDATA4         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AWD2CR_AWD2CH_Field is Interfaces.STM32.UInt19;

   --  Analog Watchdog 2 Configuration Register
   type AWD2CR_Register is record
      --  AWD2CH
      AWD2CH         : AWD2CR_AWD2CH_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWD2CR_Register use record
      AWD2CH         at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype AWD3CR_AWD3CH_Field is Interfaces.STM32.UInt19;

   --  Analog Watchdog 3 Configuration Register
   type AWD3CR_Register is record
      --  AWD3CH
      AWD3CH         : AWD3CR_AWD3CH_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWD3CR_Register use record
      AWD3CH         at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype DIFSEL_DIFSEL_0_Field is Interfaces.STM32.Bit;
   subtype DIFSEL_DIFSEL_1_18_Field is Interfaces.STM32.UInt18;

   --  Differential Mode Selection Register 2
   type DIFSEL_Register is record
      --  Read-only. Differential mode for channels 0
      DIFSEL_0       : DIFSEL_DIFSEL_0_Field := 16#0#;
      --  Differential mode for channels 15 to 1
      DIFSEL_1_18    : DIFSEL_DIFSEL_1_18_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.STM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIFSEL_Register use record
      DIFSEL_0       at 0 range 0 .. 0;
      DIFSEL_1_18    at 0 range 1 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CALFACT_CALFACT_S_Field is Interfaces.STM32.UInt7;
   subtype CALFACT_CALFACT_D_Field is Interfaces.STM32.UInt7;

   --  Calibration Factors
   type CALFACT_Register is record
      --  CALFACT_S
      CALFACT_S      : CALFACT_CALFACT_S_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.STM32.UInt9 := 16#0#;
      --  CALFACT_D
      CALFACT_D      : CALFACT_CALFACT_D_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.STM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALFACT_Register use record
      CALFACT_S      at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      CALFACT_D      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype GCOMP_GCOMPCOEFF_Field is Interfaces.STM32.UInt14;

   --  Gain compensation Register
   type GCOMP_Register is record
      --  GCOMPCOEFF
      GCOMPCOEFF     : GCOMP_GCOMPCOEFF_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.STM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCOMP_Register use record
      GCOMPCOEFF     at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CSR_ADDRDY_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_EOSMP_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_EOC_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_EOS_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_OVR_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_JEOC_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_JEOS_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD1_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD2_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD3_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_JQOVF_MST_Field is Interfaces.STM32.Bit;
   subtype CSR_ADRDY_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_EOSMP_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_EOC_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_EOS_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_OVR_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_JEOC_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_JEOS_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD1_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD2_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_AWD3_SLV_Field is Interfaces.STM32.Bit;
   subtype CSR_JQOVF_SLV_Field is Interfaces.STM32.Bit;

   --  ADC Common status register
   type CSR_Register is record
      --  Read-only. ADDRDY_MST
      ADDRDY_MST     : CSR_ADDRDY_MST_Field;
      --  Read-only. EOSMP_MST
      EOSMP_MST      : CSR_EOSMP_MST_Field;
      --  Read-only. EOC_MST
      EOC_MST        : CSR_EOC_MST_Field;
      --  Read-only. EOS_MST
      EOS_MST        : CSR_EOS_MST_Field;
      --  Read-only. OVR_MST
      OVR_MST        : CSR_OVR_MST_Field;
      --  Read-only. JEOC_MST
      JEOC_MST       : CSR_JEOC_MST_Field;
      --  Read-only. JEOS_MST
      JEOS_MST       : CSR_JEOS_MST_Field;
      --  Read-only. AWD1_MST
      AWD1_MST       : CSR_AWD1_MST_Field;
      --  Read-only. AWD2_MST
      AWD2_MST       : CSR_AWD2_MST_Field;
      --  Read-only. AWD3_MST
      AWD3_MST       : CSR_AWD3_MST_Field;
      --  Read-only. JQOVF_MST
      JQOVF_MST      : CSR_JQOVF_MST_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.STM32.UInt5;
      --  Read-only. ADRDY_SLV
      ADRDY_SLV      : CSR_ADRDY_SLV_Field;
      --  Read-only. EOSMP_SLV
      EOSMP_SLV      : CSR_EOSMP_SLV_Field;
      --  Read-only. End of regular conversion of the slave ADC
      EOC_SLV        : CSR_EOC_SLV_Field;
      --  Read-only. End of regular sequence flag of the slave ADC
      EOS_SLV        : CSR_EOS_SLV_Field;
      --  Read-only. Overrun flag of the slave ADC
      OVR_SLV        : CSR_OVR_SLV_Field;
      --  Read-only. End of injected conversion flag of the slave ADC
      JEOC_SLV       : CSR_JEOC_SLV_Field;
      --  Read-only. End of injected sequence flag of the slave ADC
      JEOS_SLV       : CSR_JEOS_SLV_Field;
      --  Read-only. Analog watchdog 1 flag of the slave ADC
      AWD1_SLV       : CSR_AWD1_SLV_Field;
      --  Read-only. Analog watchdog 2 flag of the slave ADC
      AWD2_SLV       : CSR_AWD2_SLV_Field;
      --  Read-only. Analog watchdog 3 flag of the slave ADC
      AWD3_SLV       : CSR_AWD3_SLV_Field;
      --  Read-only. Injected Context Queue Overflow flag of the slave ADC
      JQOVF_SLV      : CSR_JQOVF_SLV_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.STM32.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      ADDRDY_MST     at 0 range 0 .. 0;
      EOSMP_MST      at 0 range 1 .. 1;
      EOC_MST        at 0 range 2 .. 2;
      EOS_MST        at 0 range 3 .. 3;
      OVR_MST        at 0 range 4 .. 4;
      JEOC_MST       at 0 range 5 .. 5;
      JEOS_MST       at 0 range 6 .. 6;
      AWD1_MST       at 0 range 7 .. 7;
      AWD2_MST       at 0 range 8 .. 8;
      AWD3_MST       at 0 range 9 .. 9;
      JQOVF_MST      at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      ADRDY_SLV      at 0 range 16 .. 16;
      EOSMP_SLV      at 0 range 17 .. 17;
      EOC_SLV        at 0 range 18 .. 18;
      EOS_SLV        at 0 range 19 .. 19;
      OVR_SLV        at 0 range 20 .. 20;
      JEOC_SLV       at 0 range 21 .. 21;
      JEOS_SLV       at 0 range 22 .. 22;
      AWD1_SLV       at 0 range 23 .. 23;
      AWD2_SLV       at 0 range 24 .. 24;
      AWD3_SLV       at 0 range 25 .. 25;
      JQOVF_SLV      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype CCR_DUAL_Field is Interfaces.STM32.UInt5;
   subtype CCR_DELAY_Field is Interfaces.STM32.UInt4;
   subtype CCR_DMACFG_Field is Interfaces.STM32.Bit;
   subtype CCR_MDMA_Field is Interfaces.STM32.UInt2;
   subtype CCR_CKMODE_Field is Interfaces.STM32.UInt2;
   subtype CCR_PRESC_Field is Interfaces.STM32.UInt4;
   subtype CCR_VREFEN_Field is Interfaces.STM32.Bit;
   subtype CCR_CH17SEL_Field is Interfaces.STM32.Bit;
   subtype CCR_CH18SEL_Field is Interfaces.STM32.Bit;

   --  ADC common control register
   type CCR_Register is record
      --  Dual ADC mode selection
      DUAL           : CCR_DUAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.STM32.UInt3 := 16#0#;
      --  Delay between 2 sampling phases
      DELAY_k        : CCR_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.STM32.Bit := 16#0#;
      --  DMA configuration (for multi-ADC mode)
      DMACFG         : CCR_DMACFG_Field := 16#0#;
      --  Direct memory access mode for multi ADC mode
      MDMA           : CCR_MDMA_Field := 16#0#;
      --  ADC clock mode
      CKMODE         : CCR_CKMODE_Field := 16#0#;
      --  ADC prescaler
      PRESC          : CCR_PRESC_Field := 16#0#;
      --  VREFINT enable
      VREFEN         : CCR_VREFEN_Field := 16#0#;
      --  CH17 selection
      CH17SEL        : CCR_CH17SEL_Field := 16#0#;
      --  CH18 selection
      CH18SEL        : CCR_CH18SEL_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.STM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      DUAL           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DELAY_k        at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      DMACFG         at 0 range 13 .. 13;
      MDMA           at 0 range 14 .. 15;
      CKMODE         at 0 range 16 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      CH17SEL        at 0 range 23 .. 23;
      CH18SEL        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CDR_RDATA_MST_Field is Interfaces.STM32.UInt16;
   subtype CDR_RDATA_SLV_Field is Interfaces.STM32.UInt16;

   --  ADC common regular data register for dual and triple modes
   type CDR_Register is record
      --  Read-only. Regular data of the master ADC
      RDATA_MST : CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave ADC
      RDATA_SLV : CDR_RDATA_SLV_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC1_Peripheral is record
      --  interrupt and status register
      ISR     : aliased ISR_Register;
      --  interrupt enable register
      IER     : aliased IER_Register;
      --  control register
      CR      : aliased CR_Register;
      --  configuration register
      CFGR    : aliased CFGR_Register;
      --  configuration register
      CFGR2   : aliased CFGR2_Register;
      --  sample time register 1
      SMPR1   : aliased SMPR1_Register;
      --  sample time register 2
      SMPR2   : aliased SMPR2_Register;
      --  watchdog threshold register 1
      TR1     : aliased TR1_Register;
      --  watchdog threshold register
      TR2     : aliased TR2_Register;
      --  watchdog threshold register 3
      TR3     : aliased TR3_Register;
      --  regular sequence register 1
      SQR1    : aliased SQR1_Register;
      --  regular sequence register 2
      SQR2    : aliased SQR2_Register;
      --  regular sequence register 3
      SQR3    : aliased SQR3_Register;
      --  regular sequence register 4
      SQR4    : aliased SQR4_Register;
      --  regular Data Register
      DR      : aliased DR_Register;
      --  injected sequence register
      JSQR    : aliased JSQR_Register;
      --  offset register 1
      OFR1    : aliased OFR_Register;
      --  offset register 2
      OFR2    : aliased OFR_Register;
      --  offset register 3
      OFR3    : aliased OFR_Register;
      --  offset register 4
      OFR4    : aliased OFR_Register;
      --  injected data register 1
      JDR1    : aliased JDR1_Register;
      --  injected data register 2
      JDR2    : aliased JDR2_Register;
      --  injected data register 3
      JDR3    : aliased JDR3_Register;
      --  injected data register 4
      JDR4    : aliased JDR4_Register;
      --  Analog Watchdog 2 Configuration Register
      AWD2CR  : aliased AWD2CR_Register;
      --  Analog Watchdog 3 Configuration Register
      AWD3CR  : aliased AWD3CR_Register;
      --  Differential Mode Selection Register 2
      DIFSEL  : aliased DIFSEL_Register;
      --  Calibration Factors
      CALFACT : aliased CALFACT_Register;
      --  Gain compensation Register
      GCOMP   : aliased GCOMP_Register;
   end record
     with Volatile;

   for ADC1_Peripheral use record
      ISR     at 16#0# range 0 .. 31;
      IER     at 16#4# range 0 .. 31;
      CR      at 16#8# range 0 .. 31;
      CFGR    at 16#C# range 0 .. 31;
      CFGR2   at 16#10# range 0 .. 31;
      SMPR1   at 16#14# range 0 .. 31;
      SMPR2   at 16#18# range 0 .. 31;
      TR1     at 16#20# range 0 .. 31;
      TR2     at 16#24# range 0 .. 31;
      TR3     at 16#28# range 0 .. 31;
      SQR1    at 16#30# range 0 .. 31;
      SQR2    at 16#34# range 0 .. 31;
      SQR3    at 16#38# range 0 .. 31;
      SQR4    at 16#3C# range 0 .. 31;
      DR      at 16#40# range 0 .. 31;
      JSQR    at 16#4C# range 0 .. 31;
      OFR1    at 16#60# range 0 .. 31;
      OFR2    at 16#64# range 0 .. 31;
      OFR3    at 16#68# range 0 .. 31;
      OFR4    at 16#6C# range 0 .. 31;
      JDR1    at 16#80# range 0 .. 31;
      JDR2    at 16#84# range 0 .. 31;
      JDR3    at 16#88# range 0 .. 31;
      JDR4    at 16#8C# range 0 .. 31;
      AWD2CR  at 16#A0# range 0 .. 31;
      AWD3CR  at 16#A4# range 0 .. 31;
      DIFSEL  at 16#B0# range 0 .. 31;
      CALFACT at 16#B4# range 0 .. 31;
      GCOMP   at 16#C0# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC1_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC1_Base;

   --  Analog-to-Digital Converter
   ADC2_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC2_Base;

   --  Analog-to-Digital Converter
   type ADC12_Common_Peripheral is record
      --  ADC Common status register
      CSR : aliased CSR_Register;
      --  ADC common control register
      CCR : aliased CCR_Register;
      --  ADC common regular data register for dual and triple modes
      CDR : aliased CDR_Register;
   end record
     with Volatile;

   for ADC12_Common_Peripheral use record
      CSR at 16#0# range 0 .. 31;
      CCR at 16#8# range 0 .. 31;
      CDR at 16#C# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC12_Common_Periph : aliased ADC12_Common_Peripheral
     with Import, Address => ADC12_Common_Base;

   --  Analog-to-Digital Converter
   ADC345_Common_Periph : aliased ADC12_Common_Peripheral
     with Import, Address => ADC345_Common_Base;

end Interfaces.STM32.ADC;
