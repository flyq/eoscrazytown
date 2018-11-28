#include "crazytownfbt.hpp"

void crazytownfbt::init() {
    require_auth(_self);    
    auto g = _global.get_or_create(_self, global{});
    g.state = false;  // false:0; true:1
    g.released_ctn = 0;

    _global.set(g, _self); 
}  

void crazytownfbt::clear() {
    require_auth(_self);
}

void crazytownfbt::withdraw(account_name from) {
    require_auth(from);

    auto g = _global.get();
    eosio_assert(g.state == true, "token is locked");

    singleton_accounts _accounts(_self, from);
    auto p = _accounts.get_or_create(_self, account_info{});

    eosio_assert(p.remain_amount != 0, "account don't exist or already withdraw");

    action(
        permission_level{_self, N(active)}, 
        TOKEN_CONTRACT, N(transfer),
        make_tuple(_self, from, asset(p.remain_amount, CTN_SYMBOL), 
        std::string("withdraw CTN")
       )
    ).send();

    g.released_ctn += p.remain_amount;
    p.remain_amount = 0;

    _accounts.set(p, _self);
    _global.set(g, _self);
}

void crazytownfbt::setaccount(account_name dist, uint64_t amount) {
    require_auth(_self);

    singleton_accounts _accounts(_self, dist);
    auto p = _accounts.get_or_create(_self, account_info{});

    p.remain_amount += amount;
    p.total_amount += amount;

    _accounts.set(p, _self);
}

void crazytownfbt::changelock() {
    require_auth(_self);

    auto g = _global.get();
    if(g.state == true) {
        g.state = false;
    } else {
        g.state = true;
    }

    _global.set(g, _self);
}