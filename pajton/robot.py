class Robot:

    populacija = 0

    def __init__(self, name):
        Robot.populacija += 1
        self.name = name
        print(f"{self.name} je kreiran!")

    def __del__(self):
        print(f"{self.name} se unistava!")
        Robot.populacija -= 1

    def oglasi_se(self):
        print(f"Moje ime je {self.name}")

    @classmethod
    def koliko(cls):
        print(f"Imamo {cls.populacija} aktivnih robota")


droid1 = Robot("R2-D2")
droid1.oglasi_se()
Robot.koliko()

droid2 = Robot("C-3PO")
droid2.oglasi_se()
Robot.koliko()

print("\nRoboti rade posao ovde...\n")

print("Roboti su zavrsili posao. Obrisimo ih.")

del droid1
del droid2

Robot.koliko()
