function foo = countYZ(strings)
#I had to modify the design spec. a little bit because matlab/octave does not have
#the same support for strings that Java does.  I defined a character to be at the end 
#of a word if it is either followed by a space, or at the end of the sentence.
  counter = 1;
  found = 0;
  len = length(strings);
  while(counter <= len)
    if(strings(counter) == 'z' || strings(counter) == 'y' || strings(counter) == 'Z' || strings(counter) == 'Y' )
      if(counter == len)
	++found;
      elseif(strings(counter+1) == ' ')
	++found;
      end
    end
    ++counter;
  end
  foo = found;
end