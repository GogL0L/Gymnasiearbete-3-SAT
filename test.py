import subprocess

def check(string, debug=False):
    if debug:
        result =subprocess.check_output(["python", "simple-sat/src/sat.py","-v", "-ti",
        string]) 
    
        return result
    else:
        result =subprocess.check_output(["python", "simple-sat/src/sat.py", "-ti",
        string]) 
    

        if result == "":
            return 0
        else:
            return 1


def generate_formula(seed, debug=False):
    string = str(seed)
    digits = list(string)
    print ("digits: ", digits)

    formula = []
    disjunction_counter  = 0
    for digit in digits:
        if disjunction_counter%3 == 0 and disjunction_counter != 0:
            formula.append(",")
            formula.append(" ")

        if int(digit)<5 :
            formula.append(str(digit))
            formula.append(" " )
            if debug:
                print ("borde vara under 5: " + str(digit))

        else:
            formula.append("~")
            formula.append(str(int(digit)-5))
            formula.append(" ")
            if debug:
                print ("borde vara over 5: "+ str(digit))

        if debug:
            print ("formula: ", formula)
        disjunction_counter += 1

    return "".join(formula)



number = 123678173
stuff =generate_formula(number)
print ("Seed: ", number)
print (stuff)
print ("Validity: ", check(stuff))


