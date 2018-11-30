/**
 *  @dev minakokojima
 *  @copyright Andoromeda
 */

#include "crazytowntea.hpp"

void crazytowntea::init() {
    require_auth(_self);    
    auto g = _global.get_or_create(_self, global{});
    g.selled_ctn = 0;
    g.entered_eos = 0;
    _global.set(g, _self); 
}  

void crazytowntea::clear() {
    require_auth(_self);
}  

void crazytowntea::onTransfer(account_name from, account_name to, extended_asset quantity, string memo){
    if (to != _self) return;
    if (quantity.contract != N(eosio.token)) return;

    require_auth(from);

    eosio_assert(quantity.is_valid(), "Invalid token transfer");
    eosio_assert(quantity.amount > 0, "must be a positive amount");

    eosio_assert(quantity.symbol == EOS_SYMBOL, "must use EOS to buy CTN");    
    /*
    auto g = _global.get();
    uint64_t _selled_ctn = 0;

    if (g.entered_eos <= EOS_QUOTA_1) {
        _selled_ctn = 0;
        if (quantity.amount + g.entered_eos <= EOS_QUOTA_1) {
            _selled_ctn += quantity.amount * TOKEN_PRICE_1;
        } else {
            uint64_t _overflow = quantity.amount + g.entered_eos - EOS_QUOTA_1;
            _selled_ctn += (EOS_QUOTA_1 - g.entered_eos) * TOKEN_PRICE_1;
            _selled_ctn += _overflow * TOKEN_PRICE_2;
        }
        action(
            permission_level{_self, N(active)},
            N(dacincubator), N(transfer),
            make_tuple(_self, from, asset(_selled_ctn, CTN_SYMBOL),
                std::string("buy CTN"))
        ).send();         
        g.selled_ctn += _selled_ctn;
        g.entered_eos += quantity.amount;

    } else if (g.entered_eos > EOS_QUOTA_1 && g.entered_eos <= EOS_QUOTA_2) {
        _selled_ctn = 0;
        if (quantity.amount + g.entered_eos <= EOS_QUOTA_2) {
            _selled_ctn += quantity.amount * TOKEN_PRICE_2;
        } else {
            uint64_t _overflow = quantity.amount + g.entered_eos - EOS_QUOTA_2;
            _selled_ctn += (EOS_QUOTA_2 - g.entered_eos) * TOKEN_PRICE_2;
            _selled_ctn += _overflow * TOKEN_PRICE_3;            
        }
        action(
            permission_level{_self, N(active)},
            N(dacincubator), N(transfer),
            make_tuple(_self, from, asset(_selled_ctn, CTN_SYMBOL),
                std::string("buy CTN"))
        ).send();
        g.selled_ctn += _selled_ctn;
        g.entered_eos += quantity.amount;

    } else {
        action(
            permission_level{_self, N(active)},
            N(dacincubator), N(transfer),
            make_tuple(_self, from, asset(quantity.amount*TOKEN_PRICE_3, CTN_SYMBOL),
                std::string("buy CTN"))
        ).send();
        g.selled_ctn += quantity.amount*TOKEN_PRICE_3;
        g.entered_eos += quantity.amount;
    }

    _global.set(g, _self);
    */
}