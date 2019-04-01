def time_string(sec)
	[sec / 3600, sec / 60 % 60, sec % 60].map{|t| t.to_s.rjust(2,'0')}.join(':')
end

