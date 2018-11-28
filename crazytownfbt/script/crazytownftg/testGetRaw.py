import pickle
import json

from log import loggingSetting
from ut import pushaction, getAccounts, getTestAccounts, getRawAccounts

def transferCMU(f, to, n, m=""):
    return pushaction("dacincubator", "transfer", [f, to, "%.4f CMU" % n, m], f)

if __name__ == "__main__":
    RawAccounts = getRawAccounts()
    k = 1
    for i in RawAccounts:
        d = json.dumps(i)
        _accountName = json.loads(d)["account"]
        _amount = json.loads(d)["amount"]
        print(k)
        print(i)
        print(_accountName)
        print(_amount)
        print("\n")
        k = k + 1
        
