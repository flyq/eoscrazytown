 #include "crazytown.hpp"

// @abi action
void eoscrazytown::init(const checksum256& hash) {
    require_auth( _self );
    auto g = _global.get_or_create( _self, st_global{.hash = hash});    
    g.hash = hash;
    _global.set(g, _self);

    clear() ;
}
// @abi action
void eoscrazytown::clear() {
    require_auth(_self);
/*    while (players.begin() != players.end()) {
        players.erase(players.begin());
    }*/
    while (bags.begin()!=bags.end()){
        bags.erase(bags.begin());
    }
}
// @abi action
void eoscrazytown::test(){

}

auto eoscrazytown::checkBets( const asset &eos, const string &memo,
                              vector<int64_t> &vbets, int64_t &totalBets  ) {  // check eos.amount == total bets
    vbets = getBets( memo, ',' ) ;
    totalBets = getTotalBets( vbets ) ;    
    return eos.amount == totalBets ;
}

void eoscrazytown::newbag(account_name &from, asset &eos ) {    

      // require_auth(_self);

          bags.emplace(from, [&](auto& p) {
          
        p.id =  bags.available_primary_key();
            p.owner = from;
            p.price = eos.amount ;
        });
}


void eoscrazytown::setslogan(account_name &from, uint64_t id,string memo) {
    auto itr = bags.find(id);
    eosio_assert(from == itr->owner, "not the owner...");
        bags.modify(itr, from, [&](auto& t) {
        t.slogan  = memo;
    });
}

// input
void eoscrazytown::onTransfer(account_name &from, account_name &to, asset &eos, string &memo) {        
    if (to != _self) return ;

    require_auth(from);
    eosio_assert(eos.is_valid(), "Invalid token transfer...");
    eosio_assert(eos.symbol == EOS_SYMBOL, "only EOS token is allowed");
    eosio_assert(eos.amount > 0, "must buy a positive amount");
//    eosio_assert(memo != "" , "must have something in memo") ;
//    eosio_assert(memo.size() >= 21  , "bets wrong...") ;

    if(memo.substr(0,3)=="buy"){

    
        memo.erase(0,4);
         std::size_t s = memo.find(' '); 
         if (s == string::npos) {
             s = memo.size();
         }
          
             
        auto id = string_to_price(memo.substr(0, s));
      //  auto id = 0;
        memo.erase(0, s+1);        
        auto itr = bags.find(id);
        eosio_assert(eos.amount >= itr->next_price(),"no enough eos");
        asset d(itr->next_price(),EOS_SYMBOL);

        d.amount -= itr->price;

       auto ref_b= d;
        ref_b.amount /=10; 
        auto ref = eosio::string_to_name(memo.c_str());
                if (is_account(ref)) {
                                

                    action( // winner winner chicken dinner
                        permission_level{_self, N(active)},
                        _self, N(transfer),
                        make_tuple(_self, ref, ref_b,
                            std::string("ref bonus") )
                    ).send();
            
                }
        d.amount-=ref_b.amount * 5;

        auto delta = d;
        delta.amount += itr->price;

        action( // winner winner chicken dinner
            permission_level{_self, N(active)},
            _self, N(transfer),
            make_tuple(_self, itr->owner, delta,
                std::string("next hodl") )
        ).send();
    
        bags.modify(itr, 0, [&](auto& t) {
            t.owner = from;
            t.price = eos.amount;
        });
        
        return;
    }
    
    // todo: input check non-num
    vector<int64_t> vbets ;
    int64_t totalBets = 0 ;
    eosio_assert( eoscrazytown::checkBets( eos, memo, vbets, totalBets ), "Bets not equal to amount.");
    auto itr = players.find(from);
    if (itr == players.end()) {
        players.emplace(_self, [&](auto& p) {
            p.account = from;
            p.vbets = vbets ;
        });
    } else {
        eosio_assert( false, "Already bet.");
        return ;
    }
}


auto eoscrazytown::getResult( const card &a,  const card &b ) {
    string result = "XXXXXXXXXXX" ;
    const char o = 'O' ;
    auto aS = a / 13 ;
    auto bS = b / 13 ;
    auto aP = a % 13 ;
    auto bP = b % 13 ;

    if ( aP > bP ) result[0] = o ; // (1)
    else if ( aP < bP ) result[1] = o ; // (2)
    else result[2] = o ; // (3)

    if ( aS == 1 || aS == 2 ) result[3] = o ; // (4) red
    else result[5] = o ; // (6)

    if ( bS == 1 || bS == 2 ) result[4] = o ; // (5) red
    else result[6] = o  ; // (7)

    if ( ( aP & 1 ) == 1 ) result[7] = o  ; // (8) odd
    else result[8] = o  ; // (9)

    if ( ( bP & 1 ) == 1 ) result[9] = o  ; // (10) odd
    else result[10] = o  ; // (11)

    return result ;
}

