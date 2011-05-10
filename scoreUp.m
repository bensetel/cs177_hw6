function foo = scoreUp(key, answers)
  counter = 1;
  len = length(key); #also = length(answers) 
  score = 0;
  while(counter <= len)
    if(key(counter) == answers(counter))
      score += 4;
    elseif(answers(counter) != '?')
      score -= 1;
    end
    ++counter;
  end
  foo = score;
end
    