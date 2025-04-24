IR:

/// @use-src 0:"test.sol"
object "ERC20_292" {
    code {
        /// @src 0:620:2562  "contract ERC20 is IERC20 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2, _3 := copy_arguments_for_constructor_110_object_ERC20_292()
        constructor_ERC20_292(_1, _2, _3)

        let _4 := allocate_unbounded()
        codecopy(_4, dataoffset("ERC20_292_deployed"), datasize("ERC20_292_deployed"))

        return(_4, datasize("ERC20_292_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
            revert(0, 0)
        }

        function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
            revert(0, 0)
        }

        function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
            revert(0, 0)
        }

        function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
            revert(0, 0)
        }

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function copy_memory_to_memory_with_cleanup(src, dst, length) {

            mcopy(dst, src, length)
            mstore(add(dst, length), 0)

        }

        function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
            array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
            mstore(array, length)
            let dst := add(array, 0x20)
            if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
            copy_memory_to_memory_with_cleanup(src, dst, length)
        }

        // string
        function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
            if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
            let length := mload(offset)
            array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function validator_revert_t_uint8(value) {
            if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint8_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint8(value)
        }

        function abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(headStart, dataEnd) -> value0, value1, value2 {
            if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := mload(add(headStart, 0))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_110_object_ERC20_292() -> ret_param_0, ret_param_1, ret_param_2 {

            let programSize := datasize("ERC20_292")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2 := abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

        }

        function panic_error_0x22() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x22)
            revert(0, 0x24)
        }

        function extract_byte_array_length(data) -> length {
            length := div(data, 2)
            let outOfPlaceEncoding := and(data, 1)
            if iszero(outOfPlaceEncoding) {
                length := and(length, 0x7f)
            }

            if eq(outOfPlaceEncoding, lt(length, 32)) {
                panic_error_0x22()
            }
        }

        function array_dataslot_t_string_storage(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function divide_by_32_ceil(value) -> result {
            result := div(add(value, 31), 32)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
            let shiftBits := mul(shiftBytes, 8)
            let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            toInsert := shift_left_dynamic(shiftBits, toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

        function storage_set_to_zero_t_uint256(slot, offset) {
            let zero_0 := zero_value_for_split_t_uint256()
            update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
        }

        function clear_storage_range_t_bytes1(start, end) {
            for {} lt(start, end) { start := add(start, 1) }
            {
                storage_set_to_zero_t_uint256(start, 0)
            }
        }

        function clean_up_bytearray_end_slots_t_string_storage(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_string_storage(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function mask_bytes_dynamic(data, bytes) -> result {
            let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
            result := and(data, mask)
        }
        function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
            // we want to save only elements that are part of the array after resizing
            // others should be set to zero
            data := mask_bytes_dynamic(data, len)
            used := or(data, mul(2, len))
        }
        function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src) {

            let newLen := array_length_t_string_memory_ptr(src)
            // Make sure array length is sane
            if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

            let oldLen := extract_byte_array_length(sload(slot))

            // potentially truncate data
            clean_up_bytearray_end_slots_t_string_storage(slot, oldLen, newLen)

            let srcOffset := 0

            srcOffset := 0x20

            switch gt(newLen, 31)
            case 1 {
                let loopEnd := and(newLen, not(0x1f))

                let dstPtr := array_dataslot_t_string_storage(slot)
                let i := 0
                for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                    sstore(dstPtr, mload(add(src, srcOffset)))
                    dstPtr := add(dstPtr, 1)
                    srcOffset := add(srcOffset, 32)
                }
                if lt(loopEnd, newLen) {
                    let lastValue := mload(add(src, srcOffset))
                    sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                }
                sstore(slot, add(mul(newLen, 2), 1))
            }
            default {
                let value := 0
                if newLen {
                    value := mload(add(src, srcOffset))
                }
                sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
            }
        }

        function update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(slot, value_0) {

            copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, value_0)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint8_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
        }

        function prepare_store_t_uint8(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_uint8_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
        }

        /// @ast-id 110
        /// @src 0:1056:1214  "constructor(string memory _name, string memory _symbol, uint8 _decimals) {..."
        function constructor_ERC20_292(var__name_90_mpos, var__symbol_92_mpos, var__decimals_94) {

            /// @src 0:1056:1214  "constructor(string memory _name, string memory _symbol, uint8 _decimals) {..."
            constructor_IERC20_52()

            /// @src 0:1146:1151  "_name"
            let _5_mpos := var__name_90_mpos
            let expr_98_mpos := _5_mpos
            /// @src 0:1139:1151  "name = _name"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x03, expr_98_mpos)
            let _6_slot := 0x03
            let expr_99_slot := _6_slot
            /// @src 0:1170:1177  "_symbol"
            let _7_mpos := var__symbol_92_mpos
            let expr_102_mpos := _7_mpos
            /// @src 0:1161:1177  "symbol = _symbol"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x04, expr_102_mpos)
            let _8_slot := 0x04
            let expr_103_slot := _8_slot
            /// @src 0:1198:1207  "_decimals"
            let _9 := var__decimals_94
            let expr_106 := _9
            /// @src 0:1187:1207  "decimals = _decimals"
            update_storage_value_offset_0_t_uint8_to_t_uint8(0x05, expr_106)
            let expr_107 := expr_106

        }
        /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

        /// @src 0:58:618  "interface IERC20 {..."
        function constructor_IERC20_52() {

            /// @src 0:58:618  "interface IERC20 {..."

        }
        /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

    }
    /// @use-src 0:"test.sol"
    object "ERC20_292_deployed" {
        code {
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_84()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_170()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_72()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_211()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_88()
                }

                case 0x40c10f19
                {
                    // mint(address,uint256)

                    external_fun_mint_278()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_76()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_86()
                }

                case 0x9dc29fac
                {
                    // burn(address,uint256)

                    external_fun_burn_291()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_142()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_82()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_storeLengthForEncoding_t_string_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_string_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // string -> string
            function abi_encode_t_string_storage_to_t_string_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_string_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_string_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_string_storage_to_t_string_memory_ptr(value0, pos)
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset) -> value {
                if gt(offset, 0) { panic_error_0x00() }
                value := copy_array_from_storage_to_memory_t_string_storage(slot)
            }

            /// @ast-id 84
            /// @src 0:978:996  "string public name"
            function getter_fun_name_84() -> ret_mpos {

                let slot := 3
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_name_84() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_name_84()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_approve_170() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_170(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 72
            /// @src 0:826:852  "uint256 public totalSupply"
            function getter_fun_totalSupply_72() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_72() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalSupply_72()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transferFrom_211() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_211(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_dynamict_uint8(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint8(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint8(sload(slot), offset)

            }

            /// @ast-id 88
            /// @src 0:1028:1049  "uint8 public decimals"
            function getter_fun_decimals_88() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint8(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_decimals_88() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_decimals_88()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_mint_278() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_mint_278(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 76
            /// @src 0:858:902  "mapping(address => uint256) public balanceOf"
            function getter_fun_balanceOf_76(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function external_fun_balanceOf_76() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_76(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 86
            /// @src 0:1002:1022  "string public symbol"
            function getter_fun_symbol_86() -> ret_mpos {

                let slot := 4
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function external_fun_symbol_86() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_symbol_86()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burn_291() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_burn_291(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_142() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_142(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 82
            /// @src 0:908:972  "mapping(address => mapping(address => uint256)) public allowance"
            function getter_fun_allowance_82(key_0, key_1) -> ret {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function external_fun_allowance_82() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  getter_fun_allowance_82(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 170
            /// @src 0:1486:1689  "function approve(address spender, uint256 amount) external returns (bool) {..."
            function fun_approve_170(var_spender_144, var_amount_146) -> var__149 {
                /// @src 0:1554:1558  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__149 := zero_t_bool_1

                /// @src 0:1603:1609  "amount"
                let _2 := var_amount_146
                let expr_157 := _2
                /// @src 0:1570:1579  "allowance"
                let _3_slot := 0x02
                let expr_151_slot := _3_slot
                /// @src 0:1580:1590  "msg.sender"
                let expr_153 := caller()
                /// @src 0:1570:1591  "allowance[msg.sender]"
                let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_151_slot,expr_153)
                let _5_slot := _4
                let expr_155_slot := _5_slot
                /// @src 0:1592:1599  "spender"
                let _6 := var_spender_144
                let expr_154 := _6
                /// @src 0:1570:1600  "allowance[msg.sender][spender]"
                let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_155_slot,expr_154)
                /// @src 0:1570:1609  "allowance[msg.sender][spender] = amount"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_157)
                let expr_158 := expr_157
                /// @src 0:1633:1643  "msg.sender"
                let expr_162 := caller()
                /// @src 0:1645:1652  "spender"
                let _8 := var_spender_144
                let expr_163 := _8
                /// @src 0:1654:1660  "amount"
                let _9 := var_amount_146
                let expr_164 := _9
                /// @src 0:1624:1661  "Approval(msg.sender, spender, amount)"
                let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _11 := convert_t_address_to_t_address(expr_162)
                let _12 := convert_t_address_to_t_address(expr_163)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_164)
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }/// @src 0:1678:1682  "true"
                let expr_167 := 0x01
                /// @src 0:1671:1682  "return true"
                var__149 := expr_167
                leave

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 211
            /// @src 0:1695:2016  "function transferFrom(address sender, address recipient, uint256 amount)..."
            function fun_transferFrom_211(var_sender_172, var_recipient_174, var_amount_176) -> var__179 {
                /// @src 0:1802:1806  "bool"
                let zero_t_bool_15 := zero_value_for_split_t_bool()
                var__179 := zero_t_bool_15

                /// @src 0:1855:1861  "amount"
                let _16 := var_amount_176
                let expr_187 := _16
                /// @src 0:1822:1831  "allowance"
                let _17_slot := 0x02
                let expr_181_slot := _17_slot
                /// @src 0:1832:1838  "sender"
                let _18 := var_sender_172
                let expr_182 := _18
                /// @src 0:1822:1839  "allowance[sender]"
                let _19 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_181_slot,expr_182)
                let _20_slot := _19
                let expr_185_slot := _20_slot
                /// @src 0:1840:1850  "msg.sender"
                let expr_184 := caller()
                /// @src 0:1822:1851  "allowance[sender][msg.sender]"
                let _21 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_185_slot,expr_184)
                /// @src 0:1822:1861  "allowance[sender][msg.sender] -= amount"
                let _22 := read_from_storage_split_offset_0_t_uint256(_21)
                let expr_188 := checked_sub_t_uint256(_22, expr_187)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_21, expr_188)
                /// @src 0:1892:1898  "amount"
                let _23 := var_amount_176
                let expr_193 := _23
                /// @src 0:1871:1880  "balanceOf"
                let _24_slot := 0x01
                let expr_190_slot := _24_slot
                /// @src 0:1881:1887  "sender"
                let _25 := var_sender_172
                let expr_191 := _25
                /// @src 0:1871:1888  "balanceOf[sender]"
                let _26 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_190_slot,expr_191)
                /// @src 0:1871:1898  "balanceOf[sender] -= amount"
                let _27 := read_from_storage_split_offset_0_t_uint256(_26)
                let expr_194 := checked_sub_t_uint256(_27, expr_193)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_26, expr_194)
                /// @src 0:1932:1938  "amount"
                let _28 := var_amount_176
                let expr_199 := _28
                /// @src 0:1908:1917  "balanceOf"
                let _29_slot := 0x01
                let expr_196_slot := _29_slot
                /// @src 0:1918:1927  "recipient"
                let _30 := var_recipient_174
                let expr_197 := _30
                /// @src 0:1908:1928  "balanceOf[recipient]"
                let _31 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_196_slot,expr_197)
                /// @src 0:1908:1938  "balanceOf[recipient] += amount"
                let _32 := read_from_storage_split_offset_0_t_uint256(_31)
                let expr_200 := checked_add_t_uint256(_32, expr_199)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_31, expr_200)
                /// @src 0:1962:1968  "sender"
                let _33 := var_sender_172
                let expr_203 := _33
                /// @src 0:1970:1979  "recipient"
                let _34 := var_recipient_174
                let expr_204 := _34
                /// @src 0:1981:1987  "amount"
                let _35 := var_amount_176
                let expr_205 := _35
                /// @src 0:1953:1988  "Transfer(sender, recipient, amount)"
                let _36 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _37 := convert_t_address_to_t_address(expr_203)
                let _38 := convert_t_address_to_t_address(expr_204)
                {
                    let _39 := allocate_unbounded()
                    let _40 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_39 , expr_205)
                    log3(_39, sub(_40, _39) , _36, _37, _38)
                }/// @src 0:2005:2009  "true"
                let expr_208 := 0x01
                /// @src 0:1998:2009  "return true"
                var__179 := expr_208
                leave

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            /// @ast-id 278
            /// @src 0:2380:2465  "function mint(address to, uint256 amount) external {..."
            function fun_mint_278(var_to_267, var_amount_269) {

                /// @src 0:2447:2449  "to"
                let _41 := var_to_267
                let expr_273 := _41
                /// @src 0:2451:2457  "amount"
                let _42 := var_amount_269
                let expr_274 := _42
                fun__mint_238(expr_273, expr_274)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            /// @ast-id 291
            /// @src 0:2471:2560  "function burn(address from, uint256 amount) external {..."
            function fun_burn_291(var_from_280, var_amount_282) {

                /// @src 0:2540:2544  "from"
                let _43 := var_from_280
                let expr_286 := _43
                /// @src 0:2546:2552  "amount"
                let _44 := var_amount_282
                let expr_287 := _44
                fun__burn_265(expr_286, expr_287)

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            /// @ast-id 142
            /// @src 0:1220:1480  "function transfer(address recipient, uint256 amount)..."
            function fun_transfer_142(var_recipient_112, var_amount_114) -> var__117 {
                /// @src 0:1307:1311  "bool"
                let zero_t_bool_45 := zero_value_for_split_t_bool()
                var__117 := zero_t_bool_45

                /// @src 0:1352:1358  "amount"
                let _46 := var_amount_114
                let expr_123 := _46
                /// @src 0:1327:1336  "balanceOf"
                let _47_slot := 0x01
                let expr_119_slot := _47_slot
                /// @src 0:1337:1347  "msg.sender"
                let expr_121 := caller()
                /// @src 0:1327:1348  "balanceOf[msg.sender]"
                let _48 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_119_slot,expr_121)
                /// @src 0:1327:1358  "balanceOf[msg.sender] -= amount"
                let _49 := read_from_storage_split_offset_0_t_uint256(_48)
                let expr_124 := checked_sub_t_uint256(_49, expr_123)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_48, expr_124)
                /// @src 0:1392:1398  "amount"
                let _50 := var_amount_114
                let expr_129 := _50
                /// @src 0:1368:1377  "balanceOf"
                let _51_slot := 0x01
                let expr_126_slot := _51_slot
                /// @src 0:1378:1387  "recipient"
                let _52 := var_recipient_112
                let expr_127 := _52
                /// @src 0:1368:1388  "balanceOf[recipient]"
                let _53 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_126_slot,expr_127)
                /// @src 0:1368:1398  "balanceOf[recipient] += amount"
                let _54 := read_from_storage_split_offset_0_t_uint256(_53)
                let expr_130 := checked_add_t_uint256(_54, expr_129)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_53, expr_130)
                /// @src 0:1422:1432  "msg.sender"
                let expr_134 := caller()
                /// @src 0:1434:1443  "recipient"
                let _55 := var_recipient_112
                let expr_135 := _55
                /// @src 0:1445:1451  "amount"
                let _56 := var_amount_114
                let expr_136 := _56
                /// @src 0:1413:1452  "Transfer(msg.sender, recipient, amount)"
                let _57 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _58 := convert_t_address_to_t_address(expr_134)
                let _59 := convert_t_address_to_t_address(expr_135)
                {
                    let _60 := allocate_unbounded()
                    let _61 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_60 , expr_136)
                    log3(_60, sub(_61, _60) , _57, _58, _59)
                }/// @src 0:1469:1473  "true"
                let expr_139 := 0x01
                /// @src 0:1462:1473  "return true"
                var__117 := expr_139
                leave

            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            /// @ast-id 238
            /// @src 0:2022:2192  "function _mint(address to, uint256 amount) internal {..."
            function fun__mint_238(var_to_213, var_amount_215) {

                /// @src 0:2101:2107  "amount"
                let _62 := var_amount_215
                let expr_221 := _62
                /// @src 0:2084:2093  "balanceOf"
                let _63_slot := 0x01
                let expr_218_slot := _63_slot
                /// @src 0:2094:2096  "to"
                let _64 := var_to_213
                let expr_219 := _64
                /// @src 0:2084:2097  "balanceOf[to]"
                let _65 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_218_slot,expr_219)
                /// @src 0:2084:2107  "balanceOf[to] += amount"
                let _66 := read_from_storage_split_offset_0_t_uint256(_65)
                let expr_222 := checked_add_t_uint256(_66, expr_221)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_65, expr_222)
                /// @src 0:2132:2138  "amount"
                let _67 := var_amount_215
                let expr_225 := _67
                /// @src 0:2117:2138  "totalSupply += amount"
                let _68 := read_from_storage_split_offset_0_t_uint256(0x00)
                let expr_226 := checked_add_t_uint256(_68, expr_225)

                update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, expr_226)
                /// @src 0:2170:2171  "0"
                let expr_231 := 0x00
                /// @src 0:2162:2172  "address(0)"
                let expr_232 := convert_t_rational_0_by_1_to_t_address(expr_231)
                /// @src 0:2174:2176  "to"
                let _69 := var_to_213
                let expr_233 := _69
                /// @src 0:2178:2184  "amount"
                let _70 := var_amount_215
                let expr_234 := _70
                /// @src 0:2153:2185  "Transfer(address(0), to, amount)"
                let _71 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _72 := convert_t_address_to_t_address(expr_232)
                let _73 := convert_t_address_to_t_address(expr_233)
                {
                    let _74 := allocate_unbounded()
                    let _75 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_74 , expr_234)
                    log3(_74, sub(_75, _74) , _71, _72, _73)
                }
            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

            /// @ast-id 265
            /// @src 0:2198:2374  "function _burn(address from, uint256 amount) internal {..."
            function fun__burn_265(var_from_240, var_amount_242) {

                /// @src 0:2281:2287  "amount"
                let _76 := var_amount_242
                let expr_248 := _76
                /// @src 0:2262:2271  "balanceOf"
                let _77_slot := 0x01
                let expr_245_slot := _77_slot
                /// @src 0:2272:2276  "from"
                let _78 := var_from_240
                let expr_246 := _78
                /// @src 0:2262:2277  "balanceOf[from]"
                let _79 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_245_slot,expr_246)
                /// @src 0:2262:2287  "balanceOf[from] -= amount"
                let _80 := read_from_storage_split_offset_0_t_uint256(_79)
                let expr_249 := checked_sub_t_uint256(_80, expr_248)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_79, expr_249)
                /// @src 0:2312:2318  "amount"
                let _81 := var_amount_242
                let expr_252 := _81
                /// @src 0:2297:2318  "totalSupply -= amount"
                let _82 := read_from_storage_split_offset_0_t_uint256(0x00)
                let expr_253 := checked_sub_t_uint256(_82, expr_252)

                update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, expr_253)
                /// @src 0:2342:2346  "from"
                let _83 := var_from_240
                let expr_256 := _83
                /// @src 0:2356:2357  "0"
                let expr_259 := 0x00
                /// @src 0:2348:2358  "address(0)"
                let expr_260 := convert_t_rational_0_by_1_to_t_address(expr_259)
                /// @src 0:2360:2366  "amount"
                let _84 := var_amount_242
                let expr_261 := _84
                /// @src 0:2333:2367  "Transfer(from, address(0), amount)"
                let _85 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _86 := convert_t_address_to_t_address(expr_256)
                let _87 := convert_t_address_to_t_address(expr_260)
                {
                    let _88 := allocate_unbounded()
                    let _89 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_88 , expr_261)
                    log3(_88, sub(_89, _88) , _85, _86, _87)
                }
            }
            /// @src 0:620:2562  "contract ERC20 is IERC20 {..."

        }

        data ".metadata" hex"a26469706673582212208e8893e092fbf3ad2a206b41e1f334a8228182412c4099d17537e5b67f88d62864736f6c634300081d0033"
    }

}


IR:

