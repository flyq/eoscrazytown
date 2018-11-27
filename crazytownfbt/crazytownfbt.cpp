#include "crazytownfbt.hpp"

namespace eosio {

void crazytownfbt::init() {
    require_auth(_self);    
    auto g = _global.get_or_create(_self, global{});
    g.state = false;
    g.released_ctn = 0;

    _global.set(g, _self); 
}  

void crazytownfbt::clear() {
    require_auth(_self);
}

void crazytownfbt::withdraw(name from){
    require_auth(from);

    auto g = _global.get();
    eosio_assert(g.state == true, "token is locked");

    auto itr =  _account.find(from);
    eosio_assert(itr != _account.end(), "account don't exist");
    eosio_assert(itr.state == false, "already withdraw");

    action(
        permission_level{_self, "active"_n}, 
        TOKEN_CONTRACT, "transfer"_n,
        make_tuple(_self, from, asset(item->amount, CTN_SYMBOL), 
        std::string("withdraw CTN")
       )
    ).send();

    _account.modify(itr, get_self(), [&](auto &a) {
        a.state = true;
    });
    
    /*
    for(auto item : _account) {
        if(item->owner == from) {
            eosio_assert(item->state == false, "already withdraw");

            action(
                permission_level{_self, N(active)}, 
                TOKEN_CONTRACT, N(transfer),
                make_tuple(_self, from, asset(item->amount, CTN_SYMBOL), 
                    std::string("withdraw CTN")
                )
            ).send();

            _account.modify(item, get_self(), [&](auto &a) {
                a.state = true;
            });  
        } else {
            eosio_assert(false, "account don't exist");
        }
    }
    */

}

// use script to set, make sure id is unique.
void crazytownfbt::set(uint64_t id, name dist, uint64_t amount){
    require_auth(_self);

    _account.emplace(get_self(), [&](auto &a) {
        a.id = id;
        a.owner = dist;
        a.state = false;
        a.amount = amount;
    });
}

} /// namespace eosio

EOSIO_DISPATCH( eosio::crazytownfbt, (init)(clear)(withdraw)(set)(unlock) )