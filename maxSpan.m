function span=maxSpan(myArray)
  greatest_span = 0;
  counter = 1;
  len = length(myArray);  #so that we don't have to look it up on each iter of the while loop
  while(counter <= len)
    inner_counter = 1;
    while(inner_counter < counter)
      if(myArray(inner_counter) == myArray(counter) && counter-inner_counter > greatest_span)
	greatest_span = counter-inner_counter;
      end
      inner_counter++;
    end
    counter++;
 end
span = greatest_span + 1;
end
 
