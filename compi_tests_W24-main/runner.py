

import re
import os
import sys
import argparse


def get_test_num(test_path):
    return int(re.findall(r"\d+", test_path)[-1])


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


def main():
    parser = argparse.ArgumentParser(description="Runs all test cases for a spesific hw assignment.")
    parser.add_argument("path_to_code", type=str,
                        help="The path to the code to run, for example '../hw1/hw1.out'.")
    parser.add_argument("--hw_num", type=int, default=5, nargs='?' ,
                        help="Which assignment is it. default is 5")
    parser.add_argument("--test_num", type=int, default=None, nargs='+',
                        help="Test number(s) to run, if not spesified will run all available tests")
    parser.add_argument("--path_to_save_results", type=str, default=None,
                        help="The path to save result files of your code, default is in the tests dir.")
    parser.add_argument("--dont_abort", action='store_true', default=False, 
                        help="If a test case fails continue to the next one. Default would abort.")
    parser.add_argument("--clean", action='store_true', default=False, 
                        help="Remove all .res files from path_to_save_results(or tests dir if uspesified) instead of testing.")
    parser.add_argument("--exclude_error", action='store_true', default=False,
                        help="Don't include error chanel output in the result file.")

    args = parser.parse_args()

    tests_dir = os.path.join(f"hw{args.hw_num}", "tests")
    if not os.path.isdir(tests_dir):
        raise(RuntimeError("Tests dir doesnt exist, probably you are not in the runner.py dir,\nOr maybe --hw_num is wrong, see --help for information."))
    results_dir = args.path_to_save_results if args.path_to_save_results else tests_dir

    if args.clean:
        removed_files = 0
        for filename in os.listdir(results_dir):
            path = os.path.join(results_dir, filename)
            if filename[-4:] == ".res" and os.path.isfile(path):
                os.system(f"rm {path}")
                if not os.path.isfile(path):
                    removed_files += 1
        print(f"Removed {removed_files} .res files.")
        exit()
    
    files = os.listdir(tests_dir)
    test_nums = []
    if args.hw_num == 5:
        temp_testnums = set()
        sub_tests = {}
        for test_num in [re.findall("\d+", fname) for fname in files if fname[-3:] == ".in"]:
            if len(test_num) >= 1:
                temp_testnums.add(test_num[0])
            if len(test_num) >= 2:
                if not test_num[0] in sub_tests:
                    sub_tests[test_num[0]] = []
                sub_tests[test_num[0]].append(test_num[1])
        
        for test in temp_testnums:
            if test not in sub_tests:
                test_nums.append(int(test))
                continue
            for sub_test in sub_tests[test]:
                test_nums.append((int(test), int(sub_test)))
        test_nums = sorted(test_nums, key=lambda val: val if isinstance(val, int) else val[0])
    else:
        in_paths = sorted([os.path.join(tests_dir, f) for f in files if f[-3:] == ".in"], 
                            key=get_test_num)
        for in_path in in_paths:
            test_num = get_test_num(in_path)
            test_nums.append(test_num)
            
        
    print(args.path_to_code)
    
    failed_tests = 0
    passed_tests = 0
    for test_num in test_nums:
        if args.test_num and (test_num not in args.test_num or (isinstance(test_num, tuple) and test_num[0] not in args.test_num)):
            continue
        print(f"Running test {test_num}.", end=" ")
        in_path = os.path.join(results_dir, f"test{test_num}.in")
        res_path = os.path.join(results_dir, f"test{test_num}.res")
        out_path = os.path.join(tests_dir,   f"test{test_num}.out")
        if args.hw_num == 5:
            if isinstance(test_num, tuple):    
                test_num, sub_test_num = test_num
                in_path = os.path.join(results_dir, f"test{test_num}.in")
                in_in_path = os.path.join(results_dir, f"test{test_num}.in{sub_test_num}.in")
                temp_path = os.path.join(results_dir, f"temp_test{test_num}.lli.res{sub_test_num}.res")
                res_path = os.path.join(results_dir, f"test{test_num}.res{sub_test_num}.res")
                out_path = os.path.join(tests_dir,   f"test{test_num}.out{sub_test_num}.out")
            else:
                temp_path = os.path.join(results_dir, f"temp_test{test_num}.ill.res")
                in_in_path = in_path
            os.system(f"{args.path_to_code} < {in_path} > {temp_path}")
            if args.exclude_error:
                os.system(f"lli {temp_path} < {in_in_path} > {res_path}")
            else:
                os.system(f"lli {temp_path} < {in_in_path} &> {res_path}")
        else:
            if args.exclude_error:
                os.system(f"{args.path_to_code} < {in_path} > {res_path}")
            else:
                os.system(f"{args.path_to_code} < {in_path} &> {res_path}")
        if not os.path.isfile(res_path):
            print(f"{bcolors.FAIL}Failed{bcolors.ENDC} to generate results file!")
            if not args.dont_abort:
                exit()
            failed_tests += 1
            continue
        with open(res_path, "r", encoding='ISO-8859-1') as res_file, open(out_path, "r", encoding='ISO-8859-1') as out_file:
            lines_res = res_file.readlines()
            lines_out = out_file.readlines()
            for i, (res_line, out_line) in enumerate(zip(lines_res, lines_out)):
                if res_line == out_line:
                    continue
                print(f"{bcolors.FAIL}Failed{bcolors.ENDC} do to diff in line {i}!")
                print(f"Your output is:\n{res_line}\n Expected output is:\n{out_line}")
                print(f"You can use this google forms to see how many have the same problem (report 'test={test_num}, line={i}''):")
                print("https://forms.gle/2YTDWPPEgowLpKVA6")
                if not args.dont_abort:
                    exit()
                failed_tests += 1
                break
            else:
                if len(lines_res) == 0:
                    print(f"{bcolors.FAIL}Failed{bcolors.ENDC} because there is no contant in {res_path} file. Common causes:")
                    print(f"* Wrong path to you executable (see --help or README.md)")
                    if args.hw_num == 5:
                        print(f"* The llvm code Doesn't run. Error message would pop above. See {temp_path} for your code.")
                        print(f"* Your parser clames there is a lexical / syntax / semantical error. (Error message would pop above)")
                    if not args.dont_abort:
                        exit()
                    failed_tests += 1
                elif len(lines_res) != len(lines_out):
                    print(f"{bcolors.FAIL}Failed{bcolors.ENDC} Because all amount of lines differes. Your file has {len(lines_res)} lines and expected {len(lines_out)} lines.")
                    if not args.dont_abort:
                        exit()
                    failed_tests += 1
                else:
                    print(f"{bcolors.OKGREEN}Passed!{bcolors.ENDC}")
                    passed_tests += 1
    message = ""
    if passed_tests:
        message += f"{bcolors.OKGREEN}Passed {passed_tests}{bcolors.ENDC} tests. "
    if failed_tests:
        message +=    f"{bcolors.FAIL}Failed {failed_tests}{bcolors.ENDC} tests. "

    print(message)

if __name__ == '__main__':
    main()