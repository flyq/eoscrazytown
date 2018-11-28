import pickle
import json

from log import loggingSetting
from ut import pushaction, getAccounts, getTestAccounts, getRawAccounts

def transferCMU(f, to, n, m=""):
    return pushaction("dacincubator", "transfer", [f, to, "%.4f CMU" % n, m], f)

def pushit(f,t,a):
    return pushaction("crazytownftg", "setaccount", [t,a], f)

logger = loggingSetting("crazytownftg")

if __name__ == "__main__":
    RawAccounts = getRawAccounts()
    accounts = getAccounts()      

    k = 1
    for acc in accounts:
        print(acc)
        for i in RawAccounts:
            d = json.dumps(i)
            _accountName = json.loads(d)["account"]
            _amount = json.loads(d)["amount"]
            _amount3 = float(_amount)*10000*9
            _amount4 = int(_amount3)
            _amount2 = str(_amount4)
            print(k)
            print(i)
            print(_accountName)
            print(_amount2)
            pushit(acc, _accountName, _amount2)
            print(k)
            print("\n")
            k = k + 1 