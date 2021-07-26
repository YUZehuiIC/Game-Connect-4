puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH1        "/net/vlsiserver/usr1/library/AMS/AMS_4.1_CDS/synopsys/c35_3.3V";#  Additional search path

#set ADDITIONAL_SEARCH_PATH2        ""       ;# 
set ADDITIONAL_SEARCH_PATH3        "$SYNDIR/libraries/syn $SYNDIR/dw/sim_ver ./scripts ./sources ./ddc"  ;#  Additional search path   

set TARGET_LIBRARY_FILES          "c35_CORELIB_WC.db c35_IOLIB_WC.db c35_IOLIBV5_WC.db" ;#  Target technology logical libraries (DB)
set TARGET_LIBRARY_SYMBOL         ""                          ;#  Target technology logical libraries (Symbol)

set ADDITIONAL_LINK_LIB_FILES     ""  ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set MIN_LIBRARY_FILES             ""  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set MW_REFERENCE_LIB_DIRS         ""  ;#  Milkyway reference libraries (include IC Compiler ILMs here)

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set TECH_FILE                     ""  ;#  Milkyway technology file
set MAP_FILE                      ""  ;#  Mapping file for TLUplus
set TLUPLUS_MAX_FILE              ""  ;#  Max TLUplus file
set TLUPLUS_MIN_FILE              ""  ;#  Min TLUplus file

set MIN_ROUTING_LAYER            ""   ;# Min routing layer
set MAX_ROUTING_LAYER            ""   ;# Max routing layer

set LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use


##########################################################################################
# Link Library Setup Variables
##########################################################################################

set search_path	"$ADDITIONAL_SEARCH_PATH1 $ADDITIONAL_SEARCH_PATH3"
set target_library "$TARGET_LIBRARY_FILES" 
set symbol_library "$TARGET_LIBRARY_SYMBOL" 
set synthetic_library "dw_foundation.sldb"
set synlib_wait_for_design_licence "DesignWare"
set link_library "* $TARGET_LIBRARY_FILES $synthetic_library"



puts "RM-Info: Completed script [info script]\n"

