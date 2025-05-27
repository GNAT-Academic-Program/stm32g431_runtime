with System.BB.CPU_Primitives;
with System.BB.Board_Parameters;
with Interfaces.STM32;
with Interfaces.STM32.RTC;
with Interfaces.STM32.RCC;
with Interfaces.STM32.PWR;

package body System.BB.Board_Support is
   use Interfaces;
   use Interfaces.STM32;
   use Interfaces.STM32.RCC;
   use Interfaces.STM32.RTC;
   use Interfaces.STM32.PWR;
   use System.BB.CPU_Primitives;

   package BBOPA renames System.BB.Board_Parameters;

   ----------------------
   -- Initialize_Board --
   ----------------------

   procedure Initialize_Board is
   begin
      -- Enable PWR and allow backup domain access
      RCC_Periph.APB1ENR1.PWREN := True;
      PWR_Periph.CR1.DBP := True;

      -- Enable LSE and wait
      RCC_Periph.BDCR.LSEON := True;
      while not RCC_Periph.BDCR.LSERDY loop null; end loop;

      -- Select LSE as RTC source
      RCC_Periph.BDCR.RTCSEL := RTCSEL_LSE;
      RCC_Periph.BDCR.RTCEN  := True;

      -- Configure RTC prescaler to yield desired tick frequency
      RTC_Periph.ISR.INIT := True;
      while not RTC_Periph.ISR.INITF loop null; end loop;

      -- 32.768kHz ÷ 32 = 1024Hz tick rate (example)
      RTC_Periph.PRESC.PREDIV_S := 0;
      RTC_Periph.PRESC.PREDIV_A := 31;

      -- Enable RTC
      RTC_Periph.ISR.INIT := False;

      -- Clear interrupts
      RTC_Periph.ICSR := (default => 0);
   end Initialize_Board;

   --------------------
   -- Interrupt Logic --
   --------------------

   -- You will need to map RTC interrupt vector (e.g., 3X from NVIC)
   -- and provide basic NVIC interrupt enable, Clear_Alarm_Interrupt, etc.

end System.BB.Board_Support;
