#!/usr/bin/env python

"""
Convert a given number of bytes into something more human friendly.
"""

from __future__ import print_function
from prettytable import PrettyTable


def human_size(size_bytes, a_kilobyte_is_1024_bytes=True):
    """
    format a size in bytes into a 'human' file size, e.g. bytes, KB, MB, GB, TB, PB, EB, ZB, YB
    Note that by default, bytes/KB will be reported in whole numbers but MB and above will have greater precision
    e.g. 1 byte, 43 bytes, 443 KB, 4.3 MB, 4.43 GB, etc
    """

    suffixes_table = {1000: [('bytes', 0), ('KB', 0), ('MB', 1), ('GB', 2), ('TB', 2), ('PB', 2), ('EB', 2), ('ZB', 2), ('YB', 2)],
                      1024: [('bytes', 0), ('KiB', 0), ('MiB', 1), ('GiB', 2), ('TiB', 2), ('PiB', 2), ('EiB', 2), ('ZiB', 2), ('YiB', 2)]}

    if size_bytes < 0:
        raise ValueError('number must be non-negative')

    if size_bytes == 1:
        return "1 byte"

    multiple = 1024 if a_kilobyte_is_1024_bytes else 1000

    num = float(size_bytes)
    for suffix, precision in suffixes_table[multiple]:
        if num < multiple:
            break
        num /= multiple

    if precision == 0:
        formatted_size = "%d" % num
    else:
        formatted_size = str(round(num, ndigits=precision))

    return "%s %s" % (formatted_size, suffix)


def run_tests():
    """
    """

    tests = [-1, 1, 12, 123, 1234, 12345, 123456, 1234567, 12345678, 123456789, 1234567890,
             12345678909, 123456789098, 1234567890987, 12345678909876, 123456789098765,
             1234567890987654, 12345678909876543, 123456789098765432, 1234567890987654321]

    table = PrettyTable()

    table.field_names = [
                         'Test',
                         'Value',
                         'Kilobyte = 1024',
                         'Kilobyte = 1000',
                        ]

    count = 1
    for test in tests:
        try:
            table.add_row([
                           count,
                           test,
                           human_size(test),
                           human_size(test, False),
                         ])
            count += 1
        except ValueError as e:
            print(e)
            pass

    print(table)


if __name__ == '__main__':
    run_tests()
