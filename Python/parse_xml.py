#!/bin/env python

import xml.etree.ElementTree as ET
tree = ET.parse('job1.xml')

root = tree.iter("scm")
for child in root:
    print child.tag, child.attrib

root = tree.getroot()
for child in root:
    if child.tag == 'scm':
        for c2 in child:
            print c2.tag, c2.attrib
