def append_down_from(array, num)
  if num >= 0
    append_down_from(array.concat([num]), (num-1))
  else
    array
  end
end
