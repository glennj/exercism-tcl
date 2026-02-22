#!/usr/bin/env tclsh

############################################################
# add some math functions to use in `expr` expressions
proc ::tcl::mathfunc::deg2rad {degrees} {
    set pi [expr {4 * atan(1)}]
    expr {(fmod($degrees, 360) / 180) * $pi}
}

proc ::tcl::mathfunc::approxEqual {a b {epsilon 0.0000001}} {
    expr {abs($a - $b) <= $epsilon}
}

proc ::tcl::mathfunc::roundTo {n pts} {
    set f [expr {10.0 ** $pts}]
    expr {round($n * $f) / $f}
}

############################################################
# If you have a starting point $P_1(x_1, y_1)$ and an angle
# $\theta$, the slope ($m$) of the line is the tangent of that
# angle:$$m = \tan(\theta)$$
# The equation for any other point $(x, # y)$ on that line is:
# $$y - y_1 = m(x - x_1)$$
#
proc isInline {line px py} {
    lassign $line lx ly angle

    set deltaX [expr {$px - $lx}]
    set deltaY [expr {$py - $ly}]

    if {$deltaX == 0 && $deltaY == 0} {
        # reject the line's point
        return false
    } elseif {approxEqual(abs(fmod($angle, 180)), 90, 0.002)} { 
        # vertical line?
        expr {$deltaX == 0}
    } else {
        set slope [expr {tan(deg2rad($angle))}]
        expr {approxEqual($deltaY, $slope * $deltaX, 0.06)}
    }
}

proc nextPrism {line prisms} {
    lassign $line lx ly angle
    set theta [expr {deg2rad($angle)}]

    set min [expr {(1 << 63) - 1}] ;# "max int"
    set next ""

    foreach p $prisms {
        lassign [lrange $p 1 2] px py
        if {[isInline $line $px $py]} {
            # the dot product of the angle vector and the distance vector
            set projection [expr {($px - $lx) * cos($theta) + ($py - $ly) * sin($theta)}]
            # the projection must be positive for the next point to be "ahead"
            # of the line point's direction.
            if {$projection > 0 && $projection < $min} {
                set min $projection
                set next $p
            }
        }
    }

    return $next
}

proc refract {angle refraction} {
    expr {roundTo(fmod($angle + $refraction, 360), 3)}
}

############################################################
proc findSequence {input} {
    # a line is a list: {x y angle}
    set line [dict values [dict get $input start]]

    # a prism is a list: {id x y refraction}
    set prisms [lmap p [dict get $input prisms] {dict values $p}]

    set result [list]

    while {true} {
        set prism [nextPrism $line $prisms]

        if {$prism == ""} {
            return $result
        }

        lassign $prism pid px py refr
        lappend result $pid
        set line [list $px $py [refract [lindex $line end] $refr]]
    }
}
