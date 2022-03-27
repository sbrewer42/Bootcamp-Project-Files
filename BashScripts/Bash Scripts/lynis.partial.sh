#!/bin/bash

# Usse lynis to run daily scans for test groups: malware, authentication, networking
# storage, and filesystems and save the results in /tmp/lynis.partial_scan.log

lynis audit --tests-from-group malware,authentication,networking,storage,filesystems >>/tmp/lynis.partial_scan.log



