function clumps=countClumps(a)
  #countClumps({1, 2, 2, 3, 4, 4}) → 2
  #countClumps({1, 1, 2, 1, 1}) → 2
  #countClumps({1, 1, 1, 1, 1}) → 1
  len = length(a);
  counter = 1;
  clumps = 0;
  while(counter < len)
    if(a(counter) == a(counter + 1) && (counter == 1 || a(counter) != a(counter -1)))
        ++clumps;
      end
    ++counter;
  end
end