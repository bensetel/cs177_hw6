function foo = gHappy(string)
  counter = 1;
  len = length(string);  #so that we don't have to look it up on each iter of the while loop
  foo = true;
  while(counter <= len)
    if(string(counter) == 'g')
      if(counter == 1)
	if(len==1)
	  foo = false;
	  break;
	elseif(string(counter + 1) == 'g')
	  counter++;
	  counter++;
	  break;
	else
	  foo = false;
	  break;
        end
      elseif(counter == len)
	if(string(counter - 1) != 'g')
	  foo = false;
	  break;
        end
      elseif(counter != 1 && string(counter - 1) != 'g' && string(counter + 1) != 'g')
	foo = false;
	break;
      end
    end
    ++counter;
  end
end