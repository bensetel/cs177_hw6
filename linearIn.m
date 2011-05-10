function foo = linearIn(a,b)
  pos_a = 1;
  pos_b = 1;
  len_a = length(a);
  len_b = length(b);
  found = 0;
  while(pos_b <= len_b)
    if(a(pos_a) == b(pos_b))
      ++pos_a;
      ++pos_b;
      ++found;
    elseif(a(pos_a) < b(pos_b))
      ++pos_a;
    elseif(a(pos_a) > b(pos_b))
      ++pos_b;
    else #pos_a = pos_b
      ++pos_a;  #arbitrarily decided, and either choice is valid since
                #it will just increment pos_b on the next loop if a(pos_a) != b(pos_b)
    end
  end
  if(found < len_b)
    foo = false;
  else
    foo = true;
end