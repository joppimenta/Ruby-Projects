def caesar_cipher(message, key)
    cifrada = ""
    for i in (0..message.size()-1)
        index = message[i].ord
        if (index >= 65 and index <= 90)
            if index + key <= 90
                nova_letra = (index + key).chr
                cifrada = cifrada + nova_letra
            else
                nova_letra = (((index+key)%91) + 65).chr
                cifrada = cifrada + nova_letra 
            end
        elsif (index >= 97 and index <= 122)
            if index + key <= 122
                nova_letra = (index + key).chr
                cifrada = cifrada + nova_letra
            else
                nova_letra = (((index+key)%123) + 97).chr 
                cifrada = cifrada + nova_letra
            end
        else
            cifrada = cifrada + message[i]
        end
    end

    return cifrada
end

puts caesar_cipher("What a string!", 5)