import constraint

problem = constraint.Problem()

problem.addVariables('SM', range(1, 10))
problem.addVariables('ENDORY', range(0, 10))

def o(s, e, n, d, m, o, r, y):
    if(s*1000 + e*100 + n*10 + d + m*1000 + o*100 + r*10 + e) == (10000*m + 1000*o + 100*n + 10*e + y):
        return True

problem.addConstraint(o, "SENDMORY")

problem.addConstraint(constraint.AllDifferentConstraint())

resenja = problem.getSolutions()

for r in resenja:
    print(" " + str(r['S']) + str(r['E']) + str(r['N'])+str(r['D']))
    print(" +"+str(r['M'])+str(r['O'])+str(r['R'])+str(r['E']))
    print("="+str(r['M'])+str(r['O'])+str(r['N'])+str(r['E'])+str(r['Y']))


#   SEND
# + MORE
# ======
#  MONEY
