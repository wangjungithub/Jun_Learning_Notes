#!/bin/env python

import xmltodict

f = file('job1.xml')
doc = xmltodict.parse(f)
f.close()

print doc

for key, value in doc[u'project'][u'scm'].iteritems():
    print key, "corresponds to", value
