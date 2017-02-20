A=[1 -7 90;260 270 360;10 -12 -24];
k=255;
f = A - min(min(A));
g = k * (f/max(max(f)));
g=int16(g);
