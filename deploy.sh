#!/bin/bash

# TODO your deploy script implementation...
pip3 install -r requirements.txt
APP_DIR=~/app
SERVER_PROCESS_NAME=app.py

stop_server(){
  # Check if app.py is already running
if pgrep -x "python3" > /dev/null; then
    # Find the PID of the existing process
    app_pid=$(pgrep -x "python3")
    # Stop the existing process
    kill "$app_pid"
fi

}


cd $APP_DIR
stop_server


# Start app.py
python3 app.py &
exit




