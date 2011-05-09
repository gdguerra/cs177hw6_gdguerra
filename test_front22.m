function e = test_front22

% test_front22() runs several tests and returns the number of tests that fail.

% Gabriel Guerra on 5/8/2011

e = 0;
e = e + runtest('hello','hehellohe');
e = e + runtest('go','gogogo');
e = e + runtest('f','fff');
e = e + runtest('what is this','whwhat is thiswh');
e = e + runtest(' blah',' b blah b');
e = e + runtest('  huh','    huh  ');
e = e + runtest('goes','gogoesgo');
e = e + runtest('xxxxx','xxxxxxxxx');
e = e + runtest('XxXxXx','XxXxXxXxXx');
e = e + runtest('XXxx','XXXXxxXX');
e = e + runtest('','');

fprintf('%d test(s) failed',e);

end

function e = runtest(a, answer)

% runtest(a, answer) calls front22(a, b) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = front22(a);

if strcmp(result,answer)
    e = 0;
    fprintf('\tfront22(%s) = %s\n', a, result)
else
    e = 1;
    fprintf('\tERROR: front22(%s) returned %s\n\t\t%s expected\n', a, result, answer)
end
end