function foo = fix34(a)
  counter = 1;
  pos3 = []; #position of all the 3's
  pos4 = []; #position of all the 4's
  len = length(a);
  while(counter <= len)
    if(a(counter) == 3)
      pos3 = [pos3 counter];
    elseif(a(counter) == 4)
      pos4 = [pos4 counter];
    end
    ++counter;
  end
  if(length(pos3) != length(pos4))
    disp("Error: Wrong number of 3's and 4's")
    quit	   
  else
    len = length(pos3);
    counter = 1;
    while(counter <= len)
      curpos3 = pos3(counter);
      curpos4 = pos4(counter);
      a(end+1) = a(curpos3 + 1); #copy whatever's next
	                             #to the three to the
	                             #end of the list.
      a(curpos3 + 1) = a(curpos4); #put a 4 next to the 3
      a(curpos4) = a(end); #put the copied thing at
	                       #the 4's old position
      a = a(1:end-1); #remove the extra copy from the end
      ++counter;
    end
  end
  foo = a;
end