eosiocpp -g jungle_crazytowntea.abi jungle_crazytowntea.cpp

eosiocpp -o jungle_crazytowntea.wast jungle_crazytowntea.cpp

cd ..

cleos wallet unlock

# Just for test net! Don't use in MAIN
cleos create key --to-console
Private key: 5K89GXduVCfDbzdYXEbEfa9SC7cXHMLSwFZM8qkCfEqzUH92wgM
Public key: EOS5wCzHN52jKsVgs4gQBBiHMknQFmbEBR3Lc1BBSCdDJKY9WvyZM

cleos -u http://dev.cryptolions.io:38888 system newaccount --stake-net "5 EOS" --stake-cpu "20 EOS" --buy-ram "100 EOS" ethdofuckeos crazytowntea EOS5wCzHN52jKsVgs4gQBBiHMknQFmbEBR3Lc1BBSCdDJKY9WvyZM

cleos wallet import 
private key: imported private key for: EOS5wCzHN52jKsVgs4gQBBiHMknQFmbEBR3Lc1BBSCdDJKY9WvyZM

cleos -u http://dev.cryptolions.io:38888 set contract crazytowntea jungle_crazytowntea -p crazytowntea@active

cleos -u http://dev.cryptolions.io:38888 push action crazytowntea init '[""]' -p crazytowntea@active

cleos wallet import 
private key: imported private key for: EOS4zfyNRNVFWwMr4tkvNyCvhWqSqB5eUb7vYSxD7GntPidWMtWEy

cleos -u http://dev.cryptolions.io:38888 push action dacincubator create '["crazytowntea", "1000000000.0000 CTN"]' -p dacincubator@active
executed transaction: 87debdc82ea49e4c4d40301f288458c1cc505e3dcf9abe2d7468c48a28fb4cf2  120 bytes  292 us
#  dacincubator <= dacincubator::create         {"issuer":"crazytowntea","maximum_supply":"1000000000.0000 CTN"}

cleos -u http://dev.cryptolions.io:38888 push action dacincubator issue '["crazytowntea", "50000000.0000 CTN", ""]' -p dacincubator@active
executed transaction: 9a16e1b7552edea955e9f8e5f8a43bcfc34fee3ab15b43363ecc13f8b2d9612f  120 bytes  329 us
#  dacincubator <= dacincubator::issue          {"to":"crazytowntea","quantity":"50000000.0000 CTN","memo":""}

cleos -u http://dev.cryptolions.io:38888 get table dacincubator crazytowntea accounts

cleos -u http://dev.cryptolions.io:38888 push action dacincubator issue '["ethdofuckeos", "50000000.0000 CTN", ""]' -p dacincubator@active

cleos -u http://dev.cryptolions.io:38888 push action dacincubator transfer '["ethdofuckeos", "crazytowntea","50000000.0000 CTN", ""]' -p ethdofuckeos@active

cleos -u http://dev.cryptolions.io:38888 get table dacincubator crazytowntea accounts

cleos -u http://dev.cryptolions.io:38888 get table eosio.token ethdofuckeos accounts


cleos -u http://dev.cryptolions.io:38888 push action eosio.token   transfer  '["ethdofuckeos", "crazytowntea","5.0000 EOS", ""]' -p ethdofuckeos@active

cleos -u http://dev.cryptolions.io:38888 set account permission crazytowntea active '{"threshold": 1,"keys": [{"key": "EOS5wCzHN52jKsVgs4gQBBiHMknQFmbEBR3Lc1BBSCdDJKY9WvyZM","weight": 1}],"accounts": [{"permission":{"actor":"crazytowntea","permission":"eosio.code"},"weight":1}]}' owner -p crazytowntea


root@ed32035939da:/temp# cleos -u http://dev.cryptolions.io:38888 push action eosio.token   transfer  '["ethdofuckeos", "crazytowntea","5.0000 EOS", ""]' -p ethdofuckeos@active
executed transaction: 3a6c76145fd41bc20693cc5f70e800436cbdfa7b9c05e9d7916f8b3985104395  128 bytes  1558 us
#   eosio.token <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"5.0000 EOS","memo":""}
#  ethdofuckeos <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"5.0000 EOS","memo":""}
#  crazytowntea <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"5.0000 EOS","memo":""}
#  dacincubator <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"18680.0000 CTN","memo":"buy CTN"}
#  crazytowntea <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"18680.0000 CTN","memo":"buy CTN"}
#  ethdofuckeos <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"18680.0000 CTN","memo":"buy CTN"}
2018-11-26T06:27:56.123 thread-0   main.cpp:481                  print_result         ]warning: transaction executed locally, but may not be confirmed by the network yet
root@ed32035939da:/temp# cleos -u http://dev.cryptolions.io:38888 push action eosio.token   transfer  '["ethdofuckeos", "crazytowntea","6.0000 EOS", ""]' -p ethdofuckeos@active
executed transaction: 881ec9fdedac902e81ddb466756224b7b555643ad32692f9208930bdd9798685  128 bytes  1289 us
#   eosio.token <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"6.0000 EOS","memo":""}
#  ethdofuckeos <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"6.0000 EOS","memo":""}
#  crazytowntea <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"6.0000 EOS","memo":""}
#  dacincubator <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"22026.0000 CTN","memo":"buy CTN"}
#  crazytowntea <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"22026.0000 CTN","memo":"buy CTN"}
#  ethdofuckeos <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"22026.0000 CTN","memo":"buy CTN"}
warning: transaction executed locally, but may not be confirmed by the network yet    ] 
root@ed32035939da:/temp# cleos -u http://dev.cryptolions.io:38888 push action eosio.token   transfer  '["ethdofuckeos", "crazytowntea","100.0000 EOS", ""]' -p ethdofuckeos@active
executed transaction: e506e798567469ac331e40f83cca55439256f6e66009776553c5f40fdf487b30  128 bytes  905 us
#   eosio.token <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"100.0000 EOS","memo":""}
#  ethdofuckeos <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"100.0000 EOS","memo":""}
#  crazytowntea <= eosio.token::transfer        {"from":"ethdofuckeos","to":"crazytowntea","quantity":"100.0000 EOS","memo":""}
#  dacincubator <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"331520.0000 CTN","memo":"buy CTN"}
#  crazytowntea <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"331520.0000 CTN","memo":"buy CTN"}
#  ethdofuckeos <= dacincubator::transfer       {"from":"crazytowntea","to":"ethdofuckeos","quantity":"331520.0000 CTN","memo":"buy CTN"}
warning: transaction executed locally, but may not be confirmed by the network yet    ] 

cleos -u http://dev.cryptolions.io:38888 push action eosio.token transfer  '["crazytowntea", "ethdofuckeos","111.0000 EOS", ""]' -p crazytowntea@active

cleos -u http://dev.cryptolions.io:38888 push action dacincubator transfer  '["crazytowntea", "ethdofuckeos","888.0000 CTN", ""]' -p crazytowntea@active

cleos -u http://dev.cryptolions.io:38888 get table crazytowntea crazytowntea global




http://jungle2.eosdac.io:8882


