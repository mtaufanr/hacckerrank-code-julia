# https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem


function rec_phone_book(n::Int)
    phone_book = Dict{String,String}()
    for _ in 1:n
        person, number = map(string, split(readline()))
        phone_book[person] = number
    end
    return phone_book
end


function rec_name(n::Int)
    name_list = String[]
    for _ in 1:n
        append!(name_list, readlines())
    end
    return name_list
end


function get_number(book::Dict{String,String}, name_rec::Array{String})
    names_in_book = keys(book)
    for name in name_rec
        if name in names_in_book
            phone = book[name]
            println("$name=$phone")
        else
            println("Not found")
        end
    end
end

n = parse(Int64, readline())
phone_book = rec_phone_book(n)
name_list = rec_name(n)
get_number(phone_book, name_list)
