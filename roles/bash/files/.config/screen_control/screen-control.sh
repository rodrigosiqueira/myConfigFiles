#!/bin/bash

# Script based on:
# https://wiki.archlinux.org/index.php/xrandr#Scripts

# Get info from xrandr
connectedOutputs=$(xrandr | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
activeOutput=$(xrandr | grep -E " connected (primary )?[1-9]+" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
primaryOutput=$(xrandr | grep -w connected | grep -w primary | cut -d' ' -f1)
secondOutput=$(xrandr | grep -w connected | grep -v primary | cut -d' ' -f1)

function second-output-off ()
{
  xrandr --output $secondOutput --off
  return $?
}

function second-output-mirror ()
{
  xrandr --output $secondOutput --auto --same-as $primaryOutput
  return $?
}

function second-output-right ()
{
  xrandr --output $secondOutput --auto --right-of $primaryOutput
  return $?
}

function second-output-left ()
{
  xrandr --output $secondOutput --auto --left-of $primaryOutput
  return $?
}
