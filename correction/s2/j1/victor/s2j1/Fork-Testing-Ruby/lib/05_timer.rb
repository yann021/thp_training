

def time_string(a)
    secondes = 0 + a
    
    hh = secondes/3600
    mm = secondes%3600/60
    ss = secondes%60
    new_time = [hh,mm,ss].map { |e| e.to_s.rjust(2,'0') }.join ':' 
end

