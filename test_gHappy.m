% This is a test script for the function gHappy(s)
% Antonio Cancio

% Test cases adjusted and added by Gabriel Guerra
% ans variables changed to 1s and 0s to represent booleans in matlab


function test_gHappy()
g=0;
g=g+runtest('xxggxx',1);
g=g+runtest('xxgxx',0);
g=g+runtest('xxggyygxx',0); %changed to false, third g is not 'happy' -GG
g=g+runtest('g',0);
g=g+runtest('ggggggxxggg',1);
g=g+runtest('xx',0);
g=g+runtest("egsgsaggsetsx",0); %added by Siddhi Krishna
% Changed to false, first and second g are not 'happy' -GG

% Added by Gabriel Guerra
g=g+runtest('point g', 0);
g=g+runtest('gggggggg',1);
g=g+runtest('wghgagtg',0);

fprintf('Failures: %d\n', g);
end

%function added by Siddhi Krishna
function e = runtest(a, ans)
% calls biggerTwo() on a and b
% returns 1 if test fails, 0 if it holds

if(isequal(gHappy(a), ans))
	e = 0;
	fprintf('gHappy(%s) = %s\n\n',a, num2str(ans));
else
	e = 1;
	fprintf('Error: gHappy([%s]) != %s\n\n',a, num2str(ans));
end
