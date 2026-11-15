# Counter project configuration for OpenROAD Flow Scripts

export DESIGN_NAME = counter
export DESIGN_NICKNAME = counter
export PLATFORM = sky130hd

# Keep all generated flow outputs inside the counter project
export WORK_HOME = $(abspath $(dir $(DESIGN_CONFIG))/..)

# Project root: my_projects/counter
export COUNTER_PROJECT_DIR = $(WORK_HOME)

# RTL and timing constraints
export VERILOG_FILES = $(COUNTER_PROJECT_DIR)/rtl/counter.v
export SDC_FILE = $(COUNTER_PROJECT_DIR)/constraints/constraint.sdc

# Initial floorplan settings
export CORE_UTILIZATION = 10
export PLACE_DENSITY = 0.50
