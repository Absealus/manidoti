#!/bin/sh

sensors | grep "Tctl" | tr -d '+' | awk '{print $2}' | cut -c 1-2,5-7
