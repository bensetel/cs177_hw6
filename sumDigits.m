function foo = sumDigits(string)
  counter = 1;
  len = length(string);
  total = 0;
  while(counter <= len)
    cur_num = str2num(string(counter)); #intentionally ignores
                                        #sign, as implied by
                                        #problem spec
    if(cur_num == e)
      cur_num = [];
    elseif(!isempty(cur_num))
      total += cur_num;
    end
    ++counter;
  end
  foo = total;
end