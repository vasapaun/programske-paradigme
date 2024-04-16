import constraint

problem = constraint.Problem()

problem.addVariable("hleb",  range(0, int(20 * 60 / 10)))
problem.addVariable("kifle", range(0, int(20 * 60 / 12)))

def vremenskoOgranicenje(hleb, kifle):
    if hleb * 10 + kifle * 12 <= 20 * 60:
        return True

def resursnoOgranicenje(hleb, kifle):
    if 300 * hleb + 120 * kifle <= 20 * 1000:
        return True

def zarada(hleb, kifle):
    return 7 * hleb + 9 * kifle

problem.addConstraint(vremenskoOgranicenje, ("hleb", "kifle"))
problem.addConstraint(resursnoOgranicenje,  ("hleb", "kifle"))

resenja = problem.getSolutions()

max = {'hleb': 0, 'kifle': 0}
for resenje in resenja:
    if zarada(resenje['hleb'], resenje['kifle']) > zarada(max['hleb'], max['kifle']):
        max = resenje

print(max)
