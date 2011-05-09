function test_nearHundred

% test_nearHundred() runs several tests and returns the number of tests that fail.

% Gabriel Guerra on 5/8/2011

e = 0;
e = e + runtest([],-1);
e = e + runtest(90,1);
e = e + runtest(99,1);
e = e + runtest(89,0);
e = e + runtest(110,1);
e = e + runtest(111,0);
e = e + runtest(199,1);
e = e + runtest(210,1);
e = e + runtest(220,0);
e = e + runtest(180,0);
e = e + runtest(1,0);

fprintf('%d test(s) failed\n',e);

end

function e = runtest(a, answer)

% runtest(a, answer) calls nearHundred(a, b) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = nearHundred(a);

if (result == answer)
    e = 0;
    fprintf('nearHundred(%d) = %d\n', a, result)
else
    e = 1;
    fprintf('ERROR: nearHundred(%d) returned %d\n\t%d expected\n', a, result, answer)
end
end