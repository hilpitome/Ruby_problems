def time_conversion(minutes)
 if minutes <= 59
 time = 00.to_s + ":" + minutes.to_s
  elsif (minutes % 60) > 0
	time = (minutes/60).to_s + ":" +(minutes%60).to_s
  else 
  	time = (minutes/60).to_s + ":" + "00"
   end    
return time
end
puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)