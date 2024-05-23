#!/bin/bash

# TODO your deploy script implementation...
pip install requirements.txt

# Check if app.py is already running
if pgrep -x "python3" > /dev/null; then
    # Find the PID of the existing process
    app_pid=$(pgrep -x "python3")
    # Stop the existing process
    kill "$app_pid"
fi


# Start app.py
python3 app.py &



