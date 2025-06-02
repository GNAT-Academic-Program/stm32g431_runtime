# stm32g431 Runtimes

This repository generates Ada/SPARK runtimes for the following SoC:
* stm32g431

The following runtime profiles are supported for each of the above:
* light
* light-tasking
* embedded

## Usage

Using the light_tasking_stm32g431 as an example, first edit your
`alire.toml` file and add the following elements:
 - Add `light_tasking_stm32g431` in the dependency list:
   ```toml
   [[depends-on]]
   light_tasking_stm32g431 = "*"
   ```

Then edit your project file to add the following elements:
 - "with" the run-time project file:
   ```ada
   with "runtime_build.gpr";
   ```
 - specify the `Target` and `Runtime` attributes:
   ```ada
   for Target use runtime_build'Target;
   for Runtime ("Ada") use runtime_build'Runtime ("Ada");
   ```

## Resources Used

The light-tasking and embedded runtime profiles use HSI to
implement Ada semantics for time, i.e., delay statements and the package
Ada.Real_Time.

## Runtime Configuration

### Crate Configuration
- TODO

### GPR Scenario Variables
- TODO