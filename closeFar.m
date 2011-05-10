function foo = closeFar(a,b,c)
  foo = false;
  if(abs(a-b) <= 1)
    if(abs(a-c) >= 2 && abs(b-c) >= 2)
      foo = true;
    end
  elseif(abs(a-c) <= 1)
    if(abs(a-b) >= 2 && abs(c-b) >= 2)
      foo = true;
    end
  end
end