module Ex25

    #This function breaks a string along whitespace and puts it into an array
    #then returns the array. Awful variable name, I know
    def Ex25.break_words(stuff)
        words = stuff.split(' ')
        return words
    end

    #wraps ruby's built in sort function
    def Ex25.sort_words(words)
        return words.sort
    end

    #prints the first item in an array. Supposed to be an array of strings
    def Ex25.print_first_word(words)
        word = words.shift #pop first value off of words
        puts word
    end

    #Removes last value from words array, stores it in a variable, then prints it
    def Ex25.print_last_word(words)
        word = words.pop
        puts word
    end

    #This function takes a string, splits it into an array, then sorts the array
    def Ex25.sort_sentence(sentence)
        words = Ex25.break_words(sentence) #make an array of words
        return Ex25.sort_words(words)
    end

    def Ex25.print_first_and_last(sentence)
        words = Ex25.break_words(sentence)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end

    def Ex25.print_first_and_last_sorted(sentence)
        words = Ex25.sort_sentence(sentence)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end
end
