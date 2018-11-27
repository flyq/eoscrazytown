(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "eosio_exit" (func $eosio_exit (param i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN12crazytowntea4initEv $_ZN12crazytowntea5clearEv)
 (memory $0 1)
 (data (i32.const 4) "\10d\00\00")
 (data (i32.const 16) "transfer\00")
 (data (i32.const 32) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 96) "cannot pass end iterator to modify\00")
 (data (i32.const 144) "cannot create objects in table of another contract\00")
 (data (i32.const 208) "write\00")
 (data (i32.const 224) "object passed to modify is not in multi_index\00")
 (data (i32.const 272) "cannot modify objects in table of another contract\00")
 (data (i32.const 336) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 400) "error reading iterator\00")
 (data (i32.const 432) "read\00")
 (data (i32.const 448) "eosio.token\00")
 (data (i32.const 464) "Invalid token transfer\00")
 (data (i32.const 496) "must be a positive amount\00")
 (data (i32.const 528) "singleton does not exist\00")
 (data (i32.const 560) "active\00")
 (data (i32.const 576) "dacincubator\00")
 (data (i32.const 592) "invalid symbol name\00")
 (data (i32.const 624) "buy CTN\00")
 (data (i32.const 640) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 704) "must use EOS to buy CTN\00")
 (data (i32.const 736) "get\00")
 (data (i32.const 9136) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_ZN12crazytowntea5applyEyy" (func $_ZN12crazytowntea5applyEyy))
 (export "_ZN12crazytowntea10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE" (func $_ZN12crazytowntea10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE))
 (export "_ZN12crazytowntea4initEv" (func $_ZN12crazytowntea4initEv))
 (export "_ZN12crazytowntea5clearEv" (func $_ZN12crazytowntea5clearEv))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "memcmp" (func $memcmp))
 (export "strlen" (func $strlen))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $_ZN12crazytowntea5applyEyy (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 16)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $6)
          (i64.const 7)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $8
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.and
       (get_local $8)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i64.ne
      (get_local $7)
      (get_local $2)
     )
    )
    (call $_ZN5eosio18unpack_action_dataI11st_transferEET_v
     (i32.add
      (get_local $9)
      (i32.const 112)
     )
    )
    (set_local $6
     (i64.load offset=120
      (get_local $9)
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 84)
     )
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 140)
      )
     )
    )
    (i32.store
     (tee_local $4
      (i32.add
       (i32.add
        (get_local $9)
        (i32.const 72)
       )
       (i32.const 8)
      )
     )
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 136)
      )
     )
    )
    (i32.store offset=76
     (get_local $9)
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 132)
      )
     )
    )
    (set_local $8
     (i64.load offset=112
      (get_local $9)
     )
    )
    (i32.store offset=72
     (get_local $9)
     (i32.load offset=128
      (get_local $9)
     )
    )
    (i64.store
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 160)
      )
      (i32.const 8)
     )
     (tee_local $5
      (i64.load
       (get_local $4)
      )
     )
    )
    (i64.store
     (tee_local $4
      (i32.add
       (i32.add
        (get_local $9)
        (i32.const 88)
       )
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (i64.store offset=160
     (get_local $9)
     (tee_local $5
      (i64.load offset=72
       (get_local $9)
      )
     )
    )
    (i64.store offset=88
     (get_local $9)
     (get_local $5)
    )
    (i64.store offset=104
     (get_local $9)
     (get_local $1)
    )
    (drop
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
      (i32.add
       (get_local $9)
       (i32.const 56)
      )
      (tee_local $3
       (i32.add
        (get_local $9)
        (i32.const 144)
       )
      )
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (i64.load offset=104
      (get_local $9)
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (get_local $4)
     )
    )
    (i64.store
     (get_local $9)
     (i64.load offset=88
      (get_local $9)
     )
    )
    (call $_ZN12crazytowntea10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
     (get_local $0)
     (get_local $8)
     (get_local $6)
     (get_local $9)
     (get_local $4)
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (i32.and
        (i32.load8_u offset=56
         (get_local $9)
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load offset=64
       (get_local $9)
      )
     )
    )
    (br_if $label$6
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $3)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 152)
      )
     )
    )
    (br $label$6)
   )
   (br_if $label$6
    (i64.ne
     (i64.load
      (get_local $0)
     )
     (get_local $1)
    )
   )
   (block $label$9
    (br_if $label$9
     (i64.eq
      (get_local $2)
      (i64.const 4923678490122780672)
     )
    )
    (br_if $label$6
     (i64.ne
      (get_local $2)
      (i64.const 8421045207927095296)
     )
    )
    (i32.store offset=52
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=48
     (get_local $9)
     (i32.const 1)
    )
    (i64.store offset=24 align=4
     (get_local $9)
     (i64.load offset=48
      (get_local $9)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI12crazytownteaS1_JEEEbPT_MT0_FvDpT1_E
      (get_local $0)
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
     )
    )
    (br $label$6)
   )
   (i32.store offset=44
    (get_local $9)
    (i32.const 0)
   )
   (i32.store offset=40
    (get_local $9)
    (i32.const 2)
   )
   (i64.store offset=32 align=4
    (get_local $9)
    (i64.load offset=40
     (get_local $9)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI12crazytownteaS1_JEEEbPT_MT0_FvDpT1_E
     (get_local $0)
     (i32.add
      (get_local $9)
      (i32.const 32)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataI11st_transferEET_v (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (tee_local $2
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $1
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $1)
   )
  )
  (call $_ZN5eosio6unpackI11st_transferEET_PKcj
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $3)
  )
 )
 (func $_ZN12crazytowntea10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $14
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.load
         (get_local $0)
        )
        (get_local $2)
       )
      )
      (set_local $13
       (i64.load offset=16
        (get_local $3)
       )
      )
      (set_local $2
       (i64.const 0)
      )
      (set_local $10
       (i64.const 59)
      )
      (set_local $9
       (i32.const 448)
      )
      (set_local $11
       (i64.const 0)
      )
      (loop $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (br_if $label$9
             (i64.gt_u
              (get_local $2)
              (i64.const 10)
             )
            )
            (br_if $label$8
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $5
                 (i32.load8_s
                  (get_local $9)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $5
             (i32.add
              (get_local $5)
              (i32.const 165)
             )
            )
            (br $label$7)
           )
           (set_local $12
            (i64.const 0)
           )
           (br_if $label$6
            (i64.eq
             (get_local $2)
             (i64.const 11)
            )
           )
           (br $label$5)
          )
          (set_local $5
           (select
            (i32.add
             (get_local $5)
             (i32.const 208)
            )
            (i32.const 0)
            (i32.lt_u
             (i32.and
              (i32.add
               (get_local $5)
               (i32.const -49)
              )
              (i32.const 255)
             )
             (i32.const 5)
            )
           )
          )
         )
         (set_local $12
          (i64.shr_s
           (i64.shl
            (i64.extend_u/i32
             (get_local $5)
            )
            (i64.const 56)
           )
           (i64.const 56)
          )
         )
        )
        (set_local $12
         (i64.shl
          (i64.and
           (get_local $12)
           (i64.const 31)
          )
          (i64.and
           (get_local $10)
           (i64.const 4294967295)
          )
         )
        )
       )
       (set_local $9
        (i32.add
         (get_local $9)
         (i32.const 1)
        )
       )
       (set_local $10
        (i64.add
         (get_local $10)
         (i64.const -5)
        )
       )
       (set_local $11
        (i64.or
         (get_local $12)
         (get_local $11)
        )
       )
       (br_if $label$4
        (i64.ne
         (tee_local $2
          (i64.add
           (get_local $2)
           (i64.const 1)
          )
         )
         (i64.const 13)
        )
       )
      )
      (br_if $label$3
       (i64.ne
        (get_local $13)
        (get_local $11)
       )
      )
      (call $require_auth
       (get_local $1)
      )
      (set_local $12
       (i64.load offset=8
        (get_local $3)
       )
      )
      (set_local $5
       (i32.const 0)
      )
      (block $label$10
       (br_if $label$10
        (i64.gt_u
         (i64.add
          (tee_local $6
           (i64.load
            (get_local $3)
           )
          )
          (i64.const 4611686018427387903)
         )
         (i64.const 9223372036854775806)
        )
       )
       (set_local $2
        (i64.shr_u
         (get_local $12)
         (i64.const 8)
        )
       )
       (set_local $9
        (i32.const 0)
       )
       (block $label$11
        (loop $label$12
         (br_if $label$11
          (i32.gt_u
           (i32.add
            (i32.shl
             (i32.wrap/i64
              (get_local $2)
             )
             (i32.const 24)
            )
            (i32.const -1073741825)
           )
           (i32.const 452984830)
          )
         )
         (block $label$13
          (br_if $label$13
           (i64.ne
            (i64.and
             (tee_local $2
              (i64.shr_u
               (get_local $2)
               (i64.const 8)
              )
             )
             (i64.const 255)
            )
            (i64.const 0)
           )
          )
          (loop $label$14
           (br_if $label$11
            (i64.ne
             (i64.and
              (tee_local $2
               (i64.shr_u
                (get_local $2)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (br_if $label$14
            (i32.lt_s
             (tee_local $9
              (i32.add
               (get_local $9)
               (i32.const 1)
              )
             )
             (i32.const 7)
            )
           )
          )
         )
         (set_local $5
          (i32.const 1)
         )
         (br_if $label$12
          (i32.lt_s
           (tee_local $9
            (i32.add
             (get_local $9)
             (i32.const 1)
            )
           )
           (i32.const 7)
          )
         )
         (br $label$10)
        )
       )
       (set_local $5
        (i32.const 0)
       )
      )
      (call $eosio_assert
       (get_local $5)
       (i32.const 464)
      )
      (call $eosio_assert
       (i64.gt_s
        (get_local $6)
        (i64.const 0)
       )
       (i32.const 496)
      )
      (call $eosio_assert
       (i64.eq
        (get_local $12)
        (i64.const 1397703940)
       )
       (i32.const 704)
      )
      (set_local $7
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (block $label$15
       (block $label$16
        (br_if $label$16
         (i32.eq
          (tee_local $9
           (i32.load
            (i32.add
             (get_local $0)
             (i32.const 36)
            )
           )
          )
          (i32.load
           (i32.add
            (get_local $0)
            (i32.const 32)
           )
          )
         )
        )
        (call $eosio_assert
         (i32.eq
          (i32.load offset=16
           (tee_local $9
            (i32.load
             (i32.add
              (get_local $9)
              (i32.const -24)
             )
            )
           )
          )
          (get_local $7)
         )
         (i32.const 32)
        )
        (br $label$15)
       )
       (set_local $9
        (i32.const 0)
       )
       (br_if $label$15
        (i32.lt_s
         (tee_local $5
          (call $db_find_i64
           (i64.load
            (get_local $7)
           )
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (i64.const 7235159537265672192)
           (i64.const 7235159537265672192)
          )
         )
         (i32.const 0)
        )
       )
       (call $eosio_assert
        (i32.eq
         (i32.load offset=16
          (tee_local $9
           (call $_ZNK5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE31load_object_by_primary_iteratorEl
            (get_local $7)
            (get_local $5)
           )
          )
         )
         (get_local $7)
        )
        (i32.const 32)
       )
      )
      (call $eosio_assert
       (i32.ne
        (get_local $9)
        (i32.const 0)
       )
       (i32.const 528)
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $14)
         (i32.const 128)
        )
        (i32.const 8)
       )
       (tee_local $2
        (i64.load
         (i32.add
          (get_local $9)
          (i32.const 8)
         )
        )
       )
      )
      (i64.store offset=128
       (get_local $14)
       (i64.load
        (get_local $9)
       )
      )
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (block $label$21
           (block $label$22
            (block $label$23
             (block $label$24
              (block $label$25
               (block $label$26
                (block $label$27
                 (block $label$28
                  (block $label$29
                   (block $label$30
                    (block $label$31
                     (block $label$32
                      (block $label$33
                       (block $label$34
                        (br_if $label$34
                         (i64.gt_u
                          (get_local $2)
                          (i64.const 30000000)
                         )
                        )
                        (br_if $label$33
                         (i64.gt_u
                          (tee_local $12
                           (i64.add
                            (get_local $6)
                            (get_local $2)
                           )
                          )
                          (i64.const 30000000)
                         )
                        )
                        (set_local $6
                         (i64.mul
                          (get_local $6)
                          (i64.const 3736)
                         )
                        )
                        (br $label$32)
                       )
                       (br_if $label$31
                        (i64.gt_u
                         (get_local $2)
                         (i64.const 80000000)
                        )
                       )
                       (br_if $label$25
                        (i64.gt_u
                         (tee_local $12
                          (i64.add
                           (get_local $6)
                           (get_local $2)
                          )
                         )
                         (i64.const 80000000)
                        )
                       )
                       (set_local $6
                        (i64.mul
                         (get_local $6)
                         (i64.const 3346)
                        )
                       )
                       (br $label$24)
                      )
                      (set_local $6
                       (i64.add
                        (i64.add
                         (i64.mul
                          (i64.sub
                           (i64.const 30000000)
                           (get_local $2)
                          )
                          (i64.const 3736)
                         )
                         (i64.mul
                          (get_local $12)
                          (i64.const 3346)
                         )
                        )
                        (i64.const -100380000000)
                       )
                      )
                     )
                     (set_local $13
                      (i64.load
                       (get_local $0)
                      )
                     )
                     (set_local $2
                      (i64.const 0)
                     )
                     (set_local $10
                      (i64.const 59)
                     )
                     (set_local $9
                      (i32.const 560)
                     )
                     (set_local $11
                      (i64.const 0)
                     )
                     (loop $label$35
                      (block $label$36
                       (block $label$37
                        (block $label$38
                         (block $label$39
                          (block $label$40
                           (br_if $label$40
                            (i64.gt_u
                             (get_local $2)
                             (i64.const 5)
                            )
                           )
                           (br_if $label$39
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $9)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$38)
                          )
                          (set_local $12
                           (i64.const 0)
                          )
                          (br_if $label$37
                           (i64.le_u
                            (get_local $2)
                            (i64.const 11)
                           )
                          )
                          (br $label$36)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $12
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $12
                        (i64.shl
                         (i64.and
                          (get_local $12)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $10)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $9
                       (i32.add
                        (get_local $9)
                        (i32.const 1)
                       )
                      )
                      (set_local $2
                       (i64.add
                        (get_local $2)
                        (i64.const 1)
                       )
                      )
                      (set_local $11
                       (i64.or
                        (get_local $12)
                        (get_local $11)
                       )
                      )
                      (br_if $label$35
                       (i64.ne
                        (tee_local $10
                         (i64.add
                          (get_local $10)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (i64.store offset=80
                      (get_local $14)
                      (get_local $11)
                     )
                     (i64.store offset=72
                      (get_local $14)
                      (get_local $13)
                     )
                     (set_local $2
                      (i64.const 0)
                     )
                     (set_local $12
                      (i64.const 59)
                     )
                     (set_local $9
                      (i32.const 576)
                     )
                     (set_local $11
                      (i64.const 0)
                     )
                     (loop $label$41
                      (set_local $10
                       (i64.const 0)
                      )
                      (block $label$42
                       (br_if $label$42
                        (i64.gt_u
                         (get_local $2)
                         (i64.const 11)
                        )
                       )
                       (block $label$43
                        (block $label$44
                         (br_if $label$44
                          (i32.gt_u
                           (i32.and
                            (i32.add
                             (tee_local $5
                              (i32.load8_s
                               (get_local $9)
                              )
                             )
                             (i32.const -97)
                            )
                            (i32.const 255)
                           )
                           (i32.const 25)
                          )
                         )
                         (set_local $5
                          (i32.add
                           (get_local $5)
                           (i32.const 165)
                          )
                         )
                         (br $label$43)
                        )
                        (set_local $5
                         (select
                          (i32.add
                           (get_local $5)
                           (i32.const 208)
                          )
                          (i32.const 0)
                          (i32.lt_u
                           (i32.and
                            (i32.add
                             (get_local $5)
                             (i32.const -49)
                            )
                            (i32.const 255)
                           )
                           (i32.const 5)
                          )
                         )
                        )
                       )
                       (set_local $10
                        (i64.shl
                         (i64.extend_u/i32
                          (i32.and
                           (get_local $5)
                           (i32.const 31)
                          )
                         )
                         (i64.and
                          (get_local $12)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $9
                       (i32.add
                        (get_local $9)
                        (i32.const 1)
                       )
                      )
                      (set_local $2
                       (i64.add
                        (get_local $2)
                        (i64.const 1)
                       )
                      )
                      (set_local $11
                       (i64.or
                        (get_local $10)
                        (get_local $11)
                       )
                      )
                      (br_if $label$41
                       (i64.ne
                        (tee_local $12
                         (i64.add
                          (get_local $12)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (set_local $2
                      (i64.const 0)
                     )
                     (set_local $10
                      (i64.const 59)
                     )
                     (set_local $9
                      (i32.const 16)
                     )
                     (set_local $13
                      (i64.const 0)
                     )
                     (loop $label$45
                      (block $label$46
                       (block $label$47
                        (block $label$48
                         (block $label$49
                          (block $label$50
                           (br_if $label$50
                            (i64.gt_u
                             (get_local $2)
                             (i64.const 7)
                            )
                           )
                           (br_if $label$49
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $9)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$48)
                          )
                          (set_local $12
                           (i64.const 0)
                          )
                          (br_if $label$47
                           (i64.le_u
                            (get_local $2)
                            (i64.const 11)
                           )
                          )
                          (br $label$46)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $12
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $12
                        (i64.shl
                         (i64.and
                          (get_local $12)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $10)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $9
                       (i32.add
                        (get_local $9)
                        (i32.const 1)
                       )
                      )
                      (set_local $2
                       (i64.add
                        (get_local $2)
                        (i64.const 1)
                       )
                      )
                      (set_local $13
                       (i64.or
                        (get_local $12)
                        (get_local $13)
                       )
                      )
                      (br_if $label$45
                       (i64.ne
                        (tee_local $10
                         (i64.add
                          (get_local $10)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (call $eosio_assert
                      (i64.lt_u
                       (i64.add
                        (get_local $6)
                        (i64.const 4611686018427387903)
                       )
                       (i64.const 9223372036854775807)
                      )
                      (i32.const 640)
                     )
                     (set_local $2
                      (i64.const 5133379)
                     )
                     (set_local $9
                      (i32.const 0)
                     )
                     (block $label$51
                      (block $label$52
                       (loop $label$53
                        (br_if $label$52
                         (i32.gt_u
                          (i32.add
                           (i32.shl
                            (i32.wrap/i64
                             (get_local $2)
                            )
                            (i32.const 24)
                           )
                           (i32.const -1073741825)
                          )
                          (i32.const 452984830)
                         )
                        )
                        (block $label$54
                         (br_if $label$54
                          (i64.ne
                           (i64.and
                            (tee_local $2
                             (i64.shr_u
                              (get_local $2)
                              (i64.const 8)
                             )
                            )
                            (i64.const 255)
                           )
                           (i64.const 0)
                          )
                         )
                         (loop $label$55
                          (br_if $label$52
                           (i64.ne
                            (i64.and
                             (tee_local $2
                              (i64.shr_u
                               (get_local $2)
                               (i64.const 8)
                              )
                             )
                             (i64.const 255)
                            )
                            (i64.const 0)
                           )
                          )
                          (br_if $label$55
                           (i32.lt_s
                            (tee_local $9
                             (i32.add
                              (get_local $9)
                              (i32.const 1)
                             )
                            )
                            (i32.const 7)
                           )
                          )
                         )
                        )
                        (set_local $5
                         (i32.const 1)
                        )
                        (br_if $label$53
                         (i32.lt_s
                          (tee_local $9
                           (i32.add
                            (get_local $9)
                            (i32.const 1)
                           )
                          )
                          (i32.const 7)
                         )
                        )
                        (br $label$51)
                       )
                      )
                      (set_local $5
                       (i32.const 0)
                      )
                     )
                     (call $eosio_assert
                      (get_local $5)
                      (i32.const 592)
                     )
                     (i32.store
                      (i32.add
                       (get_local $14)
                       (i32.const 16)
                      )
                      (i32.const 0)
                     )
                     (i64.store offset=8
                      (get_local $14)
                      (i64.const 0)
                     )
                     (br_if $label$2
                      (i32.ge_u
                       (tee_local $9
                        (call $strlen
                         (i32.const 624)
                        )
                       )
                       (i32.const -16)
                      )
                     )
                     (br_if $label$30
                      (i32.ge_u
                       (get_local $9)
                       (i32.const 11)
                      )
                     )
                     (i32.store8 offset=8
                      (get_local $14)
                      (i32.shl
                       (get_local $9)
                       (i32.const 1)
                      )
                     )
                     (set_local $5
                      (i32.or
                       (i32.add
                        (get_local $14)
                        (i32.const 8)
                       )
                       (i32.const 1)
                      )
                     )
                     (br_if $label$29
                      (get_local $9)
                     )
                     (br $label$28)
                    )
                    (set_local $13
                     (i64.load
                      (get_local $0)
                     )
                    )
                    (set_local $2
                     (i64.const 0)
                    )
                    (set_local $10
                     (i64.const 59)
                    )
                    (set_local $9
                     (i32.const 560)
                    )
                    (set_local $11
                     (i64.const 0)
                    )
                    (loop $label$56
                     (block $label$57
                      (block $label$58
                       (block $label$59
                        (block $label$60
                         (block $label$61
                          (br_if $label$61
                           (i64.gt_u
                            (get_local $2)
                            (i64.const 5)
                           )
                          )
                          (br_if $label$60
                           (i32.gt_u
                            (i32.and
                             (i32.add
                              (tee_local $5
                               (i32.load8_s
                                (get_local $9)
                               )
                              )
                              (i32.const -97)
                             )
                             (i32.const 255)
                            )
                            (i32.const 25)
                           )
                          )
                          (set_local $5
                           (i32.add
                            (get_local $5)
                            (i32.const 165)
                           )
                          )
                          (br $label$59)
                         )
                         (set_local $12
                          (i64.const 0)
                         )
                         (br_if $label$58
                          (i64.le_u
                           (get_local $2)
                           (i64.const 11)
                          )
                         )
                         (br $label$57)
                        )
                        (set_local $5
                         (select
                          (i32.add
                           (get_local $5)
                           (i32.const 208)
                          )
                          (i32.const 0)
                          (i32.lt_u
                           (i32.and
                            (i32.add
                             (get_local $5)
                             (i32.const -49)
                            )
                            (i32.const 255)
                           )
                           (i32.const 5)
                          )
                         )
                        )
                       )
                       (set_local $12
                        (i64.shr_s
                         (i64.shl
                          (i64.extend_u/i32
                           (get_local $5)
                          )
                          (i64.const 56)
                         )
                         (i64.const 56)
                        )
                       )
                      )
                      (set_local $12
                       (i64.shl
                        (i64.and
                         (get_local $12)
                         (i64.const 31)
                        )
                        (i64.and
                         (get_local $10)
                         (i64.const 4294967295)
                        )
                       )
                      )
                     )
                     (set_local $9
                      (i32.add
                       (get_local $9)
                       (i32.const 1)
                      )
                     )
                     (set_local $2
                      (i64.add
                       (get_local $2)
                       (i64.const 1)
                      )
                     )
                     (set_local $11
                      (i64.or
                       (get_local $12)
                       (get_local $11)
                      )
                     )
                     (br_if $label$56
                      (i64.ne
                       (tee_local $10
                        (i64.add
                         (get_local $10)
                         (i64.const -5)
                        )
                       )
                       (i64.const -6)
                      )
                     )
                    )
                    (i64.store offset=80
                     (get_local $14)
                     (get_local $11)
                    )
                    (i64.store offset=72
                     (get_local $14)
                     (get_local $13)
                    )
                    (set_local $2
                     (i64.const 0)
                    )
                    (set_local $12
                     (i64.const 59)
                    )
                    (set_local $9
                     (i32.const 576)
                    )
                    (set_local $11
                     (i64.const 0)
                    )
                    (loop $label$62
                     (set_local $10
                      (i64.const 0)
                     )
                     (block $label$63
                      (br_if $label$63
                       (i64.gt_u
                        (get_local $2)
                        (i64.const 11)
                       )
                      )
                      (block $label$64
                       (block $label$65
                        (br_if $label$65
                         (i32.gt_u
                          (i32.and
                           (i32.add
                            (tee_local $5
                             (i32.load8_s
                              (get_local $9)
                             )
                            )
                            (i32.const -97)
                           )
                           (i32.const 255)
                          )
                          (i32.const 25)
                         )
                        )
                        (set_local $5
                         (i32.add
                          (get_local $5)
                          (i32.const 165)
                         )
                        )
                        (br $label$64)
                       )
                       (set_local $5
                        (select
                         (i32.add
                          (get_local $5)
                          (i32.const 208)
                         )
                         (i32.const 0)
                         (i32.lt_u
                          (i32.and
                           (i32.add
                            (get_local $5)
                            (i32.const -49)
                           )
                           (i32.const 255)
                          )
                          (i32.const 5)
                         )
                        )
                       )
                      )
                      (set_local $10
                       (i64.shl
                        (i64.extend_u/i32
                         (i32.and
                          (get_local $5)
                          (i32.const 31)
                         )
                        )
                        (i64.and
                         (get_local $12)
                         (i64.const 4294967295)
                        )
                       )
                      )
                     )
                     (set_local $9
                      (i32.add
                       (get_local $9)
                       (i32.const 1)
                      )
                     )
                     (set_local $2
                      (i64.add
                       (get_local $2)
                       (i64.const 1)
                      )
                     )
                     (set_local $11
                      (i64.or
                       (get_local $10)
                       (get_local $11)
                      )
                     )
                     (br_if $label$62
                      (i64.ne
                       (tee_local $12
                        (i64.add
                         (get_local $12)
                         (i64.const -5)
                        )
                       )
                       (i64.const -6)
                      )
                     )
                    )
                    (set_local $2
                     (i64.const 0)
                    )
                    (set_local $10
                     (i64.const 59)
                    )
                    (set_local $9
                     (i32.const 16)
                    )
                    (set_local $13
                     (i64.const 0)
                    )
                    (loop $label$66
                     (block $label$67
                      (block $label$68
                       (block $label$69
                        (block $label$70
                         (block $label$71
                          (br_if $label$71
                           (i64.gt_u
                            (get_local $2)
                            (i64.const 7)
                           )
                          )
                          (br_if $label$70
                           (i32.gt_u
                            (i32.and
                             (i32.add
                              (tee_local $5
                               (i32.load8_s
                                (get_local $9)
                               )
                              )
                              (i32.const -97)
                             )
                             (i32.const 255)
                            )
                            (i32.const 25)
                           )
                          )
                          (set_local $5
                           (i32.add
                            (get_local $5)
                            (i32.const 165)
                           )
                          )
                          (br $label$69)
                         )
                         (set_local $12
                          (i64.const 0)
                         )
                         (br_if $label$68
                          (i64.le_u
                           (get_local $2)
                           (i64.const 11)
                          )
                         )
                         (br $label$67)
                        )
                        (set_local $5
                         (select
                          (i32.add
                           (get_local $5)
                           (i32.const 208)
                          )
                          (i32.const 0)
                          (i32.lt_u
                           (i32.and
                            (i32.add
                             (get_local $5)
                             (i32.const -49)
                            )
                            (i32.const 255)
                           )
                           (i32.const 5)
                          )
                         )
                        )
                       )
                       (set_local $12
                        (i64.shr_s
                         (i64.shl
                          (i64.extend_u/i32
                           (get_local $5)
                          )
                          (i64.const 56)
                         )
                         (i64.const 56)
                        )
                       )
                      )
                      (set_local $12
                       (i64.shl
                        (i64.and
                         (get_local $12)
                         (i64.const 31)
                        )
                        (i64.and
                         (get_local $10)
                         (i64.const 4294967295)
                        )
                       )
                      )
                     )
                     (set_local $9
                      (i32.add
                       (get_local $9)
                       (i32.const 1)
                      )
                     )
                     (set_local $2
                      (i64.add
                       (get_local $2)
                       (i64.const 1)
                      )
                     )
                     (set_local $13
                      (i64.or
                       (get_local $12)
                       (get_local $13)
                      )
                     )
                     (br_if $label$66
                      (i64.ne
                       (tee_local $10
                        (i64.add
                         (get_local $10)
                         (i64.const -5)
                        )
                       )
                       (i64.const -6)
                      )
                     )
                    )
                    (call $eosio_assert
                     (i64.lt_u
                      (i64.add
                       (tee_local $12
                        (i64.mul
                         (get_local $6)
                         (i64.const 3066)
                        )
                       )
                       (i64.const 4611686018427387903)
                      )
                      (i64.const 9223372036854775807)
                     )
                     (i32.const 640)
                    )
                    (set_local $2
                     (i64.const 5133379)
                    )
                    (set_local $9
                     (i32.const 0)
                    )
                    (loop $label$72
                     (br_if $label$27
                      (i32.gt_u
                       (i32.add
                        (i32.shl
                         (i32.wrap/i64
                          (get_local $2)
                         )
                         (i32.const 24)
                        )
                        (i32.const -1073741825)
                       )
                       (i32.const 452984830)
                      )
                     )
                     (block $label$73
                      (br_if $label$73
                       (i64.ne
                        (i64.and
                         (tee_local $2
                          (i64.shr_u
                           (get_local $2)
                           (i64.const 8)
                          )
                         )
                         (i64.const 255)
                        )
                        (i64.const 0)
                       )
                      )
                      (loop $label$74
                       (br_if $label$27
                        (i64.ne
                         (i64.and
                          (tee_local $2
                           (i64.shr_u
                            (get_local $2)
                            (i64.const 8)
                           )
                          )
                          (i64.const 255)
                         )
                         (i64.const 0)
                        )
                       )
                       (br_if $label$74
                        (i32.lt_s
                         (tee_local $9
                          (i32.add
                           (get_local $9)
                           (i32.const 1)
                          )
                         )
                         (i32.const 7)
                        )
                       )
                      )
                     )
                     (set_local $5
                      (i32.const 1)
                     )
                     (br_if $label$72
                      (i32.lt_s
                       (tee_local $9
                        (i32.add
                         (get_local $9)
                         (i32.const 1)
                        )
                       )
                       (i32.const 7)
                      )
                     )
                     (br $label$26)
                    )
                   )
                   (set_local $5
                    (call $_Znwj
                     (tee_local $8
                      (i32.and
                       (i32.add
                        (get_local $9)
                        (i32.const 16)
                       )
                       (i32.const -16)
                      )
                     )
                    )
                   )
                   (i32.store offset=8
                    (get_local $14)
                    (i32.or
                     (get_local $8)
                     (i32.const 1)
                    )
                   )
                   (i32.store offset=16
                    (get_local $14)
                    (get_local $5)
                   )
                   (i32.store offset=12
                    (get_local $14)
                    (get_local $9)
                   )
                  )
                  (drop
                   (call $memcpy
                    (get_local $5)
                    (i32.const 624)
                    (get_local $9)
                   )
                  )
                 )
                 (i32.store8
                  (i32.add
                   (get_local $5)
                   (get_local $9)
                  )
                  (i32.const 0)
                 )
                 (i64.store
                  (i32.add
                   (get_local $14)
                   (i32.const 48)
                  )
                  (i64.const 1314145028)
                 )
                 (i32.store
                  (i32.add
                   (get_local $14)
                   (i32.const 60)
                  )
                  (i32.load offset=12
                   (get_local $14)
                  )
                 )
                 (i64.store offset=32
                  (get_local $14)
                  (get_local $1)
                 )
                 (i32.store
                  (i32.add
                   (get_local $14)
                   (i32.const 64)
                  )
                  (i32.load
                   (tee_local $9
                    (i32.add
                     (get_local $14)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                 (i64.store offset=24
                  (get_local $14)
                  (i64.load
                   (get_local $0)
                  )
                 )
                 (i64.store offset=40
                  (get_local $14)
                  (get_local $6)
                 )
                 (i32.store offset=56
                  (get_local $14)
                  (i32.load offset=8
                   (get_local $14)
                  )
                 )
                 (i32.store offset=8
                  (get_local $14)
                  (i32.const 0)
                 )
                 (i32.store offset=12
                  (get_local $14)
                  (i32.const 0)
                 )
                 (i32.store
                  (get_local $9)
                  (i32.const 0)
                 )
                 (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
                  (i32.add
                   (get_local $14)
                   (i32.const 144)
                  )
                  (tee_local $9
                   (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
                    (i32.add
                     (get_local $14)
                     (i32.const 88)
                    )
                    (i32.add
                     (get_local $14)
                     (i32.const 72)
                    )
                    (get_local $11)
                    (get_local $13)
                    (i32.add
                     (get_local $14)
                     (i32.const 24)
                    )
                   )
                  )
                 )
                 (call $send_inline
                  (tee_local $5
                   (i32.load offset=144
                    (get_local $14)
                   )
                  )
                  (i32.sub
                   (i32.load offset=148
                    (get_local $14)
                   )
                   (get_local $5)
                  )
                 )
                 (block $label$75
                  (br_if $label$75
                   (i32.eqz
                    (tee_local $5
                     (i32.load offset=144
                      (get_local $14)
                     )
                    )
                   )
                  )
                  (i32.store offset=148
                   (get_local $14)
                   (get_local $5)
                  )
                  (call $_ZdlPv
                   (get_local $5)
                  )
                 )
                 (block $label$76
                  (br_if $label$76
                   (i32.eqz
                    (tee_local $5
                     (i32.load offset=28
                      (get_local $9)
                     )
                    )
                   )
                  )
                  (i32.store
                   (i32.add
                    (get_local $9)
                    (i32.const 32)
                   )
                   (get_local $5)
                  )
                  (call $_ZdlPv
                   (get_local $5)
                  )
                 )
                 (block $label$77
                  (br_if $label$77
                   (i32.eqz
                    (tee_local $5
                     (i32.load offset=16
                      (get_local $9)
                     )
                    )
                   )
                  )
                  (i32.store
                   (i32.add
                    (get_local $9)
                    (i32.const 20)
                   )
                   (get_local $5)
                  )
                  (call $_ZdlPv
                   (get_local $5)
                  )
                 )
                 (block $label$78
                  (br_if $label$78
                   (i32.eqz
                    (i32.and
                     (i32.load8_u
                      (i32.add
                       (get_local $14)
                       (i32.const 56)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (call $_ZdlPv
                   (i32.load
                    (i32.add
                     (get_local $14)
                     (i32.const 64)
                    )
                   )
                  )
                 )
                 (br_if $label$17
                  (i32.eqz
                   (i32.and
                    (i32.load8_u offset=8
                     (get_local $14)
                    )
                    (i32.const 1)
                   )
                  )
                 )
                 (call $_ZdlPv
                  (i32.load
                   (i32.add
                    (get_local $14)
                    (i32.const 16)
                   )
                  )
                 )
                 (br $label$17)
                )
                (set_local $5
                 (i32.const 0)
                )
               )
               (call $eosio_assert
                (get_local $5)
                (i32.const 592)
               )
               (i32.store
                (i32.add
                 (get_local $14)
                 (i32.const 16)
                )
                (i32.const 0)
               )
               (i64.store offset=8
                (get_local $14)
                (i64.const 0)
               )
               (br_if $label$1
                (i32.ge_u
                 (tee_local $9
                  (call $strlen
                   (i32.const 624)
                  )
                 )
                 (i32.const -16)
                )
               )
               (br_if $label$23
                (i32.ge_u
                 (get_local $9)
                 (i32.const 11)
                )
               )
               (i32.store8 offset=8
                (get_local $14)
                (i32.shl
                 (get_local $9)
                 (i32.const 1)
                )
               )
               (set_local $5
                (i32.or
                 (i32.add
                  (get_local $14)
                  (i32.const 8)
                 )
                 (i32.const 1)
                )
               )
               (br_if $label$22
                (get_local $9)
               )
               (br $label$21)
              )
              (set_local $6
               (i64.add
                (i64.add
                 (i64.mul
                  (i64.sub
                   (i64.const 80000000)
                   (get_local $2)
                  )
                  (i64.const 3346)
                 )
                 (i64.mul
                  (get_local $12)
                  (i64.const 3066)
                 )
                )
                (i64.const -245280000000)
               )
              )
             )
             (set_local $13
              (i64.load
               (get_local $0)
              )
             )
             (set_local $2
              (i64.const 0)
             )
             (set_local $10
              (i64.const 59)
             )
             (set_local $9
              (i32.const 560)
             )
             (set_local $11
              (i64.const 0)
             )
             (loop $label$79
              (block $label$80
               (block $label$81
                (block $label$82
                 (block $label$83
                  (block $label$84
                   (br_if $label$84
                    (i64.gt_u
                     (get_local $2)
                     (i64.const 5)
                    )
                   )
                   (br_if $label$83
                    (i32.gt_u
                     (i32.and
                      (i32.add
                       (tee_local $5
                        (i32.load8_s
                         (get_local $9)
                        )
                       )
                       (i32.const -97)
                      )
                      (i32.const 255)
                     )
                     (i32.const 25)
                    )
                   )
                   (set_local $5
                    (i32.add
                     (get_local $5)
                     (i32.const 165)
                    )
                   )
                   (br $label$82)
                  )
                  (set_local $12
                   (i64.const 0)
                  )
                  (br_if $label$81
                   (i64.le_u
                    (get_local $2)
                    (i64.const 11)
                   )
                  )
                  (br $label$80)
                 )
                 (set_local $5
                  (select
                   (i32.add
                    (get_local $5)
                    (i32.const 208)
                   )
                   (i32.const 0)
                   (i32.lt_u
                    (i32.and
                     (i32.add
                      (get_local $5)
                      (i32.const -49)
                     )
                     (i32.const 255)
                    )
                    (i32.const 5)
                   )
                  )
                 )
                )
                (set_local $12
                 (i64.shr_s
                  (i64.shl
                   (i64.extend_u/i32
                    (get_local $5)
                   )
                   (i64.const 56)
                  )
                  (i64.const 56)
                 )
                )
               )
               (set_local $12
                (i64.shl
                 (i64.and
                  (get_local $12)
                  (i64.const 31)
                 )
                 (i64.and
                  (get_local $10)
                  (i64.const 4294967295)
                 )
                )
               )
              )
              (set_local $9
               (i32.add
                (get_local $9)
                (i32.const 1)
               )
              )
              (set_local $2
               (i64.add
                (get_local $2)
                (i64.const 1)
               )
              )
              (set_local $11
               (i64.or
                (get_local $12)
                (get_local $11)
               )
              )
              (br_if $label$79
               (i64.ne
                (tee_local $10
                 (i64.add
                  (get_local $10)
                  (i64.const -5)
                 )
                )
                (i64.const -6)
               )
              )
             )
             (i64.store offset=80
              (get_local $14)
              (get_local $11)
             )
             (i64.store offset=72
              (get_local $14)
              (get_local $13)
             )
             (set_local $2
              (i64.const 0)
             )
             (set_local $12
              (i64.const 59)
             )
             (set_local $9
              (i32.const 576)
             )
             (set_local $11
              (i64.const 0)
             )
             (loop $label$85
              (set_local $10
               (i64.const 0)
              )
              (block $label$86
               (br_if $label$86
                (i64.gt_u
                 (get_local $2)
                 (i64.const 11)
                )
               )
               (block $label$87
                (block $label$88
                 (br_if $label$88
                  (i32.gt_u
                   (i32.and
                    (i32.add
                     (tee_local $5
                      (i32.load8_s
                       (get_local $9)
                      )
                     )
                     (i32.const -97)
                    )
                    (i32.const 255)
                   )
                   (i32.const 25)
                  )
                 )
                 (set_local $5
                  (i32.add
                   (get_local $5)
                   (i32.const 165)
                  )
                 )
                 (br $label$87)
                )
                (set_local $5
                 (select
                  (i32.add
                   (get_local $5)
                   (i32.const 208)
                  )
                  (i32.const 0)
                  (i32.lt_u
                   (i32.and
                    (i32.add
                     (get_local $5)
                     (i32.const -49)
                    )
                    (i32.const 255)
                   )
                   (i32.const 5)
                  )
                 )
                )
               )
               (set_local $10
                (i64.shl
                 (i64.extend_u/i32
                  (i32.and
                   (get_local $5)
                   (i32.const 31)
                  )
                 )
                 (i64.and
                  (get_local $12)
                  (i64.const 4294967295)
                 )
                )
               )
              )
              (set_local $9
               (i32.add
                (get_local $9)
                (i32.const 1)
               )
              )
              (set_local $2
               (i64.add
                (get_local $2)
                (i64.const 1)
               )
              )
              (set_local $11
               (i64.or
                (get_local $10)
                (get_local $11)
               )
              )
              (br_if $label$85
               (i64.ne
                (tee_local $12
                 (i64.add
                  (get_local $12)
                  (i64.const -5)
                 )
                )
                (i64.const -6)
               )
              )
             )
             (set_local $2
              (i64.const 0)
             )
             (set_local $10
              (i64.const 59)
             )
             (set_local $9
              (i32.const 16)
             )
             (set_local $13
              (i64.const 0)
             )
             (loop $label$89
              (block $label$90
               (block $label$91
                (block $label$92
                 (block $label$93
                  (block $label$94
                   (br_if $label$94
                    (i64.gt_u
                     (get_local $2)
                     (i64.const 7)
                    )
                   )
                   (br_if $label$93
                    (i32.gt_u
                     (i32.and
                      (i32.add
                       (tee_local $5
                        (i32.load8_s
                         (get_local $9)
                        )
                       )
                       (i32.const -97)
                      )
                      (i32.const 255)
                     )
                     (i32.const 25)
                    )
                   )
                   (set_local $5
                    (i32.add
                     (get_local $5)
                     (i32.const 165)
                    )
                   )
                   (br $label$92)
                  )
                  (set_local $12
                   (i64.const 0)
                  )
                  (br_if $label$91
                   (i64.le_u
                    (get_local $2)
                    (i64.const 11)
                   )
                  )
                  (br $label$90)
                 )
                 (set_local $5
                  (select
                   (i32.add
                    (get_local $5)
                    (i32.const 208)
                   )
                   (i32.const 0)
                   (i32.lt_u
                    (i32.and
                     (i32.add
                      (get_local $5)
                      (i32.const -49)
                     )
                     (i32.const 255)
                    )
                    (i32.const 5)
                   )
                  )
                 )
                )
                (set_local $12
                 (i64.shr_s
                  (i64.shl
                   (i64.extend_u/i32
                    (get_local $5)
                   )
                   (i64.const 56)
                  )
                  (i64.const 56)
                 )
                )
               )
               (set_local $12
                (i64.shl
                 (i64.and
                  (get_local $12)
                  (i64.const 31)
                 )
                 (i64.and
                  (get_local $10)
                  (i64.const 4294967295)
                 )
                )
               )
              )
              (set_local $9
               (i32.add
                (get_local $9)
                (i32.const 1)
               )
              )
              (set_local $2
               (i64.add
                (get_local $2)
                (i64.const 1)
               )
              )
              (set_local $13
               (i64.or
                (get_local $12)
                (get_local $13)
               )
              )
              (br_if $label$89
               (i64.ne
                (tee_local $10
                 (i64.add
                  (get_local $10)
                  (i64.const -5)
                 )
                )
                (i64.const -6)
               )
              )
             )
             (call $eosio_assert
              (i64.lt_u
               (i64.add
                (get_local $6)
                (i64.const 4611686018427387903)
               )
               (i64.const 9223372036854775807)
              )
              (i32.const 640)
             )
             (set_local $2
              (i64.const 5133379)
             )
             (set_local $9
              (i32.const 0)
             )
             (block $label$95
              (block $label$96
               (loop $label$97
                (br_if $label$96
                 (i32.gt_u
                  (i32.add
                   (i32.shl
                    (i32.wrap/i64
                     (get_local $2)
                    )
                    (i32.const 24)
                   )
                   (i32.const -1073741825)
                  )
                  (i32.const 452984830)
                 )
                )
                (block $label$98
                 (br_if $label$98
                  (i64.ne
                   (i64.and
                    (tee_local $2
                     (i64.shr_u
                      (get_local $2)
                      (i64.const 8)
                     )
                    )
                    (i64.const 255)
                   )
                   (i64.const 0)
                  )
                 )
                 (loop $label$99
                  (br_if $label$96
                   (i64.ne
                    (i64.and
                     (tee_local $2
                      (i64.shr_u
                       (get_local $2)
                       (i64.const 8)
                      )
                     )
                     (i64.const 255)
                    )
                    (i64.const 0)
                   )
                  )
                  (br_if $label$99
                   (i32.lt_s
                    (tee_local $9
                     (i32.add
                      (get_local $9)
                      (i32.const 1)
                     )
                    )
                    (i32.const 7)
                   )
                  )
                 )
                )
                (set_local $5
                 (i32.const 1)
                )
                (br_if $label$97
                 (i32.lt_s
                  (tee_local $9
                   (i32.add
                    (get_local $9)
                    (i32.const 1)
                   )
                  )
                  (i32.const 7)
                 )
                )
                (br $label$95)
               )
              )
              (set_local $5
               (i32.const 0)
              )
             )
             (call $eosio_assert
              (get_local $5)
              (i32.const 592)
             )
             (i32.store
              (i32.add
               (get_local $14)
               (i32.const 16)
              )
              (i32.const 0)
             )
             (i64.store offset=8
              (get_local $14)
              (i64.const 0)
             )
             (br_if $label$0
              (i32.ge_u
               (tee_local $9
                (call $strlen
                 (i32.const 624)
                )
               )
               (i32.const -16)
              )
             )
             (br_if $label$20
              (i32.ge_u
               (get_local $9)
               (i32.const 11)
              )
             )
             (i32.store8 offset=8
              (get_local $14)
              (i32.shl
               (get_local $9)
               (i32.const 1)
              )
             )
             (set_local $5
              (i32.or
               (i32.add
                (get_local $14)
                (i32.const 8)
               )
               (i32.const 1)
              )
             )
             (br_if $label$19
              (get_local $9)
             )
             (br $label$18)
            )
            (set_local $5
             (call $_Znwj
              (tee_local $8
               (i32.and
                (i32.add
                 (get_local $9)
                 (i32.const 16)
                )
                (i32.const -16)
               )
              )
             )
            )
            (i32.store offset=8
             (get_local $14)
             (i32.or
              (get_local $8)
              (i32.const 1)
             )
            )
            (i32.store offset=16
             (get_local $14)
             (get_local $5)
            )
            (i32.store offset=12
             (get_local $14)
             (get_local $9)
            )
           )
           (drop
            (call $memcpy
             (get_local $5)
             (i32.const 624)
             (get_local $9)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $5)
            (get_local $9)
           )
           (i32.const 0)
          )
          (i64.store
           (i32.add
            (get_local $14)
            (i32.const 48)
           )
           (i64.const 1314145028)
          )
          (i32.store
           (i32.add
            (get_local $14)
            (i32.const 60)
           )
           (i32.load offset=12
            (get_local $14)
           )
          )
          (i64.store offset=32
           (get_local $14)
           (get_local $1)
          )
          (i32.store
           (i32.add
            (get_local $14)
            (i32.const 64)
           )
           (i32.load
            (tee_local $9
             (i32.add
              (get_local $14)
              (i32.const 16)
             )
            )
           )
          )
          (i64.store offset=24
           (get_local $14)
           (i64.load
            (get_local $0)
           )
          )
          (i64.store offset=40
           (get_local $14)
           (get_local $12)
          )
          (i32.store offset=56
           (get_local $14)
           (i32.load offset=8
            (get_local $14)
           )
          )
          (i32.store offset=8
           (get_local $14)
           (i32.const 0)
          )
          (i32.store offset=12
           (get_local $14)
           (i32.const 0)
          )
          (i32.store
           (get_local $9)
           (i32.const 0)
          )
          (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
           (i32.add
            (get_local $14)
            (i32.const 144)
           )
           (tee_local $9
            (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
             (i32.add
              (get_local $14)
              (i32.const 88)
             )
             (i32.add
              (get_local $14)
              (i32.const 72)
             )
             (get_local $11)
             (get_local $13)
             (i32.add
              (get_local $14)
              (i32.const 24)
             )
            )
           )
          )
          (call $send_inline
           (tee_local $5
            (i32.load offset=144
             (get_local $14)
            )
           )
           (i32.sub
            (i32.load offset=148
             (get_local $14)
            )
            (get_local $5)
           )
          )
          (block $label$100
           (br_if $label$100
            (i32.eqz
             (tee_local $5
              (i32.load offset=144
               (get_local $14)
              )
             )
            )
           )
           (i32.store offset=148
            (get_local $14)
            (get_local $5)
           )
           (call $_ZdlPv
            (get_local $5)
           )
          )
          (block $label$101
           (br_if $label$101
            (i32.eqz
             (tee_local $5
              (i32.load offset=28
               (get_local $9)
              )
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $9)
             (i32.const 32)
            )
            (get_local $5)
           )
           (call $_ZdlPv
            (get_local $5)
           )
          )
          (block $label$102
           (br_if $label$102
            (i32.eqz
             (tee_local $5
              (i32.load offset=16
               (get_local $9)
              )
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $9)
             (i32.const 20)
            )
            (get_local $5)
           )
           (call $_ZdlPv
            (get_local $5)
           )
          )
          (block $label$103
           (br_if $label$103
            (i32.eqz
             (i32.and
              (i32.load8_u
               (i32.add
                (get_local $14)
                (i32.const 56)
               )
              )
              (i32.const 1)
             )
            )
           )
           (call $_ZdlPv
            (i32.load
             (i32.add
              (get_local $14)
              (i32.const 64)
             )
            )
           )
          )
          (block $label$104
           (br_if $label$104
            (i32.eqz
             (i32.and
              (i32.load8_u offset=8
               (get_local $14)
              )
              (i32.const 1)
             )
            )
           )
           (call $_ZdlPv
            (i32.load
             (i32.add
              (get_local $14)
              (i32.const 16)
             )
            )
           )
          )
          (set_local $6
           (i64.mul
            (i64.load
             (get_local $3)
            )
            (i64.const 3066)
           )
          )
          (br $label$17)
         )
         (set_local $5
          (call $_Znwj
           (tee_local $8
            (i32.and
             (i32.add
              (get_local $9)
              (i32.const 16)
             )
             (i32.const -16)
            )
           )
          )
         )
         (i32.store offset=8
          (get_local $14)
          (i32.or
           (get_local $8)
           (i32.const 1)
          )
         )
         (i32.store offset=16
          (get_local $14)
          (get_local $5)
         )
         (i32.store offset=12
          (get_local $14)
          (get_local $9)
         )
        )
        (drop
         (call $memcpy
          (get_local $5)
          (i32.const 624)
          (get_local $9)
         )
        )
       )
       (i32.store8
        (i32.add
         (get_local $5)
         (get_local $9)
        )
        (i32.const 0)
       )
       (i64.store
        (i32.add
         (get_local $14)
         (i32.const 48)
        )
        (i64.const 1314145028)
       )
       (i32.store
        (i32.add
         (get_local $14)
         (i32.const 60)
        )
        (i32.load offset=12
         (get_local $14)
        )
       )
       (i64.store offset=32
        (get_local $14)
        (get_local $1)
       )
       (i32.store
        (i32.add
         (get_local $14)
         (i32.const 64)
        )
        (i32.load
         (tee_local $9
          (i32.add
           (get_local $14)
           (i32.const 16)
          )
         )
        )
       )
       (i64.store offset=24
        (get_local $14)
        (i64.load
         (get_local $0)
        )
       )
       (i64.store offset=40
        (get_local $14)
        (get_local $6)
       )
       (i32.store offset=56
        (get_local $14)
        (i32.load offset=8
         (get_local $14)
        )
       )
       (i32.store offset=8
        (get_local $14)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $14)
        (i32.const 0)
       )
       (i32.store
        (get_local $9)
        (i32.const 0)
       )
       (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
        (i32.add
         (get_local $14)
         (i32.const 144)
        )
        (tee_local $9
         (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
          (i32.add
           (get_local $14)
           (i32.const 88)
          )
          (i32.add
           (get_local $14)
           (i32.const 72)
          )
          (get_local $11)
          (get_local $13)
          (i32.add
           (get_local $14)
           (i32.const 24)
          )
         )
        )
       )
       (call $send_inline
        (tee_local $5
         (i32.load offset=144
          (get_local $14)
         )
        )
        (i32.sub
         (i32.load offset=148
          (get_local $14)
         )
         (get_local $5)
        )
       )
       (block $label$105
        (br_if $label$105
         (i32.eqz
          (tee_local $5
           (i32.load offset=144
            (get_local $14)
           )
          )
         )
        )
        (i32.store offset=148
         (get_local $14)
         (get_local $5)
        )
        (call $_ZdlPv
         (get_local $5)
        )
       )
       (block $label$106
        (br_if $label$106
         (i32.eqz
          (tee_local $5
           (i32.load offset=28
            (get_local $9)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $9)
          (i32.const 32)
         )
         (get_local $5)
        )
        (call $_ZdlPv
         (get_local $5)
        )
       )
       (block $label$107
        (br_if $label$107
         (i32.eqz
          (tee_local $5
           (i32.load offset=16
            (get_local $9)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $9)
          (i32.const 20)
         )
         (get_local $5)
        )
        (call $_ZdlPv
         (get_local $5)
        )
       )
       (block $label$108
        (br_if $label$108
         (i32.eqz
          (i32.and
           (i32.load8_u
            (i32.add
             (get_local $14)
             (i32.const 56)
            )
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $14)
           (i32.const 64)
          )
         )
        )
       )
       (br_if $label$17
        (i32.eqz
         (i32.and
          (i32.load8_u offset=8
           (get_local $14)
          )
          (i32.const 1)
         )
        )
       )
       (call $_ZdlPv
        (i32.load
         (i32.add
          (get_local $14)
          (i32.const 16)
         )
        )
       )
      )
      (i64.store
       (tee_local $9
        (i32.add
         (get_local $14)
         (i32.const 136)
        )
       )
       (i64.add
        (i64.load
         (get_local $9)
        )
        (i64.load
         (get_local $3)
        )
       )
      )
      (i64.store offset=128
       (get_local $14)
       (i64.add
        (i64.load offset=128
         (get_local $14)
        )
        (get_local $6)
       )
      )
      (call $_ZN5eosio9singletonILy7235159537265672192EN12crazytowntea6globalEE3setERKS2_y
       (get_local $7)
       (i32.add
        (get_local $14)
        (i32.const 128)
       )
       (i64.load
        (get_local $0)
       )
      )
     )
     (i32.store offset=4
      (i32.const 0)
      (i32.add
       (get_local $14)
       (i32.const 160)
      )
     )
     (return)
    )
    (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
     (i32.add
      (get_local $14)
      (i32.const 8)
     )
    )
    (unreachable)
   )
   (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $14)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $14)
    (i32.const 8)
   )
  )
  (unreachable)
 )
 (func $_ZN12crazytowntea4initEv (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.const 0)
  )
  (i64.store
   (get_local $3)
   (i64.const 0)
  )
  (call $_ZN5eosio9singletonILy7235159537265672192EN12crazytowntea6globalEE13get_or_createEyRKS2_
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (get_local $1)
   (get_local $3)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.const 0)
  )
  (call $_ZN5eosio9singletonILy7235159537265672192EN12crazytowntea6globalEE3setERKS2_y
   (get_local $2)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI12crazytownteaS1_JEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (tee_local $5
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.le_u
      (get_local $3)
      (i32.const 512)
     )
    )
    (drop
     (call $read_action_data
      (tee_local $5
       (call $malloc
        (get_local $3)
       )
      )
      (get_local $3)
     )
    )
    (call $free
     (get_local $5)
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $5
     (i32.sub
      (get_local $5)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $5)
     (get_local $3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.load
       (get_local $3)
      )
      (get_local $1)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vi)
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (i32.const 1)
 )
 (func $_ZN12crazytowntea5clearEv (type $FUNCSIG$vi) (param $0 i32)
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_ZN5eosio9singletonILy7235159537265672192EN12crazytowntea6globalEE13get_or_createEyRKS2_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $4
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 28)
          )
         )
        )
        (i32.load offset=24
         (get_local $1)
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (tee_local $4
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $1)
       )
       (i32.const 32)
      )
      (br_if $label$2
       (get_local $4)
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.lt_s
       (tee_local $4
        (call $db_find_i64
         (i64.load
          (get_local $1)
         )
         (i64.load offset=8
          (get_local $1)
         )
         (i64.const 7235159537265672192)
         (i64.const 7235159537265672192)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=16
        (tee_local $4
         (call $_ZNK5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $1)
          (get_local $4)
         )
        )
       )
       (get_local $1)
      )
      (i32.const 32)
     )
    )
    (i64.store
     (get_local $0)
     (i64.load
      (get_local $4)
     )
    )
    (i64.store
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
     (i64.load
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
     )
    )
    (br $label$0)
   )
   (i32.store offset=8
    (get_local $5)
    (get_local $3)
   )
   (call $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE7emplaceIZNS4_13get_or_createEyRKS3_EUlRS5_E_EENS6_14const_iteratorEyOT_
    (get_local $5)
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
   (i32.store
    (get_local $0)
    (i32.load
     (tee_local $1
      (i32.load offset=4
       (get_local $5)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 12)
    )
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 12)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio9singletonILy7235159537265672192EN12crazytowntea6globalEE3setERKS2_y (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $3
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
        (i32.load offset=24
         (get_local $0)
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $3)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $0)
       )
       (i32.const 32)
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.lt_s
       (tee_local $3
        (call $db_find_i64
         (i64.load
          (get_local $0)
         )
         (i64.load offset=8
          (get_local $0)
         )
         (i64.const 7235159537265672192)
         (i64.const 7235159537265672192)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=16
        (tee_local $3
         (call $_ZNK5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $0)
          (get_local $3)
         )
        )
       )
       (get_local $0)
      )
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 96)
    )
    (call $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_
     (get_local $0)
     (get_local $3)
     (get_local $2)
     (get_local $4)
    )
    (br $label$0)
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $1)
   )
   (call $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_
    (get_local $4)
    (get_local $0)
    (get_local $2)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 400)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $6
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $6)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $6)
      (get_local $4)
     )
    )
   )
   (i32.store offset=16
    (tee_local $5
     (call $_Znwj
      (i32.const 32)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 432)
   )
   (drop
    (call $memcpy
     (get_local $5)
     (get_local $6)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (i32.and
      (get_local $4)
      (i32.const -8)
     )
     (i32.const 8)
    )
    (i32.const 432)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $5)
      (i32.const 8)
     )
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=20
    (get_local $5)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $7)
    (get_local $5)
   )
   (i64.store offset=16
    (get_local $7)
    (i64.const 7235159537265672192)
   )
   (i32.store offset=12
    (get_local $7)
    (tee_local $6
     (i32.load offset=20
      (get_local $5)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (i64.const 7235159537265672192)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $6)
     )
     (i32.store offset=24
      (get_local $7)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $5)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192ENS1_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.add
      (get_local $7)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $7)
    )
   )
   (i32.store offset=24
    (get_local $7)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
  (get_local $5)
 )
 (func $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 224)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 272)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (tee_local $3
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 336)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $5)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=20
    (get_local $1)
   )
   (get_local $2)
   (get_local $5)
   (i32.const 16)
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 7235159537265672192)
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i64.const 7235159537265672193)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 144)
  )
  (i32.store offset=16
   (tee_local $4
    (call $_Znwj
     (i32.const 32)
    )
   )
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (i32.load
    (tee_local $3
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 4)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 7235159537265672192)
    (get_local $2)
    (i64.const 7235159537265672192)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $1)
     )
     (i64.const 7235159537265672192)
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i64.const 7235159537265672193)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 7235159537265672192)
  )
  (i32.store offset=4
   (get_local $7)
   (tee_local $5
    (i32.load offset=20
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (i64.const 7235159537265672192)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=8
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192ENS1_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $7)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192ENS1_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy7235159537265672192ENS_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE7emplaceIZNS4_13get_or_createEyRKS3_EUlRS5_E_EENS6_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 144)
  )
  (i32.store offset=16
   (tee_local $4
    (call $_Znwj
     (i32.const 32)
    )
   )
   (get_local $1)
  )
  (i32.store
   (get_local $4)
   (i32.load
    (tee_local $3
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 4)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $1)
    )
    (i64.const 7235159537265672192)
    (get_local $2)
    (i64.const 7235159537265672192)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $1)
     )
     (i64.const 7235159537265672192)
    )
   )
   (i64.store
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i64.const 7235159537265672193)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 7235159537265672192)
  )
  (i32.store offset=4
   (get_local $7)
   (tee_local $5
    (i32.load offset=20
     (get_local $4)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (i64.const 7235159537265672192)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $5)
    )
    (i32.store offset=8
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $4)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192ENS1_9singletonILy7235159537265672192EN12crazytowntea6globalEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $7)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $3)
  )
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (tee_local $8
    (call $_Znwj
     (i32.const 16)
    )
   )
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $0)
     (i32.const 20)
    )
   )
   (get_local $8)
  )
  (i32.store
   (get_local $5)
   (tee_local $7
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $8)
   (i64.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $6)
   (get_local $7)
  )
  (i32.store offset=28
   (get_local $0)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.const 0)
  )
  (set_local $8
   (i32.add
    (tee_local $1
     (select
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 36)
       )
      )
      (i32.shr_u
       (tee_local $8
        (i32.load8_u offset=32
         (get_local $4)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $8)
       (i32.const 1)
      )
     )
    )
    (i32.const 32)
   )
  )
  (set_local $2
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
  )
  (loop $label$0
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $2
      (i64.shr_u
       (get_local $2)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (get_local $8)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (get_local $8)
    )
    (set_local $1
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
    )
    (set_local $8
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 28)
      )
     )
    )
    (br $label$1)
   )
   (set_local $1
    (i32.const 0)
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $9)
   (get_local $8)
  )
  (i32.store
   (get_local $9)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $9)
   (get_local $9)
  )
  (i32.store offset=24
   (get_local $9)
   (get_local $4)
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $5
   (i32.const 16)
  )
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$0
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $3)
     (get_local $7)
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $5)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.sub
     (tee_local $7
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $5)
    )
    (tee_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (get_local $3)
     (get_local $7)
    )
   )
  )
  (loop $label$2
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (i32.load
      (get_local $0)
     )
    )
    (br $label$3)
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $7)
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (tee_local $0
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
    (call $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (get_local $8)
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $3
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $7)
    (i32.or
     (i32.shl
      (tee_local $6
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $3)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $2)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $6)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 208)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 208)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $6)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
    (get_local $5)
   )
  )
  (i32.store
   (get_local $6)
   (i32.add
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $5
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $2
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $eosio_assert
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $6)
     )
     (get_local $5)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $3)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (i32.add
     (i32.load
      (get_local $6)
     )
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosio6unpackI11st_transferEET_PKcj (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 640)
  )
  (set_local $3
   (i64.const 5462355)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 592)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=12
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $6)
   (i32.add
    (get_local $1)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $0)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store offset=44
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEE11st_transferLPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3EEEEvSQ_OSR_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.add
    (get_local $6)
    (i32.const 24)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEE11st_transferLPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3EEEEvSQ_OSR_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 432)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 432)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 432)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 432)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 736)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 432)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
   (i64.const -1)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (get_local $3)
   (get_local $0)
  )
  (call $_ZN12crazytowntea5applyEyy
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
  (call $eosio_exit
   (i32.const 0)
  )
  (unreachable)
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 740)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 9136)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=9222
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=9224
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=9222
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=9224
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=9224
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=9224
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=9222
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=9222
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=9224
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=9224
        (i32.const 0)
       )
      )
     )
     (i32.store offset=9224
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=9124
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 8932)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 8932)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=9228
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
