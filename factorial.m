function foo = factorial(n)
  if(n == 0)
    foo = 1;
  else
    foo = factorial(n - 1) * n;
end