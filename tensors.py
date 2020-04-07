import numpy as np
import satsolver as sat

__author__ = "John Möller"


def int_list(string):
    """Takes a string of integers and returns a list of integers.
    """
    list_ = []
    for int_ in string:
        list_.append(int(int_))
    return list_


def create_training_data():
    """Creates 60000 formulas and their respective results of satisfiability.
    The input and output training data is exported respectively as 'x_train.npy'
    and 'y_train.npy' into a directory named '/data'.
    """
    # Numpy requires that the first entry establishes the dimension of
    # the first array if arrays are to be appended.
    x_train = np.zeros((1,72))
    y_train = np.array([])

    for num in range(0,60000):
        # Appends the leading zeros so it becomes a 5 digit string
        num_string = str(num).zfill(5)
        # The array decided by the num
        head_array = np.array(int_list(num_string))
        # The random array
        tail_array = np.random.randint(10, size=67)
        # The num array concatenated with the random array
        array_to_append = np.concatenate((head_array,tail_array))
        # Entry appended to x_train
        x_train = np.concatenate((x_train, [array_to_append]))

        # Generating and appending the corresponding output value
        formula = sat.generate_formula(array_to_append)
        value_to_append = sat.check(formula)
        y_train = np.append(y_train, value_to_append)

        # Prints out each integer percent progress through the loop
        if num % 600 == 0:
            print (100 - ((60000 - num) / 600), " percent")

    # Because x_train had to be initiated with a first entry,
    # it is now deleted.
    x_train = np.delete(x_train, 0, 0)

    # Data saved as 'x_train.npy' and 'y_train.npy'
    np.save('data/x_train', x_train)
    np.save('data/y_train', y_train)

    print("Training data has successfully been generated.")


def create_test_data():
    """Creates 10000 formulas and their respective results of satisfiability.
    The input and output test data is exported respectively as 'x_test.npy' and
    'y_test.npy' into a directory named '/data'.
    """
    # This method is identical to the create_test_data function
    # except x_train and y_train are respectively exchanged with
    # x_test and y_test. Percentage indicator has also been
    # adapted to reflect the the new range.
    x_test = np.zeros((1,72))
    y_test = np.array([])

    for num in range(60000,70000):
        num_string = str(num).zfill(5)
        head_array = np.array(int_list(num_string))
        tail_array = np.random.randint(10, size=67)
        array_to_append = np.concatenate((head_array,tail_array))
        x_test = np.concatenate((x_test, [array_to_append]))

        formula = sat.generate_formula(array_to_append)
        value_to_append = sat.check(formula)
        y_test = np.append(y_test, value_to_append)

        if num % 100 == 0:
            print (100 -((70000 - num ) / 100), " percent")

    x_test = np.delete(x_test, 0, 0)

    np.save('data/x_test',x_test)
    np.save('data/y_test',y_test)

    print ("The test data has successfully been generated.")


def main():
    create_training_data()
    create_test_data()


if __name__ == "__main__":
    main()
