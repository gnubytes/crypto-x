#!/bin/sh

# Display Bitcoin(BTC) price within xfce genmonitor.
 
btc_val="$(curl -s "rate.sx/1BTC")"
printf "%0.0f\n" $btc_val
