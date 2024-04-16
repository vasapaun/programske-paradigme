def check_state(table):
    # check diagonals
    if (table[0][0] == table[1][1] and table[1][1] == table[2][2]) or (table[0][2] == table[1][1] and table[1][1] == table[2][0]):
        print(f"Igrac {table[1][1]} je pobedio!")
        return True

    for i in range(0, 3):
        if table[i][0] == table[i][1] and table[i][1] == table[i][2]:
            print(f"Igrac {table[i][1]} je pobedio!")
            return True
        if table[0][i] == table[1][i] and table[1][i] == table[2][i]:
            print(f"Igrac {table[1][i]} je pobedio!")
            return True

    return False
