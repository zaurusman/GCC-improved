

import re
import os
import sys
import argparse


def get_test_num(test_path):
    return int(re.findall(r"\d+", test_path)[-1])


def main():
    parser = argparse.ArgumentParser(description="Runs all test cases for a spesific hw assignment.")
    parser.add_argument("--path_to_code", type=str, default= "../../HW3_compi/hw3",
                        help="The path to the code to run, for example '../hw1/hw1.out'.")
    parser.add_argument("--test_num", type=int, default=None, nargs='+',
                        help="Test number(s) to run, if not spesified will run all available tests")
    parser.add_argument("--path_to_save_outputs", type=str, default=None,
                        help="The path to save output files of your code, default is in the tests dir.")
    parser.add_argument("--clean", action='store_true', default=False, 
                        help="Remove all .res files from path_to_save_outputs(or tests dir if uspesified) instead of testing.")    
    
    args = parser.parse_args()

    tests_dir = "tests"
    if not os.path.isdir(tests_dir):
        raise(RuntimeError("Tests dir doesnt exist, probably you are not in the runner.py dir,\nOr maybe --hw_num is wrong, see --help for information."))
    outputs_dir = args.path_to_save_outputs if args.path_to_save_outputs else tests_dir

    if args.clean:
        removed_files = 0
        for filename in os.listdir(outputs_dir):
            path = os.path.join(outputs_dir, filename)
            if (filename[-4:] == ".out" or filename[-4:] == ".res") and os.path.isfile(path):
                os.system(f"rm {path}")
                if not os.path.isfile(path):
                    removed_files += 1
        print(f"Removed {removed_files} .res/.out files.")
        exit()

    files = os.listdir(tests_dir)
    in_paths = sorted([os.path.join(tests_dir, f) for f in files if f[-3:] == ".in"], 
                      key=get_test_num)
    for in_path in in_paths:
        test_num = get_test_num(in_path)
        if args.test_num and test_num not in args.test_num:
            continue
        print(f"Generating output for test {test_num}.")
        out_path = os.path.join(tests_dir,   f"test{test_num}.out")
        os.system(f"{args.path_to_code} < {in_path} > {out_path}")
        if not os.path.isfile(out_path):
            print(f"Faild to generate")
            exit()
    print("Done")

if __name__ == '__main__':
    main()