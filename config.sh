##########################################################################################
#
# NovaInstaller
# by Minionguyjpro
#
##########################################################################################
# Configs
##########################################################################################

# Automatically mount the partition(s)
AUTOMOUNT=true

# Will not load the system.prop file, as we don't have it and is not needed
PROPFILE=false

# This is not needed for a simple installer
POSTFSDATA=false

# This is also not needed
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Shows the installer text

print_modname() {
  ui_print "======================================================"
  ui_print "        Nova Launcher (Custom Home/Start Menu)        "
  ui_print "                                                      "
  ui_print "                    Easy Installer                    "
  ui_print "========================v1.1.0========================"
  ui_print " "
  ui_print " "
  ui_print "-------------Installing Nova Launcher....-------------"
  ui_print "--------------Setting Up Permissions....--------------"
}

##########################################################################################
# Replace list
##########################################################################################

# We will not replace anything

# This will not replace anything
REPLACE="
"

# This won't either
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.