const vector<int64_t> eoscrazytown::getBets(const string& s, const char& c) { // need protect
    vector<int64_t> vbets;
    auto vs = explode( s, c ) ;
    for ( auto n:vs ) {
        vbets.push_back( (int64_t)string_to_price( n ) ) ;
    }

    // change format
    vector<int64_t> v(vbets) ;
    v[0] = vbets[1] ; // (1)
    v[1] = vbets[6] ; // (2)
    v[2] = vbets[0] ; // (3)
    v[3] = vbets[4] ; // (4)
    v[4] = vbets[9] ; // (5)
    v[5] = vbets[5] ; // (6)
    v[6] = vbets[10] ; // (7)
    v[7] = vbets[2] ; // (8)
    v[8] = vbets[3] ; // (9)
    v[9] = vbets[7] ; // (10)
    v[10] = vbets[8] ; // (11)

    return v ;
}

auto eoscrazytown::getBeton( const vector<int64_t> &v ) {
    string beton = "" ;
    for(auto n:v) beton+= ( n != 0 ) ? 'O' : 'X' ;
    
    return beton;
}

const int64_t eoscrazytown::getTotalBets(const vector<int64_t> &v) {
    int64_t totalBets = 0 ;
    for (auto n:v) totalBets += n ;

    return totalBets ;
}

// Output
void eoscrazytown::reveal(const checksum256& seed, const checksum256& hash){ // hash for next round
    require_auth(_self);

    card dragon = seed.hash[ 0 ] % 52 ;
    card tiger = seed.hash[ 1 ] % 52 ;
    const rec_reveal _reveal{
        .dragon = dragon,
        .tiger = tiger,
        .server_hash = _global.get().hash,
        .client_seed = seed,
    }; 
    
    action( // give result to client
            permission_level{_self, N(active)},
            _self, N(receipt), _reveal
    ).send();

    auto result = getResult( _reveal.dragon, _reveal.tiger ) ;         

    string beton ;
    // string presult ;
    int64_t bonus ;
    const char o = 'O' ;
    for (const auto& p : players ) {
        auto& bets = p.vbets ;
        beton = getBeton( bets ) ;
    
        bonus = 0 ;
        // exp:
        // r 2.0: O X X X X X X X X X X // no space !
        // beton: O X X O X X O X O O O // no space !
        if ( result[2] == o ) { // (3) draw
            if ( result[2] == beton[2] ) bonus += bets[2] + bets[2] * DRAW ; // (3)
            bonus += bets[0] / 2 ;
            bonus += bets[1] / 2 ;
            if ( result[3] == beton[3] ) bonus += bets[3] + bets[3] * COLOR ; // (4)
            if ( result[4] == beton[4] ) bonus += bets[4] + bets[4] * COLOR ; // (5)

            if ( result[5] == beton[5] ) bonus += bets[5] + bets[5] * COLOR ; // (6)
            if ( result[6] == beton[6] ) bonus += bets[6] + bets[6] * COLOR ; // (7)

        }
        else { 
            if ( result[0] == o ) {
                if ( result[0] == beton[0] ) bonus += bets[0] + bets[0] * SIDE ; // (1)  
            }
            else { // result[1] == o
               if ( result[1] == beton[1] ) bonus += bets[1] + bets[1] * SIDE ; // (2)

            }
    
            if ( result[3] == beton[3] ) bonus += bets[3] + bets[3] * COLOR ; // (4)
            if ( result[4] == beton[4] ) bonus += bets[4] + bets[4] * COLOR ; // (5)

            if ( result[5] == beton[5] ) bonus += bets[5] + bets[5] * COLOR ; // (6)
            if ( result[6] == beton[6] ) bonus += bets[6] + bets[6] * COLOR ; // (7)

            if ( result[7] == beton[7] )  bonus += bets[7] + bets[7] * ODD ; // (8)
            if ( result[8] == beton[8] )  bonus += bets[8] + bets[8] * EVEN ; // (9)

            if ( result[9] == beton[9] )  bonus += bets[9] + bets[9] * ODD ; // (10)
            if ( result[10] == beton[10] )  bonus += bets[10] + bets[10] * EVEN ; // (11)

        }

        if ( bonus != 0 )
        action( // winner winner chicken dinner
            permission_level{_self, N(active)},
            _self, N(transfer),
            make_tuple(_self, p.account, asset(bonus, EOS_SYMBOL),
                std::string("winner winner chicken dinner") )
        ).send();

    }

    init( hash ) ;
}