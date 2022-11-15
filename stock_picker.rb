def stock_picker(v)
    dif = 0
    dayBuy = 0
    daySell = 0
    for i in (0..v.size()-2)
        for j in (i+1..v.size()-1)
            if (v[j]-v[i]) > dif
                dif = v[j] - v[i]
                dayBuy = i
                daySell = j
            end
        end
    end
    vector = []
    vector.append(dayBuy)
    vector.append(daySell)
    return vector
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

