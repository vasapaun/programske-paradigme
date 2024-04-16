import random
import math


def dist(p1, p2):
    return math.sqrt(abs(p2[0] - p1[0]) * abs(p2[0] - p1[0])
                     + abs(p2[1] - p1[1]) * abs(p2[1] - p1[1]))


if __name__ == "__main__":

    n = int(input("Unesite N: "))
    a = 0
    b = 0
    centre = [0.5, 0.5]

    for i in range(0, n):

        if dist([random.random(), random.random()], centre) <= 0.5:
            a += 1

        b += 1

    print(4 * a / b)
