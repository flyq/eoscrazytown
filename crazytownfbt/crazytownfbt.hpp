#pragma once
#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/singleton.hpp>

#include "config.hpp"

namespace eosio {

    class [[eosio::contract("crazytownfbt")]] crazytownfbt : public contract {
        public: 
            using contract::contract;

            [[eosio::action]]
            void init();

            [[eosio::action]]
            void clear();

            [[eosio::action]]
            void withdraw(name from);

            [[eosio::action]]
            void set(name dist, uint64_t amount);

            [[eosio::action]]
            void unlock();
        
        private:
            struct [[eosio::table]] global {
                uint64_t released_ctn;
                bool state;
            };
        
            struct [[eosio::table]] account_info {
                uint64_t amount;
                name owner;
                bool state;

                name primary_key()const { return owner; }
            };

            typedef singleton<"global"_n, global> singleton_global;
            singleton_global _global;   

            typedef multi_index<"accounts"_n, account_info> account_index;
            account_index _account;
    };
}
