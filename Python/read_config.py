#!/bin/env python

import ConfigParser

def run():
    config = ConfigParser.ConfigParser()
    config.read('./configfile.cfg')

    for sections in config.sections():
        print (sections)
        print "port=%s" % config.get(sections, "Port")
        items = config.items(sections)
        for key, value in items:
            print "%s: %s = %s" % (sections, key, value)

if __name__ == '__main__':
    run()
