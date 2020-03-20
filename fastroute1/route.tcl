read_lef NangateOpenCellLibrary.tech.lef
read_lef NangateOpenCellLibrary.macro.lef
read_lef bytewrite_ram_32bits_metal.lef
read_lef iocells_metal.lef
read_lef osc10mv1tsmc180n_metal.lef
read_lef porv1tsmc180n_metal.lef

read_liberty bytewrite_ram_32bits.lib
read_liberty NangateOpenCellLibrary_slow.lib
read_liberty osc10mv1tsmc180n.lib
read_liberty porv1tsmc180n.lib
read_liberty stdiocell.lib

read_def fastroute1.def
set_wire_rc -layer metal3

fastroute -output_file route.guide \
            -max_routing_layer 10  \
          -unidirectional_routing true \
          -capacity_adjustment 0.15 \
          -layers_adjustments {{2 0.5} {3 0.5}} \
          -overflow_iterations 200



read_def fastroute1.output.def
exit


