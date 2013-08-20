#!/bin/env python

import ConfigParser

def run():
    config = ConfigParser.ConfigParser()
    config.read('./configfile.cfg')

    for sections in config.sections():
        print (sections)
        print (config.get(sections, "Port"))

if __name__ == '__main__':
    run()
