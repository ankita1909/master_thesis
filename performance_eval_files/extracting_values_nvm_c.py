from attr import dataclass
from pandas import DataFrame
import os

#os.remove(r"values.txt")
#os.remove(r"values.xlsx")
df2 = DataFrame({})
l1 = []
l2 = []
optimization = ["0","1","2","3","s","z"]
#optimization=["0"]
for ind in range(len(optimization)):
    count=0
    if optimization[ind] == "s" or optimization[ind] == "z":
        string_to_append = "opt-level = \"%s\"" %optimization[ind]
    else:
        string_to_append = "opt-level = " + optimization[ind]

    '''
    with open("Cargo.toml","r+") as f, open("workfile.txt", "w") as newf:
        #data = f.readlines()
        #f.seek(0)
        for line in f:
            if "opt-level" not in line:
                newf.write(line)

    with open("workfile.txt", "a+") as newf:   
        newf.write(string_to_append)

    os.remove(r"Cargo.toml")
    os.rename(r"workfile.txt", r"Cargo.toml")


    os.system("cargo build")
    '''

    array_to_find = ["BlockCopy", "AES128_ECB_encrypt", "gen_cipher", "getSBoxValue", "keyExpansion", "mixColumns", "shiftRows", "subBytes", "xtime" ]
    filename = "mtb-example-psoc6-uart-transmit-receive_o" +optimization[ind] + ".map"
    newtable=[]
    l1.append(" ")
    l2.append(string_to_append)
    sum = 0
    rawfile = open(filename, 'r')
    table = [line.rstrip().split() for line in rawfile.readlines()]
    for line in table: 
        for i in array_to_find:
            if len(line)>2 and i in line[-2]:
                l1.append(int(line[1], base=16))
                l2.append(i)
                newtable.append([line[1]]+[i])
                sum += int(line[1], base=16)
                #print(sum)
    l1.append(sum)
    l2.append("sum")
    print(newtable)
    print(len(newtable))
    print(sum)
    print(hex(sum))
    df1 = DataFrame({"Function Name":l2, "Nvm Values" : l1})
    #df2.append({"Function Name":string_to_append, "Nvm Values" : " "}, ignore_index=False)
    df1.to_csv("values.txt", mode="a")

    print(df1)
    count = count + 1

df2 = DataFrame({"Function Name":l2, "Nvm Values" : l1})
df2.to_excel('values.xlsx', sheet_name='sheet1', index=False, startcol=count)
