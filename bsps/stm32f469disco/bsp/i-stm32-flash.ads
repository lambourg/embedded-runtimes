--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from STM32F46_79x.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.FLASH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- ACR_Register --
   ------------------

   subtype ACR_LATENCY_Field is Interfaces.Bit_Types.UInt3;
   subtype ACR_PRFTEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_ICEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_DCEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_ICRST_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_DCRST_Field is Interfaces.Bit_Types.Bit;

   --  Flash access control register
   type ACR_Register is record
      --  Latency
      LATENCY        : ACR_LATENCY_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Prefetch enable
      PRFTEN         : ACR_PRFTEN_Field := 16#0#;
      --  Instruction cache enable
      ICEN           : ACR_ICEN_Field := 16#0#;
      --  Data cache enable
      DCEN           : ACR_DCEN_Field := 16#0#;
      --  Write-only. Instruction cache reset
      ICRST          : ACR_ICRST_Field := 16#0#;
      --  Data cache reset
      DCRST          : ACR_DCRST_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      ICEN           at 0 range 9 .. 9;
      DCEN           at 0 range 10 .. 10;
      ICRST          at 0 range 11 .. 11;
      DCRST          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   subtype SR_EOP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OPERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_WRPERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PGAERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PGPERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PGSERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RDERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BSY_Field is Interfaces.Bit_Types.Bit;

   --  Status register
   type SR_Register is record
      --  End of operation
      EOP            : SR_EOP_Field := 16#0#;
      --  Operation error
      OPERR          : SR_OPERR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write protection error
      WRPERR         : SR_WRPERR_Field := 16#0#;
      --  Programming alignment error
      PGAERR         : SR_PGAERR_Field := 16#0#;
      --  Programming parallelism error
      PGPERR         : SR_PGPERR_Field := 16#0#;
      --  Programming sequence error
      PGSERR         : SR_PGSERR_Field := 16#0#;
      --  Proprietary readout protection (PCROP) error
      RDERR          : SR_RDERR_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Busy
      BSY            : SR_BSY_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      PGPERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      RDERR          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      BSY            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_PG_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SER_Field is Interfaces.Bit_Types.Bit;
   subtype CR_MER_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SNB_Field is Interfaces.Bit_Types.UInt5;
   subtype CR_PSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_MER1_Field is Interfaces.Bit_Types.Bit;
   subtype CR_STRT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_EOPIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ERRIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_LOCK_Field is Interfaces.Bit_Types.Bit;

   --  Control register
   type CR_Register is record
      --  Programming
      PG             : CR_PG_Field := 16#0#;
      --  Sector Erase
      SER            : CR_SER_Field := 16#0#;
      --  Mass Erase of sectors 0 to 11
      MER            : CR_MER_Field := 16#0#;
      --  Sector number
      SNB            : CR_SNB_Field := 16#0#;
      --  Program size
      PSIZE          : CR_PSIZE_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Mass Erase of sectors 12 to 23
      MER1           : CR_MER1_Field := 16#0#;
      --  Start
      STRT           : CR_STRT_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  End of operation interrupt enable
      EOPIE          : CR_EOPIE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR_ERRIE_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Lock
      LOCK           : CR_LOCK_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      PG             at 0 range 0 .. 0;
      SER            at 0 range 1 .. 1;
      MER            at 0 range 2 .. 2;
      SNB            at 0 range 3 .. 7;
      PSIZE          at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      MER1           at 0 range 15 .. 15;
      STRT           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --------------------
   -- OPTCR_Register --
   --------------------

   subtype OPTCR_OPTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_OPTSTRT_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_BOR_LEV_Field is Interfaces.Bit_Types.UInt2;
   subtype OPTCR_BFB2_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_WDG_SW_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_nRST_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_nRST_STDBY_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_RDP_Field is Interfaces.Bit_Types.Byte;
   subtype OPTCR_nWRP_Field is Interfaces.Bit_Types.UInt12;
   subtype OPTCR_DB1M_Field is Interfaces.Bit_Types.Bit;
   subtype OPTCR_SPRMOD_Field is Interfaces.Bit_Types.Bit;

   --  Flash option control register
   type OPTCR_Register is record
      --  Option lock
      OPTLOCK        : OPTCR_OPTLOCK_Field := 16#1#;
      --  Option start
      OPTSTRT        : OPTCR_OPTSTRT_Field := 16#0#;
      --  BOR reset Level
      BOR_LEV        : OPTCR_BOR_LEV_Field := 16#3#;
      --  Dual-bank Boot option byte
      BFB2           : OPTCR_BFB2_Field := 16#0#;
      --  WDG_SW User option bytes
      WDG_SW         : OPTCR_WDG_SW_Field := 16#1#;
      --  nRST_STOP User option bytes
      nRST_STOP      : OPTCR_nRST_STOP_Field := 16#1#;
      --  nRST_STDBY User option bytes
      nRST_STDBY     : OPTCR_nRST_STDBY_Field := 16#1#;
      --  Read protect
      RDP            : OPTCR_RDP_Field := 16#AA#;
      --  Not write protect
      nWRP           : OPTCR_nWRP_Field := 16#FFF#;
      --  unspecified
      Reserved_28_29 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Dual-bank on 1 Mbyte Flash memory devices
      DB1M           : OPTCR_DB1M_Field := 16#0#;
      --  Selection of protection mode for nWPRi bits
      SPRMOD         : OPTCR_SPRMOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTCR_Register use record
      OPTLOCK        at 0 range 0 .. 0;
      OPTSTRT        at 0 range 1 .. 1;
      BOR_LEV        at 0 range 2 .. 3;
      BFB2           at 0 range 4 .. 4;
      WDG_SW         at 0 range 5 .. 5;
      nRST_STOP      at 0 range 6 .. 6;
      nRST_STDBY     at 0 range 7 .. 7;
      RDP            at 0 range 8 .. 15;
      nWRP           at 0 range 16 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DB1M           at 0 range 30 .. 30;
      SPRMOD         at 0 range 31 .. 31;
   end record;

   ---------------------
   -- OPTCR1_Register --
   ---------------------

   subtype OPTCR1_nWRP_Field is Interfaces.Bit_Types.UInt12;

   --  Flash option control register 1
   type OPTCR1_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.Short := 16#0#;
      --  Not write protect
      nWRP           : OPTCR1_nWRP_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTCR1_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      nWRP           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH
   type FLASH_Peripheral is record
      --  Flash access control register
      ACR     : ACR_Register;
      --  Flash key register
      KEYR    : Interfaces.Bit_Types.Word;
      --  Flash option key register
      OPTKEYR : Interfaces.Bit_Types.Word;
      --  Status register
      SR      : SR_Register;
      --  Control register
      CR      : CR_Register;
      --  Flash option control register
      OPTCR   : OPTCR_Register;
      --  Flash option control register 1
      OPTCR1  : OPTCR1_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      ACR     at 0 range 0 .. 31;
      KEYR    at 4 range 0 .. 31;
      OPTKEYR at 8 range 0 .. 31;
      SR      at 12 range 0 .. 31;
      CR      at 16 range 0 .. 31;
      OPTCR   at 20 range 0 .. 31;
      OPTCR1  at 24 range 0 .. 31;
   end record;

   --  FLASH
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end Interfaces.STM32.FLASH;
