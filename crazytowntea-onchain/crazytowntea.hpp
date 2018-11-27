#pragma once
#include <eosiolib/asset.hpp>
#include <eosiolib/currency.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/singleton.hpp>
#include <eosiolib/transaction.hpp>

#include "config.hpp"
 
typedef double real_type;

using eosio::action;
using eosio::asset;
using eosio::currency;
using eosio::contract;
using eosio::extended_asset;
using eosio::permission_level;
using eosio::singleton;
using eosio::symbol_name;
using eosio::symbol_type;
using eosio::transaction;
using eosio::unpack_action_data;

using std::string;

class crazytowntea : public contract {
    public: crazytowntea(account_name self) :
        contract(self),
        _global(_self, _self){}

    // @abi action
    void init();
    // @abi action
    void clear();
    
    void onTransfer(account_name from, account_name to,
                    extended_asset quantity, string memo); 

    void apply(account_name code, action_name action);

    // @abi table global
    struct global {       
        uint64_t selled_ctn;
        uint64_t entered_eos;
    };

    typedef singleton<N(global), global> singleton_global;
    singleton_global _global;
};


struct st_transfer {
    account_name from;
    account_name to;
    asset        quantity;
    string       memo;
};

void crazytowntea::apply(account_name code, action_name action) {   
    auto &thiscontract = *this;

    if (action == N(transfer)) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, extended_asset(transfer_data.quantity, code), transfer_data.memo);               
        return;
    }

    if (code != _self) return;
    switch (action) {
        EOSIO_API(crazytowntea, (init)(clear));
    };
}

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        crazytowntea p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}