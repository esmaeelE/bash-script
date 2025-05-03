#!/bin/bash

###############################################################################
###############################################################################
###                                                                           #
###                     This is product                                       #
###                                                                           #
###############################################################################
###############################################################################

###############################################################################
#   Script Name                   : script.sh
#   Functional Description        : To do somethings
#                                 : ...
########################################################################
#                       Scheduled to run with crontab
#                       see with: crontab -l
#   Creation Date       : 2024 02 04
#   Author              : esmaeelE
#
###############################################################################
## crontab -l
# 15 00 * * * bash /opt/scripts/run/backup_mariadb.sh 1 >> /opt/scripts/logs/log_backup_mariaddb  2>> /opt/scripts/logs/error_backup_mariaddb


###############################################################################
#   Global Variables
###############################################################################
#   DATE                       : USE CURRENT DATE 
#   DESTINATION                : Set DEST_PATH to store files
#   
###############################################################################



# Debug configs
# these two lines use for debug bash script and run line by line
#set -x 
#trap read debug




###############################################################################
#   Function      : LOGGER
#   NAME          : LOGGER
#   ARGUMENTS     : Read all arguments inside with $@
#   WORK          : PRINT $DATE BEFORE ANY MESSAGE
#   USAGE         : LOGGER this is test message
#   OUTPUT        : 20230515 10:20:27 -- this is test message
###############################################################################
function LOGGER {

    echo "$(/usr/bin/date +%Y%m%d_%H%M%S)" "$@";
    #echo $@ | awk '{ printf strftime ("[%Y-%m-%d %H:%M:%S] ")}'
    #errcho $(date +%Y%m%d" "%H:%M:%S) -- $@
}
# call 
LOGGER "START RUNNIG BACKUP PROCEDURE ..." ${DESTINATION}, ${SEND}, ${SECRET}

### Argument checking
if [ -z "$1" ]
  then
    echo "No argument supplied"
	  echo "Run script ..."
fi

