function foo = myFactorial(n)
  if(n == 0)
    foo = 1;
  else
    foo = myFactorial(n - 1) * n;
end