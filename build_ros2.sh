#!/bin/bash

sudo chown -R ros:ros build/

ls -l build/

source /opt/ros/humble/setup.bash
colcon build --paths thirdparty/*
source install/setup.bash
colcon build --paths thirdparty/open_vins/*
source install/setup.bash
colcon build --paths {mins,mins_data}
source install/setup.bash
colcon build --paths mins_eval
