# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Mon Jan 18 15:10:16 2021
# Designs open: 1
#   Sim: /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/dv/CCE_64/run/simv
# Toplevel windows open: 1
# 	TopLevel.1
#   Schematic.1: zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld
#   Source.1: zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld
#   Schematic.2: .
#   Schematic.3: .
#   Schematic.4: zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld
#   Group count = 0
# End_DVE_Session_Save_Info

# DVE version: L-2016.06_Full64
# DVE build date: May 24 2016 21:01:02


#<Session mode="Full" path="/nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/dv/CCE_64/run/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{5 71} {1442 848}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 459]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
catch { set Stack.1 [gui_share_window -id ${HSPane.1} -type Stack -silent] }
catch { set Class.1 [gui_share_window -id ${HSPane.1} -type Class -silent] }
catch { set Object.1 [gui_share_window -id ${HSPane.1} -type Object -silent] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 459
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 458} {height 500} {dock_state left} {dock_on_new_line true} {child_hier_colhier 415} {child_hier_coltype 18} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 316]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
catch { set Local.1 [gui_share_window -id ${DLPane.1} -type Local -silent] }
catch { set Member.1 [gui_share_window -id ${DLPane.1} -type Member -silent] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 316
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 501
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 315} {height 500} {dock_state left} {dock_on_new_line true} {child_data_colvariable 189} {child_data_colvalue 34} {child_data_coltype 65} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 179]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 271
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 179
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1437} {height 178} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}
gui_use_schematics
set Schematic.1 [gui_create_window -type {Schematic}  -parent ${TopLevel.1} -defer_create_taskbar_icon]
set setting [::Misc::Setting::create -array DveSchematicSettings]
Misc::init_window $setting ${Schematic.1}
::Misc::exec_method -window ${Schematic.1} -method captionCmd
gui_add_icon_to_taskbar -window ${Schematic.1}
gui_show_window -window ${Schematic.1} -show_state maximized
gui_update_layout -id ${Schematic.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}
set Schematic.2 [gui_create_window -type {Schematic}  -parent ${TopLevel.1} -defer_create_taskbar_icon]
set setting [::Misc::Setting::create -array DvePathSchematicSettings]
Misc::init_window $setting ${Schematic.2}
::Misc::exec_method -window ${Schematic.2} -method captionCmd
gui_add_icon_to_taskbar -window ${Schematic.2}
gui_show_window -window ${Schematic.2} -show_state maximized
gui_update_layout -id ${Schematic.2} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}
set Schematic.3 [gui_create_window -type {Schematic}  -parent ${TopLevel.1} -defer_create_taskbar_icon]
set setting [::Misc::Setting::create -array DvePathSchematicSettings]
Misc::init_window $setting ${Schematic.3}
::Misc::exec_method -window ${Schematic.3} -method captionCmd
gui_add_icon_to_taskbar -window ${Schematic.3}
gui_show_window -window ${Schematic.3} -show_state maximized
gui_update_layout -id ${Schematic.3} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}
set Schematic.4 [gui_create_window -type {Schematic}  -parent ${TopLevel.1} -defer_create_taskbar_icon]
set setting [::Misc::Setting::create -array DveSchematicSettings]
Misc::init_window $setting ${Schematic.4}
::Misc::exec_method -window ${Schematic.4} -method captionCmd
gui_add_icon_to_taskbar -window ${Schematic.4}
gui_show_window -window ${Schematic.4} -show_state maximized
gui_update_layout -id ${Schematic.4} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {{}}
gui_set_env SIMSETUP::SIMEXE {./simv}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/dv/CCE_64/run/simv}] } {
gui_sim_run Ucli -exe simv -args { -ucligui} -dir /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/dv/CCE_64/run -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups


# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -reset
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_expand -id ${Hier.1} zipline_tb}
catch {gui_list_expand -id ${Hier.1} zipline_tb.dut}
catch {gui_list_expand -id ${Hier.1} zipline_tb.dut.u_cr_xp10_decomp}
catch {gui_list_expand -id ${Hier.1} zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core}
catch {gui_list_expand -id ${Hier.1} zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd}
catch {gui_list_expand -id ${Hier.1} zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd}
catch {gui_list_select -id ${Hier.1} {zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld}}
gui_view_scroll -id ${Hier.1} -vertical -set 520
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Class 'Class.1'
gui_list_set_filter -id ${Class.1} -list { {OVM 1} {VMM 1} {All 1} {Object 1} {UVM 1} {RVM 1} }
gui_list_set_filter -id ${Class.1} -text {*}
gui_change_design -id ${Class.1} -design Sim

