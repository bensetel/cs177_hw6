function a = seriesUp(n)
  counter = 1;
  inner_counter = 1;
  array = [];
  a = [];
  while(counter <= n)
    array = [];
    inner_counter = 1;
    while(inner_counter <= counter)
      array = [array inner_counter];
      ++inner_counter;
    end
    a = [a array];
    ++counter;
  end
end

