import os

def binary(N):
    binary = bin(N).replace('0b','')
    x = binary[::-1]

    while len(x)<8:
        x+='0'
    binary = x[::-1]
    return list(binary)

searchtext = "V1 A0 0 0\nV2 A1 0 0\nV3 A2 0 0\nV4 A3 0 0\nV5 B0 0 0\nV6 B1 0 0\nV7 B2 0 0\nV8 B3 0 0"

for t in range(256):
    X = binary(t)
    replacetext = f"V1 A0 0 {X[0]}\nV2 A1 0 {X[1]}\nV3 A2 0 {X[2]}\nV4 A3 0 {X[3]}\nV5 B0 0 {X[4]}\nV6 B1 0 {X[5]}\nV7 B2 0 {X[6]}\nV8 B3 0 {X[7]}"
    with open("4x4leakage.txt","r") as fp:
        data = fp.read()
        data = data.replace(searchtext,replacetext)

    with open("4x4leakage.txt","w") as fp:
        fp.write(data)
    
    searchtext = replacetext
    os.system("ngspice 4x4leakage.txt")
