function[y] = sumaPrecisa(numbers)
    while length(numbers) >= 1 
        numbers = reduce(numbers);
    end
    y = numbers;
end 

function[nums] = reduce(numbers) 
    nums = [];
    continuar = true;
    i = 1;
    while continuar && i + 1 < length(numbers)
        num1 = numbers(i);
        num2 = numbers(i+1);
        res = num1 + num2;
        nums = [nums, res];
        i = i + 2;
        if i > length(numbers)
            continuar = false;
        end
    end
    if mod(length(numbers),2) == 1
        nums = [nums, numbers(length(numbers) - 1)];
    end
end
