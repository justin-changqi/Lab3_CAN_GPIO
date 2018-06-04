connect -url tcp:127.0.0.1:3121
source /home/justin/Dropbox/106-2course/vehicle_communication_239114/lab/vivado/Lab3_CAN_GPIO/Lab3_CAN_GPIO.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248585405"} -index 0
loadhw -hw /home/justin/Dropbox/106-2course/vehicle_communication_239114/lab/vivado/Lab3_CAN_GPIO/Lab3_CAN_GPIO.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248585405"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248585405"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248585405"} -index 0
dow /home/justin/Dropbox/106-2course/vehicle_communication_239114/lab/vivado/Lab3_CAN_GPIO/Lab3_CAN_GPIO.sdk/CAN_GPIO/Debug/CAN_GPIO.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248585405"} -index 0
con
