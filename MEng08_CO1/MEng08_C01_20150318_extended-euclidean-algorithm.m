%% MEng08_CO1_07 20150318
% Extended Euclidean Algorithm

% given
a = 2021;
b = 147;

% desired
d = 0;
x = 0;
y = 0;


% step 2
x2 = 1;
x1 = 0;
y2 = 0;
y1 = 1;

% step 3
while (b > 0)
    % step 3.1
    q = floor(a/b);
    r = a - q*b;
    x = x2 - q*x1;
    y = y2 - q*y1;
    
    % step 3.2
    a = b;
    b = r;
    x2 = x1;
    x1 = x;
    y2 = y1;
    y1 = y;
end

% step 4
d = a
x = x2
y = y2
