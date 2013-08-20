#!/bin/env python

import os
print os.environ['HOME']
print os.environ['PATH']

for name, value in os.environ.items():
    print "%s = %s" % (name, value)