# Member 'Member.1'
gui_list_set_filter -id ${Member.1} -list { {InternalMember 0} {RandMember 1} {All 0} {BaseMember 0} {PrivateMember 1} {LibBaseMember 0} {AutomaticMember 1} {VirtualMember 1} {PublicMember 1} {ProtectedMember 1} {OverRiddenMember 0} {InterfaceClassMember 1} {StaticMember 1} }
gui_list_set_filter -id ${Member.1} -text {*}

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {r_bit_buf}
gui_list_show_data -id ${Data.1} {zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld}
gui_list_expand -id ${Data.1} zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.r_bit_buf
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.r_bit_buf }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 520
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/dv/CCE_64/run/../../../rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_ld.sv
gui_view_scroll -id ${Source.1} -vertical -set 2912
gui_src_set_reusable -id ${Source.1}
# Warning: Class view not found.

# View 'Schematic.1'
gui_use_schematics

# Create schematic window 'Schematic.1'
gui_sch_show -window ${Schematic.1} -name zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld
gui_show_pin_value_annotate [gui_window_hier_name -window ${Schematic.1}]
gui_zoom -window ${Schematic.1} -rect { {-94344 -325701} {379183 6211} }



# View 'Schematic.2'
gui_use_schematics

# Create path schematic window 'Schematic.2'
gui_path_show -window ${Schematic.2} -objects {zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.lanes_wf_ready zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_sob_credit_used zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_eob_credit_used zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_ss_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_ss_data zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_bit_buf zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.buf_full_stall_stb zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.clk zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.rst_n zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_data zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_numbits zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_sob zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_eob zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_eof zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_trace_bit zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_frame_bytes_in zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_last_frame zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_errcode zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_bct zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_bct_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_sat zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_slt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_used_symbols zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_bct zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_bct_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_sat zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_slt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_used_symbols zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_fmt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_min_ptr_len zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_min_mtf_len zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_error zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_sob_credit_avail zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_ld_ready zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.sp_buf_idx}
gui_show_pin_value_annotate [gui_window_hier_name -window ${Schematic.2}]
gui_zoom -window ${Schematic.2} -rect { {-106629 -151472} {115928 4526} }



# View 'Schematic.3'
gui_use_schematics

# Create path schematic window 'Schematic.3'
gui_path_show -window ${Schematic.3} -objects {zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.lanes_wf_ready zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_sob_credit_used zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_eob_credit_used zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_ss_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_ss_data zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ld_bit_buf zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.buf_full_stall_stb zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.clk zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.rst_n zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_data zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_numbits zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_sob zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_eob zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_eof zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_trace_bit zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_frame_bytes_in zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_last_frame zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.wf_lanes_errcode zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_bct zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_bct_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_sat zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_slt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_used_symbols zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_bct zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_bct_valid zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_sat zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_slt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ll_used_symbols zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_fmt zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_min_ptr_len zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_min_mtf_len zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.block_error zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.decoder_sob_credit_avail zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.ss_ld_ready zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld.sp_buf_idx}
gui_show_pin_value_annotate [gui_window_hier_name -window ${Schematic.3}]
gui_zoom -window ${Schematic.3} -rect { {-106629 -151472} {115928 4526} }



# View 'Schematic.4'
gui_use_schematics

# Create schematic window 'Schematic.4'
gui_sch_show -window ${Schematic.4} -name zipline_tb.dut.u_cr_xp10_decomp.xp10_decomp_rtl_start.u_cr_xp10_decomp_core.no_stub.hufd.sdd.u_ld
gui_show_pin_value_annotate [gui_window_hier_name -window ${Schematic.4}]
gui_zoom -window ${Schematic.4} -rect { {1433 -148320} {10264 -142130} }


# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Schematic.4}
}
#</Session>

