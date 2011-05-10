function foo = countTriple(string)
  counter = 1;
  len = length(string);
  triples = 0;
  while(counter <= len - 2)
    if(string(counter) == string(counter + 1)    &&
          string(counter) == string(counter + 2)) 
      triples++;
    end
    ++counter;
  end
  foo = triples;
end      
      