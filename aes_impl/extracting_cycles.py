from attr import dataclass
from pandas import DataFrame
import os

#os.remove(r"values.txt")
#os.remove(r"values.xlsx")
df2 = DataFrame({})
l1 = []
l2 = []
optimization = ["0","1","2","3","s","z"]
for ind in range(len(optimization)):
    count=0
    if optimization[ind] == "s" or optimization[ind] == "z":
        string_to_append = "opt-level = \"%s\"" %optimization[ind]
    else:
        string_to_append = "opt-level = " + optimization[ind]

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


    os.system("cargo run")