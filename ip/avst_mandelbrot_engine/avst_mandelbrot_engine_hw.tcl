# Copyright (c) 2016 Intel Corporation
# SPDX-License-Identifier: MIT

package require -exact qsys 16.1

# 
# module avst_mandelbrot_engine
# 
set_module_property DESCRIPTION ""
set_module_property NAME avst_mandelbrot_engine
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR RSF
set_module_property DISPLAY_NAME avst_mandelbrot_engine
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avst_mandelbrot_engine
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avst_mandelbrot_engine.v VERILOG PATH avst_mandelbrot_engine.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL avst_mandelbrot_engine
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avst_mandelbrot_engine.v VERILOG PATH avst_mandelbrot_engine.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point in_vector
# 
add_interface in_vector avalon_streaming end
set_interface_property in_vector associatedClock clock
set_interface_property in_vector associatedReset reset
set_interface_property in_vector dataBitsPerSymbol 8
set_interface_property in_vector errorDescriptor ""
set_interface_property in_vector firstSymbolInHighOrderBits true
set_interface_property in_vector maxChannel 0
set_interface_property in_vector readyLatency 0
set_interface_property in_vector ENABLED true
set_interface_property in_vector EXPORT_OF ""
set_interface_property in_vector PORT_NAME_MAP ""
set_interface_property in_vector CMSIS_SVD_VARIABLES ""
set_interface_property in_vector SVD_ADDRESS_GROUP ""

add_interface_port in_vector snk_data data Input 80
add_interface_port in_vector snk_ready ready Output 1
add_interface_port in_vector snk_valid valid Input 1


# 
# connection point out_result
# 
add_interface out_result avalon_streaming start
set_interface_property out_result associatedClock clock
set_interface_property out_result associatedReset reset
set_interface_property out_result dataBitsPerSymbol 8
set_interface_property out_result errorDescriptor ""
set_interface_property out_result firstSymbolInHighOrderBits true
set_interface_property out_result maxChannel 0
set_interface_property out_result readyLatency 0
set_interface_property out_result ENABLED true
set_interface_property out_result EXPORT_OF ""
set_interface_property out_result PORT_NAME_MAP ""
set_interface_property out_result CMSIS_SVD_VARIABLES ""
set_interface_property out_result SVD_ADDRESS_GROUP ""

add_interface_port out_result src_data data Output 16
add_interface_port out_result src_ready ready Input 1
add_interface_port out_result src_valid valid Output 1

