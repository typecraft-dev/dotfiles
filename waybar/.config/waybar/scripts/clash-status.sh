#!/bin/bash

# Check if clash is running
if pgrep -x "clash" > /dev/null; then
    echo '{"text": "", "tooltip": "Clash is running"}'  # Icon for running
else
    echo '{"text": "", "tooltip": "Clash is not running"}'  # Empty text when not running
fi