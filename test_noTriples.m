function test_noTriples

% test_noTriples() runs several tests and returns the number of tests that fail.

% Gabriel Guerra on 5/8/2011

e = 0;
e = e + runtest([0],1);
e = e + runtest([5 2 2 2 3 3],0);
e = e + runtest([1 2 4 6 1],1);
e = e + runtest([8 4 2 2 2 2 2 2],0);
e = e + runtest([12 12],1);
e = e + runtest([],1);
e = e + runtest([2 4 4 2],1);
e = e + runtest([8 4 2 4 2 8 8 8 2 4 4 2],0);
e = e + runtest([2 2 1 2 2],1);
e = e + runtest([25 5 5 15],1);
e = e + runtest([60 5 3 8  30 30 30],0);

fprintf('%d test(s) failed\n',e);

end

function e = runtest(a, answer)

% runtest(a, answer) calls noTriples(a, b) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = noTriples(a);

if (result == answer)
    e = 0;
    fprintf('\tnoTriples([%s]) = %d\n', num2str(a), result)
else
    e = 1;
    fprintf('\tERROR: noTriples([%s]) returned %d\n\t\t%d expected\n', num2str(a), result, answer)
end
end