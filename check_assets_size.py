#!/usr/bin/env python3

import os
import sys

def human_size(num, suffix='B'):
    for unit in ['', 'Ki', 'Mi', 'Gi', 'Ti', 'Pi', 'Ei', 'Zi']:
        if abs(num) < 1024.0:
            return "%3.1f %s%s" % (num, unit, suffix)
        num /= 1024.0
    return "%.1f %s%s" % (num, 'Yi', suffix)

SIZE_LIMIT = 2056 * 1024

code = 0

for root, dirs, files in os.walk('docs/'):
    for f in files:
        path = os.path.join(root, f)
        size = os.path.getsize(path)
        if size > SIZE_LIMIT:
            print('\x1b[1;31mFile too large ({}): {}\x1b[0m'.format(human_size(size), path), \
                file=sys.stderr)
            code = 1

sys.exit(code)
