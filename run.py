#!/usr/bin/env python3

import os
import sys

os.environ['OMP_NUM_THREADS'] = '1'

from facefusion import core

if __name__ == '__main__':
	if len(sys.argv) == 1:
		sys.argv.append('run')
	core.cli()
