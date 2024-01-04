# 2023-Fall-NTU-Soc-Design-Laboratory-Final-Project
## Scheduled firmware
There are two version of firmware:
 - Original version in: /lab-wlos_baseline/testbench/uart
 - Scheduled version in: /lab-wlos_baseline/testbench_integrated/uart

The original version requiered less cycle to execute.

## To run simulation
1. Clone lab-wlos_baseline folder from https://github.com/bol-edu/caravel-soc_fpga-lab/tree/main/lab-wlos_baseline
2. Replace rtl and testbench folder by our modified version
3. Run simulation, for example:
   ```
   cd ~/lab-wlos_baseline/testbench/uart
   source run_sim
   ``` 
## To do synthesis
1. Copy all files under rtl folder, paste and overwrite to lab-wlos_baseline\vivado\vvd_srcs\caravel_soc\rtl\user\ 
2. Replace lab-wlos_baseline/vivado/vvd_caravel_fpga_40mhz.tcl by our modified version

## To verify UART and firmware on FPGA
Run jupyternote_book/caravel_fpga_uart_verify.ipynb

## To measure UART loopback latency on FPGA
Run jupyternote_book/caravel_fpga_uart.ipynb
