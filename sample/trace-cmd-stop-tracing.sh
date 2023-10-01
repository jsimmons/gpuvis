#!/bin/bash

CMD="trace-cmd reset"
echo $CMD
$CMD

CMD="trace-cmd snapshot -f"
echo $CMD
$CMD

CMD="i915-perf-control -f /tmp/.i915-perf-record"
echo $CMD
$CMD

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
${SCRIPT_DIR}/trace-cmd-status.sh
