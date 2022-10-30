def bubble_sort(v)
    for i in (0..v.size()-1)
        for j in (0..v.size()-2)
            if v[j] > v[j+1]
                temp = v[j]
                v[j] = v[j+1]
                v[j+1] = temp
            end
        end
    end

    puts v

end

bubble_sort([4,3,78,2,0,2])
