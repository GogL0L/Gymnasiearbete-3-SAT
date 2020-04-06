import numpy as np
import satsolver as ss


def test():
    np_array = np.array([1,2,3,4,5,6])

    test = ss.generate_formula(np_array)

    truth_value = ss.check(test)

    print ("test värdet är:", test)

    print ("sanningsvärdet är:", truth_value)

    return truth_value

def reverse(string):
    return string[::-1]

def int_list(string):
    list_ = []
    for int_ in string:
        list_.append(int(int_))
    return list_


def main():
    x_train = np.zeros((1,72))
    y_train = np.array([])
    x_test = np.array([])
    y_test = np.array([])

    x_tail = np.array([])
    y_tail = np.array([])

    for num in range(0,60000):
        num_string = str(num).zfill(5)
        head_array = np.array(int_list(num_string))
        tail_array = np.random.randint(10, size=67)
        array_to_append = np.concatenate((head_array,tail_array))
        x_train = np.concatenate((x_train, [array_to_append]))
        # print ("input: ", array_to_append)

        formula = ss.generate_formula(array_to_append)
        value_to_append = ss.check(formula)
        y_train = np.append(y_train, value_to_append)
        # print ("output: ", str(ss.check(formula)))

        if num % 600 == 0:
            print (str(num % 600), " percent")

    np.save('x_train',x_train)
    np.save('y_train',y_train)



main()

