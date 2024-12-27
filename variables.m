freq = 50;
d = 0.5;    %duty cycle
fnew = 33;  % new generated frequency
r = 1000;   %load resistance
L = ((1-d)*r)/(freq*2) + 1.2;    % LC inductance of buck converter
C = (1-d)/(8*L*(2/31)*freq*freq);  % 2 is voltage ripple, 31 is avg voltage input to buck converter