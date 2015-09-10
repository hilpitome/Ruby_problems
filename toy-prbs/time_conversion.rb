def time_conversion(minutes)
	d = minutes
	hr = d/60
	mins = d%60
   if   hr == 0 && mins <= 59
   time = 00.to_s + ":" + mins.to_s
   return time

   elsif hr > 0 && mins != 0
	time = (hr).to_s + ":" + mins.to_s
	return time

   else
  	time = (hr).to_s + ":" + "00"
  	return time

   end    
end
puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)