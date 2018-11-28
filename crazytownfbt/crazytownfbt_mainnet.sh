cleos -u http://api.eosbeijing.one push action eosio buyram '["crazytownfbt","crazytownfbt","90.0000 EOS"]' -p crazytownfbt@active

cleos -u http://api.eosbeijing.one set contract crazytownftg crazytownfbt -p crazytownfbt@active

cleos -u http://api.eosbeijing.one push action  crazytownfbt init '[""]' -p crazytownfbt@active

cleos -u http://api.eosbeijing.one get table crazytownfbt crazytownfbt global
{
  "rows": [{
      "released_ctn": 0,
      "state": 0
    }
  ],
  "more": false
}


cleos -u http://api.eosbeijing.one set account permission crazytownftg active '{"threshold": 1,"keys": [{"key": "EOS6diNA76p88T9JZfgapXXTxiY4Fqou7ZFfty7oDcQSs9umcsWWj","weight": 1}],"accounts": [{"permission":{"actor":"crazytownftg","permission":"eosio.code"},"weight":1}]}' owner -p crazytownftg
executed transaction: c2b7a1daa71d5588e3b9adbc06d820bfb884f0b6c2ee64da25fc3518c4e45164  184 bytes  455 us
#         eosio <= eosio::updateauth            {"account":"crazytownfbt","permission":"active","parent":"owner","auth":{"threshold":1,"keys":[{"key...
2018-11-28T05:17:24.838 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet


cleos -u http://api.eosbeijing.one push action  crazytownfbt setaccount '["ethdofuckeos", "1000000"]' -p crazytownfbt@active

cleos -u http://api.eosbeijing.one get table crazytownfbt ethdofuckeos accounts
{
  "rows": [{
      "remain_amount": 1000000,
      "total_amount": 1000000
    }
  ],
  "more": false
}

cleos -u http://api.eosbeijing.one get table crazytownfbt bookwilllook accounts
{
  "rows": [],
  "more": false
}

cleos -u http://api.eosbeijing.one push action  crazytownfbt withdraw '["ethdofuckeos", "1000000"]' -p ethdofuckeos@active
Error 3050003: eosio_assert_message assertion failure
Error Details:
assertion failure with message: token is locked
pending console output: 

cleos -u http://api.eosbeijing.one push action  crazytownfbt changelock '[""]' -p crazytownfbt@active

cleos -u http://api.eosbeijing.one get table crazytownfbt crazytownfbt global
{
  "rows": [{
      "released_ctn": 0,
      "state": 1
    }
  ],
  "more": false
}

cleos -u http://api.eosbeijing.one push action  crazytownfbt withdraw '["ethdofuckeos", "1000000"]' -p ethdofuckeos@active
executed transaction: d9575d8b9102ac5f5ea311dc039ec0a04d0b70e56d91e4e994c9d97b650eaac8  104 bytes  781 us
#  crazytownfbt <= crazytownfbt::withdraw       {"from":"ethdofuckeos"}
#  dacincubator <= dacincubator::transfer       "90cf9a9c66ffcd4580a982482f9a5a5640420f00000000000443544e000000000c77697468647261772043544e"
2018-11-28T05:32:17.021 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet

cleos -u http://api.eosbeijing.one get table dacincubator crazytownfbt accounts
Error 3060003: Contract Table Query Exception
#Most likely, the given table doesn't exist in the blockchain.
Error Details:
Table accounts is not specified in the ABI

cleos -u http://api.eosbeijing.one get table crazytownfbt ethdofuckeos accounts
{
  "rows": [{
      "remain_amount": 0,
      "total_amount": 1000000
    }
  ],
  "more": false
}

cleos -u http://api.eosbeijing.one push action  crazytownfbt setaccount '["ethdofuckeos", "1000000"]' -p crazytownfbt@active
executed transaction: 5b355a0eb93ba66f6b7473d7446d69c7b725c36c329ccb797bbd7e80420b0261  112 bytes  373 us
#  crazytownfbt <= crazytownfbt::setaccount     {"dist":"ethdofuckeos","amount":1000000}
2018-11-28T05:43:13.049 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet

cleos -u http://api.eosbeijing.one get table crazytownfbt ethdofuckeos accounts
{
  "rows": [{
      "remain_amount": 1000000,
      "total_amount": 2000000
    }
  ],
  "more": false
}





#######################################################
cleos -u http://api.eosbeijing.one set contract dacincubator eosio.token -p dacincubator@active
Reading WASM from eosio.token/eosio.token.wasm...
Publishing contract...
executed transaction: d73bf628afe7dec832c0a2c9693cc0f93573d7a284cae3e19b1d6f7a62366faf  8120 bytes  3008 us
#         eosio <= eosio::setcode               {"account":"dacincubator","vmtype":0,"vmversion":0,"code":"0061736d01000000017e1560037f7e7f0060057f7...
#         eosio <= eosio::setabi                {"account":"dacincubator","abi":"0e656f73696f3a3a6162692f312e30010c6163636f756e745f6e616d65046e616d6...
2018-11-28T05:59:12.355 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet


