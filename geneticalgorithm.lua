-- Many errors to fix on this.

function maxn(tbl)
    local n = 0
    for k, _ in pairs(tbl) do 
        if type(k) == "number" and math.floor(k) == k and k > 0 and k > n then 
            n = k 
        end 
    end 
    return n
end 

-- Gets the size of the array (by using the max index)
function size(values)
    return maxn(values) + 1
end

function crossover(parentA, parentB)
    local child
    local splitLength
    
    splitLength = (math.random(math.floor((string.len(parentA) - 1))) - 1)
    child = substring(parentA, 0, splitLength) .. substring(parentB, splitLength, string.len(parentB))
    
    return child
end

function fitness(individual)
    local fitness
    local countOfOnes
    
    countOfOnes = 0
    local i
    
    for i = 0, string.len(individual) - 1 do
        if string.sub(individual, index(individual), index(individual)) == "1" then
            countOfOnes = countOfOnes + 1
        end
    end
    fitness = countOfOnes / string.len(individual)
    
    return fitness
end

function mutate(individual)
    if (math.random(2) - 1) == 0 then
    else
        local changeIndex
        
        changeIndex = (math.random(string.len(individual)) - 1)
        local changedCharacter
        
        if string.sub(individual, index(individual), index(individual)) == "0" then
            changedCharacter = "1"
        else
            changedCharacter = "0"
        end
        individual = substring(individual, 0, changeIndex) .. changedCharacter .. substring(individual, changeIndex + 1, string.len(individual))
    end
    
    return individual
end

function printArray(array)
    local returnString
    
    returnString = ""
    local i
    
    for i = 0, size(array) - 1 do
        returnString = returnString .. array[i] .. "    "
    end
    
    return returnString
end

function substring(s, start, var_end)
    local substring
    
    substring = ""
    if start < string.len(s) then
        if var_end > string.len(s) then
            var_end = string.len(s)
        end
        local var_index
        
        for var_index = start, var_end - 1 do
            substring = substring .. string.sub(s, index(s), index(s))
        end
    end
    
    return substring
end

-- Main
local population = {}

population[0] = "00000000"
population[1] = "00000010"
population[2] = "00001000"
population[3] = "00100001"
local generation

generation = 0
local maximumFitnessReached

maximumFitnessReached = false
while not maximumFitnessReached do
    io.write(generation, "    ", printArray(population), "\n")
    local bestFitness
    
    bestFitness = 0
    local bestIndex
    
    bestIndex = 0
    local secondBestIndex
    
    secondBestIndex = 0
    local i
    
    for i = 0, size(population) - 1 do
        local currentFitness
        
        currentFitness = fitness(population[i])
        if currentFitness == 1.0 then
            maximumFitnessReached = true
        else
            if currentFitness >= bestFitness then
                bestFitness = currentFitness
                secondBestIndex = bestIndex
                bestIndex = i
            end
        end
    end
    for i = 0, size(population) - 1 do
        population[i] = mutate(crossover(population[bestIndex], population[secondBestIndex]))
    end
    generation = generation + 1
end
