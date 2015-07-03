#!/bin/bash
dpkg-scanpackages . /dev/null > Packages && bzip2 < Packages > Packages.bz2 && gzip < Packages > Packages.gz