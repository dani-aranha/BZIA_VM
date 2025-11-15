defGreet = 'Outer scope' #vGreet outside the function (scope)

# Basic function syntax
def greet(vGreet = defGreet):      #vGreet inside the function (scope)
        return vGreet
    
print(greet('wazzzup!'))

