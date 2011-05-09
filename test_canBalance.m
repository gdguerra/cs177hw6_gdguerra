function test_canBalance

% test_canBalance() runs several tests and returns the number of tests that fail.

% Gabriel Guerra on 5/8/2011

e = 0;
e = e + runtest([0],0);
e = e + runtest([5 2 3],1);
e = e + runtest([1 2 4 6 1],1);
e = e + runtest([8 4 2 2 2 2 2 2],1);
e = e + runtest([12 12],1);
e = e + runtest([],0);
e = e + runtest([2 4 4 2],1);
e = e + runtest([8 4 2],0);
e = e + runtest([9 5 4 1],0);
e = e + runtest([25 5 5 15],1);
e = e + runtest([60 5 3 8 30 30],1);

fprintf('%d test(s) failed\n',e);

end

function e = runtest(a, answer)

% runtest(a, answer) calls canBalance(a, b) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = canBalance(a);

if (result == answer)
    e = 0;
    fprintf('\tcanBalance([%s]) = %d\n', num2str(a), result)
else
    e = 1;
    fprintf('\tERROR: canBalance([%s]) returned %d\n\t\t%d expected\n', num2str(a), result, answer)
end
end