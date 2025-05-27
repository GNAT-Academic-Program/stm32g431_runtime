------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          Copyright (C) 2012-2021, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This file is based on the startup code from the following file in Nordic's
--  nRF5 SDK (version 15.1.0): modules/nrfx/mdk/system_nrf52840.c for errata
--  workarounds and configuration of the SWD pins and reset pin.
--
--  This Errata_X functions detect if certain errata are applicable for the
--  MCU. If they are applicable, then a workaround is applied for the errata.
--  Some of these errata workarounds rely on reading and/or writing registers
--  that are not documented in the datasheet. As mentioned above, these
--  register addresses and values are copied from Nordic's nRF5 SDK.

pragma Ada_2012; -- To work around pre-commit check?
pragma Suppress (All_Checks);

with System;
with System.Machine_Code;    use System.Machine_Code;

with STM32G431_Runtime_Config; use STM32G431_Runtime_Config;

procedure Setup_Board is
begin
   null;
end Setup_Board;
