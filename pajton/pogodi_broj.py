import random

number = random.randint(1,100)

count = 0

while True:
    count += 1

    choice = int(input("Unesite broj: "))

    if choice == number:
        print(f"Pogodili ste moj broj u {count} pokusaja")
        break

    elif choice < number:
        print("Vece")

    else:
        print("Manje")
