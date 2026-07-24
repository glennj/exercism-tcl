#!/usr/bin/env tclsh
# generated: 2026-07-24T18:20:48Z
package require tcltest
namespace import ::tcltest::*
source testHelpers.tcl

# Uncomment next line to view test durations.
#configure -verbose {body error usec}

############################################################
source "twelve-days.tcl"


test twelve-days-1 "verse: first day a partridge in a pear tree" \
    -body { verse 1 } \
    -returnCodes ok \
    -result "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."

skip twelve-days-2
test twelve-days-2 "verse: second day two turtle doves" \
    -body { verse 2 } \
    -returnCodes ok \
    -result "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-3
test twelve-days-3 "verse: third day three french hens" \
    -body { verse 3 } \
    -returnCodes ok \
    -result "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-4
test twelve-days-4 "verse: fourth day four calling birds" \
    -body { verse 4 } \
    -returnCodes ok \
    -result "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-5
test twelve-days-5 "verse: fifth day five gold rings" \
    -body { verse 5 } \
    -returnCodes ok \
    -result "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-6
test twelve-days-6 "verse: sixth day six geese-a-laying" \
    -body { verse 6 } \
    -returnCodes ok \
    -result "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-7
test twelve-days-7 "verse: seventh day seven swans-a-swimming" \
    -body { verse 7 } \
    -returnCodes ok \
    -result "On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-8
test twelve-days-8 "verse: eighth day eight maids-a-milking" \
    -body { verse 8 } \
    -returnCodes ok \
    -result "On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-9
test twelve-days-9 "verse: ninth day nine ladies dancing" \
    -body { verse 9 } \
    -returnCodes ok \
    -result "On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-10
test twelve-days-10 "verse: tenth day ten lords-a-leaping" \
    -body { verse 10 } \
    -returnCodes ok \
    -result "On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-11
test twelve-days-11 "verse: eleventh day eleven pipers piping" \
    -body { verse 11 } \
    -returnCodes ok \
    -result "On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-12
test twelve-days-12 "verse: twelfth day twelve drummers drumming" \
    -body { verse 12 } \
    -returnCodes ok \
    -result "On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

skip twelve-days-13
test twelve-days-13 "lyrics: recites first three verses of the song" \
    -body { sing 1 3 } \
    -returnCodes ok \
    -result [join {
        "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
        "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
        "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    } \n]

skip twelve-days-14
test twelve-days-14 "lyrics: recites three verses from the middle of the song" \
    -body { sing 4 6 } \
    -returnCodes ok \
    -result [join {
        "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    } \n]

skip twelve-days-15
test twelve-days-15 "lyrics: recites the whole song" \
    -body { sing 1 12 } \
    -returnCodes ok \
    -result [join {
        "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
        "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
        "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
        "On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    } \n]


cleanupTests
