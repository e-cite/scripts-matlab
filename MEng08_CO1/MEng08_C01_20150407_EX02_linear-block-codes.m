%% MEng08_CO1_20150407_EX02_linear-block-codes.m
% Calculating on linear block codes

n = 7;
k = 4;

% A (k x (n-k))
A = [1 1 1;
     1 1 0;
     1 0 1;
     0 1 1]

Ek = eye(k); % Identity matrix Ek (k x k)

Gsys = [Ek A] % Systematic generator matrix Gsys (k x n)

m = dec2bin(0:1:2^k-1)-'0'; % Generate all messages m (2^k-1 x k)

c = m * Gsys; % Get all the codewords
c = mod(c,2) % Modulo, because we calculate in F2

H = [A' eye(n-k)] % The parity check matrix (n-k x n)
mod((Gsys * H'),2)

