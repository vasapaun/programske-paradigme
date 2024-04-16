import math


class Oblik:
    def __init__(self, boja='crna', popuna=False):
        self.__boja = boja
        self.__popuna = popuna

    def get_boja(self):
        return self.__boja

    def set_boja(self, boja):
        self.__boja = boja

    def get_popuna(self):
        return self.__popuna

    def set_popuna(self, popuna):
        self.__popuna = popuna


class Pravougaonik(Oblik):
    def __init__(self, a, b):
        super().__init__(boja='crvena')
        self.__a = a
        self.__b = b

    def povrsina(self):
        return self.__a * self.__b

    def obim(self):
        return self.__a * 2 + self.__b * 2


class Krug(Oblik):
    def __init__(self, r):
        super().__init__(boja='plava')
        self.__r = r

    def povrsina(self):
        return self.__r * self.__r * math.pi

    def obim(self):
        return 2 * self.__r * math.pi


r1 = Pravougaonik(10.5, 2.5)
print("Povrsina pravougaonika r1:", r1.povrsina())
print("Obim pravougaonika r1:", r1.obim())
print("Boja pravougaonika r1:", r1.get_boja())
print("Da li je r1 popunjen ? ", r1.get_popuna())
r1.set_popuna(True)
print("Da li je r1 popunjen ? ", r1.get_popuna())

c1 = Krug(12)
print("\nPovrsina kruga c1:", format(c1. povrsina(), "0.2f"))
print("Obim kruga c1:", format(c1.obim(), "0.2f"))
print("Boja kruga c1:", c1. get_boja())
print("Da li je c1 popunjen ? ", c1.get_popuna())
c1. set_popuna(True)
print("Da li je c1 popunjen ? ", c1.get_popuna())
