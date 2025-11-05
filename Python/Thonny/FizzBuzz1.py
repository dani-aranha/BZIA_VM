'''
a = True

if a ==True :
    print('Okie')
print('Dokie')
'''
#NOW...let's do some mod...

# is this even


#print(f'% 2:{x % 2 == 0}')
#print(f'%!= %2:{x % 2 ! = 0}')

'''
print(f'Fizz: {x % 3 == 0}')
print(f'Buzz: {x % 5 == 0}')
print(f'Fizz Buzz: {x % 3 == 0 and x % 5 == 0}')
'''

'''
x = 1

if x % 3 == 0 and x % 5 == 0:
    print(f'{x} is Fizz Buzz')
elif x % 3 == 0:
    print(f'{x} is Fizz')
elif x % 5 == 0:
    print(f'{x} is Buzz')
else:
    print(f'{x}')
'''

#print(list(range(1,31)))
for x in (range(1,31)):
    if x % 3 == 0 and x % 5 == 0:
        print(f'Fizz Buzz')
    elif x % 3 == 0:
        print(f'Fizz')
    elif x % 5 == 0:
        print(f'Buzz')
    else:
        print(f'{x}')
