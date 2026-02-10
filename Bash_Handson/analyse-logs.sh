#!/bin/bash

LOG_DIR="/c/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"
REPORT_FILE="/d/Desktop/Report.txt"

ERROR_PATTERNS=("error" "notice" "Thread")

date=$(date)
echo "nAalysis Started @ $date" >> "$REPORT_FILE"

echo -e "\nAnalysing log files" >> "$REPORT_FILE"
echo "===================" >> "$REPORT_FILE"

echo -e "\nLog file that are got modified for last 24hrs" >> "$REPORT_FILE"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo $LOG_FILES >> "$REPORT_FILE"

for LOG_FILE in $LOG_FILES; do
    echo "===============================================================" >> "$REPORT_FILE"
    echo -e "\nAnalyse $LOG_FILE =====================================" >> "$REPORT_FILE"
    echo "===============================================================" >> "$REPORT_FILE"

    for ERROR_PATTERN in ${ERROR_PATTERNS[@]}; do
        echo -e "\nSearching $ERROR_PATTERN in $LOG_FILE" >> "$REPORT_FILE"
        grep "$ERROR_PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

        echo -e "\nNumber of $ERROR_PATTERN in $LOG_FILE" >> "$REPORT_FILE"
        ERROR_COUNT=$(grep -c "$ERROR_PATTERN" "$LOG_FILE")
        echo $ERROR_COUNT >> "$REPORT_FILE"

        if [ $ERROR_COUNT -gt 500 ]; then
            echo -e "\n Action Required too many => $ERROR_PATTERN message Found in $LOG_FILE"
        fi


    done
done
echo -e "\nLog analysis completed and report saved in: >> $REPORT_FILE"
date=$(date)
echo "analysis completed @ $date" >> "$REPORT_FILE"
echo "$date"