cleos -u http://api.eosbeijing.one set account permission dacincubator active '{"threshold": 1,"keys": [{"key": "EOS4zfyNRNVFWwMr4tkvNyCvhWqSqB5eUb7vYSxD7GntPidWMtWEy","weight": 1}],"accounts": [{"permission":{"actor":"dacincubator","permission":"eosio.code"},"weight":1}]}' owner -p dacincubator
executed transaction: fd416087b274d92223efe5e1418b8dddcb448270995d3e3dd4ddb080dc850ac7  184 bytes  516 us
#         eosio <= eosio::updateauth            {"account":"dacincubator","permission":"active","parent":"owner","auth":{"threshold":1,"keys":[{"key...
2018-11-28T06:01:15.102 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet


cleos -u http://api.eosbeijing.one push action  dacincubator create '["dacincubator", "1000000.0000 CTN"]' -p dacincubator@active
executed transaction: d9172543b80bd9b62166b7e4f8714bccf90ce9c02b5ba7b33874daeb0f4ee209  120 bytes  584 us
#  dacincubator <= dacincubator::create         {"issuer":"dacincubator","maximum_supply":"1000000.0000 CTN"}
2018-11-28T06:32:06.406 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet

cleos -u http://api.eosbeijing.one push action  dacincubator issuer '["crazytownfbt", "1000.0000 CTN",""]' -p dacincubator@active


################################
cleos -u http://api.eosbeijing.one set contract dacincubator dacincubator -p dacincubator@active


cleos -u http://jungle.eosgen.io:80 get table dacincubator crazytownfbt accounts
cleos -u http://api.eosbeijing.one get table dacincubator crazytownfbt accounts
{
  "rows": [],
  "more": false
}


cleos -u http://api.eosbeijing.one push action  dacincubator init '[""]' -p dacincubator@active
executed transaction: 3c9116e19271a98b2110695e43ad7063bbba789670490b16d21c3af03f4527b8  96 bytes  1117 us
#  dacincubator <= dacincubator::init           ""
#  dacincubator <= dacincubator::transfer       {"from":"dacincubator","to":"crazytownfbt","quantity":"15000000.0000 CTN","memo":""}
#  crazytownfbt <= dacincubator::transfer       {"from":"dacincubator","to":"crazytownfbt","quantity":"15000000.0000 CTN","memo":""}
2018-11-28T06:45:32.076 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet

cleos -u http://jungle.iryo.netwoSrk:8888 get table dacincubator crazytownfbt accounts
{
  "rows": [{
      "balance": "15000000.0000 CTN"
    }
  ],
  "more": false
}



cleos -u http://api.eosbeijing.one push action  crazytownfbt withdraw '["ethdofuckeos", "1000000"]' -p ethdofuckeos@active
executed transaction: d1e2f8aa0c63f304267e95e29a03e64fe13cf40913d96cc6ac673dfb05677a4e  104 bytes  1144 us
#  crazytownfbt <= crazytownfbt::withdraw       {"from":"ethdofuckeos"}
#  dacincubator <= dacincubator::transfer       {"from":"crazytownfbt","to":"ethdofuckeos","quantity":"100.0000 CTN","memo":"withdraw CTN"}
#  crazytownfbt <= dacincubator::transfer       {"from":"crazytownfbt","to":"ethdofuckeos","quantity":"100.0000 CTN","memo":"withdraw CTN"}
#  ethdofuckeos <= dacincubator::transfer       {"from":"crazytownfbt","to":"ethdofuckeos","quantity":"100.0000 CTN","memo":"withdraw CTN"}
2018-11-28T06:47:35.302 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet


cleos -u http://api.eosbeijing.one push action eosio delegatebw '["crazytownftg","crazytownftg","0.5.0000 EOS","5.0000 EOS"]' -p tengavinwood@active

######################################################################################
MAIN_NET

cleos -u http://api.eosbeijing.one set account permission crazytownftg active '{"threshold": 1,"keys": [{"key": "EOS6diNA76p88T9JZfgapXXTxiY4Fqou7ZFfty7oDcQSs9umcsWWj","weight": 1}],"accounts": [{"permission":{"actor":"crazytownftg","permission":"eosio.code"},"weight":1}]}' owner -p crazytownftg


cleos -u http://api.eosbeijing.one set contract crazytownftg crazytownfbt -p crazytownftg@active
# error

cleos -u http://api.eosbeijing.one push action eosio buyram '["crazytownftg","crazytownftg","5.0000 EOS"]' -p crazytownftg@active

cleos -u http://api.eosbeijing.one get table crazytownftg crazytownftg global

cleos -u http://api.eosbeijing.one push action  crazytownftg init '[""]' -p crazytownftg@active
