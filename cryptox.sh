#!/bin/sh

# Display Coin Price within XFCE genmonitor.
 
coin_val="$(curl -s "rate.sx/1BTC")"
printf "%0.0f\n" $coin_val
