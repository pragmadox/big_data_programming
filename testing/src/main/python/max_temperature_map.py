#!/usr/bin/env python

# cc MaxTemperature Application to find the maximum temperature in the weather dataset
# vv MaxTemperature

import re
import sys

for line in sys.stdin:
    val = line.strip()
    (year, temp, q) = (val:15:19, val[87:92], val[92:93])
    if(temp != "+9999" and re.match("[01459]", q)):
        print "%s\t%s" % (year, temp)

