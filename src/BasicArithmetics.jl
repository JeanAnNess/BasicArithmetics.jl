module BasicArithmetics

"""
    additive(x, y)

Return the sum of `x` and `y`.
"""
additive(x, y) = x + y

"""
    multiplicative(x, y)

Return the product of `x` and `y`.
"""
multiplicative(x, y) = x * y

"""
    subtractive(x, y)

Return the difference of `x` and `y`.
"""
subtractive(x, y) = x - y

export additive, multiplicative, subtractive

end
