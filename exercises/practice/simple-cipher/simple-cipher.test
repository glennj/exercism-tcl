#!/usr/bin/env tclsh
# generated: 2026-07-24T03:23:04Z
package require tcltest
namespace import ::tcltest::*
source testHelpers.tcl

# Uncomment next line to view test durations.
#configure -verbose {body error usec}

############################################################
source "simple-cipher.tcl"


test simple-cipher-1 "Random key cipher: Can encode" -body {
    set cipher [SimpleCipher new]
    set plaintext "aaaaaaaaaa"
    set expected [string range [$cipher key] 0 [string length $plaintext]-1]
    set actual [$cipher encode $plaintext]
    expr {$actual eq $expected}
} -returnCodes ok -match boolean -result true

skip simple-cipher-2
test simple-cipher-2 "Random key cipher: Can decode" -body {
    set cipher [SimpleCipher new]
    set expected "aaaaaaaaaa"
    set plaintext [string range [$cipher key] 0 [string length $expected]-1]
    set actual [$cipher decode $plaintext]
    expr {$actual eq $expected}
} -returnCodes ok -match boolean -result true

skip simple-cipher-3
test simple-cipher-3 "Random key cipher: Is reversible. I.e., if you apply decode in a encoded result, you must see the same plaintext encode parameter as a result of the decode method" -body {
    set cipher [SimpleCipher new]
    set plaintext "abcdefghij"
    set roundtrip [$cipher decode [$cipher encode $plaintext]]
    expr {$plaintext eq $roundtrip}
} -returnCodes ok -match boolean -result true

skip simple-cipher-4
test simple-cipher-4 "Random key cipher: Key is made only of lowercase letters" -body {
    set cipher [SimpleCipher new]
    $cipher key
} -returnCodes ok -match regexp -result {^[a-z]+$}

skip simple-cipher-5
test simple-cipher-5 "Substitution cipher: Can encode" -body {
    set cipher [SimpleCipher new "abcdefghij"]
    $cipher encode "aaaaaaaaaa"
} -returnCodes ok -result "abcdefghij"

skip simple-cipher-6
test simple-cipher-6 "Substitution cipher: Can decode" -body {
    set cipher [SimpleCipher new "abcdefghij"]
    $cipher decode "abcdefghij"
} -returnCodes ok -result "aaaaaaaaaa"

skip simple-cipher-7
test simple-cipher-7 "Substitution cipher: Is reversible. I.e., if you apply decode in a encoded result, you must see the same plaintext encode parameter as a result of the decode method" -body {
    set cipher [SimpleCipher new "abcdefghij"]
    $cipher decode [$cipher encode "abcdefghij"]
} -returnCodes ok -result "abcdefghij"

skip simple-cipher-8
test simple-cipher-8 "Substitution cipher: Can double shift encode" -body {
    set cipher [SimpleCipher new "iamapandabear"]
    $cipher encode "iamapandabear"
} -returnCodes ok -result "qayaeaagaciai"

skip simple-cipher-9
test simple-cipher-9 "Substitution cipher: Can wrap on encode" -body {
    set cipher [SimpleCipher new "abcdefghij"]
    $cipher encode "zzzzzzzzzz"
} -returnCodes ok -result "zabcdefghi"

skip simple-cipher-10
test simple-cipher-10 "Substitution cipher: Can wrap on decode" -body {
    set cipher [SimpleCipher new "abcdefghij"]
    $cipher decode "zabcdefghi"
} -returnCodes ok -result "zzzzzzzzzz"

skip simple-cipher-11
test simple-cipher-11 "Substitution cipher: Can encode messages longer than the key" -body {
    set cipher [SimpleCipher new "abc"]
    $cipher encode "iamapandabear"
} -returnCodes ok -result "iboaqcnecbfcr"

skip simple-cipher-12
test simple-cipher-12 "Substitution cipher: Can decode messages longer than the key" -body {
    set cipher [SimpleCipher new "abc"]
    $cipher decode "iboaqcnecbfcr"
} -returnCodes ok -result "iamapandabear"


cleanupTests
