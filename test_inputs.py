# import argparse
import sys
import fileinput

# def test_inputs():
#     is_testflag = opt.test_flag
    
#     print(f'is_testflag is {is_testflag}')


if __name__ == "__main__":
    # parser = argparse.ArgumentParser()
    # parser.add_argument('--test-flag', action='store_true', help='test boolean flag')
    # opt = parser.parse_args()

    num_lines_processed = 0

    for line in fileinput.input():
        if sys.platform == "win32":
            if num_lines_processed == 0:
                line_data = line[3:].rstrip()
            else:
                line_data = line.rstrip()
        else:
            line_data = line.rstrip()

        num_lines_processed += 1

        print(f'line# {num_lines_processed} -> {line_data}')

    print('Done with fileinput lines')
