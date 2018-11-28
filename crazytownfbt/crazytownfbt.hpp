#pragma once
#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/singleton.hpp>

#include "config.hpp"

using eosio::action;
using eosio::asset;
using eosio::contract;
using eosio::extended_asset;
using eosio::permission_level;
using eosio::singleton;
using eosio::symbol_name;
using eosio::symbol_type;


class crazytownfbt : public contract {
    public: crazytownfbt(account_name self) :
        contract(self),
        _global(_self, _self){}

        // @abi action            
        void init();

        // @abi action
        void clear();

        // @abi action
        void withdraw(account_name from);

        // @abi action
        void setaccount(account_name dist, uint64_t amount);

        // @abi action
        void changelock();

        void apply(account_name code, action_name action);

        
        // @abi table global        
        struct global {
            uint64_t released_ctn;
            bool state;
        };

        // @abi table accounts
        struct account_info {
            uint64_t remain_amount;
            uint64_t total_amount;
        };

        typedef singleton<N(global), global> singleton_global;
        singleton_global _global;   

        typedef singleton<N(accounts), account_info> singleton_accounts;
};

void crazytownfbt::apply(account_name code, action_name action) {
    auto &thiscontract = *this;

    if (action == N(transfer)) {
        return;
    }    
    if (code != _self) return;
    switch (action) {
        EOSIO_API(crazytownfbt, (init)(clear)(withdraw)(setaccount)(changelock));
    };
}

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        crazytownfbt p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}