# the function

    # loop through the logic with an [list]


def fizzbuzz(n):
    for x in range(1, n + 1):
        if x % 3 == 0 and x % 5 == 0:
            print('Fizz Buzz')
        elif x % 3 == 0:
            print('Fizz')
        elif x % 5 == 0:
            print('Buzz')
        else:
            print(x)

fizzbuzz(50)