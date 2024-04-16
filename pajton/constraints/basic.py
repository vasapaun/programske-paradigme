import constraint

problem = constraint.Problem()

problem.addVariable("a", [1, 2, 3])
problem.addVariable("b", [4, 5, 6])

def c(a, b):
    if a * 2 > b:
        return True
    else:
        return False

problem.addConstraint(c)

resenja = problem.getSolutions()

print(resenja)
