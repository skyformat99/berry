#! ./berry
import os

var exec = './berry'
var path = 'tests/testcases'
var testcases = os.listdir(path)
var total = 0, failed = 0

for (i : testcases)
    print('\033[0;36mrun test: ' + i + '\033[0m')
    var ret = os.system(exec, path + '/' + i)
    if (ret != 0)
        print('\033[0;31mreturn code:', ret, '\033[0m')
        failed += 1
    end
    total += 1
end

print('\033[0;32mtest results: ' +
    str(total) + ' total, ' + str(failed) + ' failed' +
    (failed ? '' : ' (all tests passed) ') +
    '.\033[0m')
